using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Leave_Management
{



    public partial class ForgetPass : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int k;
            if ((txtUsername.Text == "") || (txtPassword.Text == ""))
            {
                Label1.Text = "Please Fill all the Fields";
                return;
            }
            SqlCommand cmd = new SqlCommand("sp_ChangeEmployeeDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UserName", txtUsername.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            con.Open();
            try
            {
                k = cmd.ExecuteNonQuery();
                if (k == 1)
                {
                    Label1.Text = "Password Changed Successfully";
                }
                else
                {
                    Label1.Text = "Password Change Unsuccessfull Username Incorrect";
                }
            }

            catch (SqlException ex)
            {

            }
        }
    }
}