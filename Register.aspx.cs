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
    public partial class Register : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        SqlCommand cmd = new SqlCommand();
        public enum MessageType { Success, Error, Info, Warning };
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ShowMessage(string Message, MessageType type)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), System.Guid.NewGuid().ToString(), "ShowMessage('" + Message + "','" + type + "');", true);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int k =0;
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("sp_AddEmployeeDetails", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Pass", txtPassword.Text);
                cmd.Parameters.AddWithValue("@FirstName", firstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastName.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("@Designation", Designation.SelectedValue);
                con.Open();

                try
                {
                    k = cmd.ExecuteNonQuery();
                }

                catch (SqlException ex)
                {
                    if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                        //ShowMessage("Registration Unsuccessfull Username already exists Please Login.", MessageType.Error);
                        Label4.Text = "Registration Unsuccessfull Username already exists Please Login.";

                }
                if (k == 1)
                    Label4.Text = "Registered Successfully Please Login";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}