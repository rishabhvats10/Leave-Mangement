using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace leaveManagement.H.R
{
    public partial class HR : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand("updateleave", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@UserName", Usernameemp.Text);
            //cmd.Parameters.AddWithValue("@EL", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@CL", TextBox2.Text);
            //cmd.Parameters.AddWithValue("@SL", TextBox3.Text);
            //cmd.Parameters.AddWithValue("@ML", TextBox4.Text);
            //cmd.Parameters.AddWithValue("@HL", TextBox5.Text);
            //cmd.Parameters.AddWithValue("@PL", TextBox6.Text);
            //con.Open();

        }
        protected void Buttonsend_Click(object sender, EventArgs e)
        {
            int k = 0;
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("updateleave", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", Usernameemp.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("@EL", TextBox1.Text);
                cmd.Parameters.AddWithValue("@CL", TextBox2.Text);
                cmd.Parameters.AddWithValue("@SL", TextBox3.Text);
                cmd.Parameters.AddWithValue("@ML", TextBox4.Text);
                cmd.Parameters.AddWithValue("@HL", TextBox5.Text);
                cmd.Parameters.AddWithValue("@PL", TextBox6.Text);
                con.Open();

                try
                {
                    k = cmd.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                        //ShowMessage("Registration Unsuccessfull Username already exists Please Login.", MessageType.Error);
                        Label4.Text = "Values Not Added";

                }
                if (k == 1)
                    Label4.Text = "Values Entered Successfully";

            }
        }
    }
}

