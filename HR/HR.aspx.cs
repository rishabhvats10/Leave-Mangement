using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace leaveManagement.HR
{
    public partial class HR : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlCommand cmd = null;
            if (!this.IsPostBack)
            {
                string Designation = Session["Designation"].ToString();
                cmd = new SqlCommand("sp_GetLeaveDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Designation", Designation);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                grvHR.DataSource = ds;
                grvHR.DataBind();
            }
        }
    }
}