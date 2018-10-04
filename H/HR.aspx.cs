using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace leaveManagement.H
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

                cmd = new SqlCommand("sp_hr", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@UserName",Username);
                cmd.Parameters.AddWithValue("@Password",Password);
                da.Fill(ds);
                grvHR.DataSource = ds;
                grvHR.DataBind();
            }
        }


    }
}