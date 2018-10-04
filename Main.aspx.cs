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
    public partial class Main : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("sp_GetEmployeeDetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                Session["LoggedIn"] = "1";
                Session["EID"] = ds.Tables[0].Rows[0]["ID"].ToString();
                Session["FName"] = ds.Tables[0].Rows[0]["FirstName"].ToString();
                Session["LName"] = ds.Tables[0].Rows[0]["LastName"].ToString();
                Session["Designation"] = ds.Tables[0].Rows[0]["Designation"].ToString();
                Session["EL"] = ds.Tables[0].Rows[0]["EL"].ToString();
                Session["CL"] = ds.Tables[0].Rows[0]["CL"].ToString();
                Session["SL"] = ds.Tables[0].Rows[0]["SL"].ToString();
                Session["ML"] = ds.Tables[0].Rows[0]["ML"].ToString();
                Session["HL"] = ds.Tables[0].Rows[0]["HL"].ToString();
                Session["PL"] = ds.Tables[0].Rows[0]["PL"].ToString();
                Session["UserName"] = ds.Tables[0].Rows[0]["UserName"].ToString();
                string LoginCount = ds.Tables[0].Rows[0]["Role_ID"].ToString();
                //int lcount = Convert.ToInt32(LoginCount);
                if (LoginCount == "2")
                {
                    Response.Redirect("Admin/admin.aspx");  //Admin
                   
                    
                }
                else if (LoginCount == "1")
                {
                    Response.Redirect("H.R/HR.aspx");  //HR
                   
                    
                }
                else if (LoginCount == "0")
                {
                    Response.Redirect("Employees/employee.aspx");  //User
                    
                    
                }
                else
                {
                    Label4.Text = "Invalid User";
                    Label6.Visible = true;
                }
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}
