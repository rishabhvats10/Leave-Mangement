using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Leave_Management.Admin
{
    public partial class admin : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        DataSet ds = new DataSet();
        public void datatable()
        {
            adming.Text = Session["FName"].ToString();
            SqlCommand cmd = null;

            string Designation = Session["Designation"].ToString();
            cmd = new SqlCommand("sp_GetLeaveDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Designation", Designation);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            grvAdmins.DataSource = ds;
            grvAdmins.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                datatable();
            }
        }
        protected void grvAdmins_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlCommand cmd2 = null;
            if (e.CommandName == "sanction")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString().Trim());
                string ID = grvAdmins.Rows[index].Cells[0].Text;
                string EID = grvAdmins.Rows[index].Cells[1].Text;
                string Ltype = grvAdmins.Rows[index].Cells[7].Text;
                cmd2 = new SqlCommand("sp_SanctionLeave", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@ID", ID);
                cmd2.Parameters.AddWithValue("@EID", EID);
                cmd2.Parameters.AddWithValue("@Ltype", Ltype);
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                da.Fill(ds);
                datatable();
            }

            if (e.CommandName == "reject")
            {
                int index = Convert.ToInt32(e.CommandArgument.ToString().Trim());
                string ID = (grvAdmins.Rows[index].Cells[0].Text);
                cmd2 = new SqlCommand("deletem", con);
                cmd2.CommandType = CommandType.StoredProcedure;
                cmd2.Parameters.AddWithValue("@ID", ID);
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                da.Fill(ds);
                datatable();
            }
        }
    }
}



