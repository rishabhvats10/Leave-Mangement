using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Leave_Management.Employees
{
    public partial class employee : System.Web.UI.Page
    {
        static string Connection = ConfigurationManager.AppSettings["ConStr"].ToString();
        SqlConnection con = new SqlConnection(Connection);

        protected void Page_Load(object sender, EventArgs e)
        {
            Userg.Text = "Welcome  " + Session["FName"].ToString();
            Label1.Text = Session["EL"].ToString();
            Label2.Text = Session["CL"].ToString();
            Label3.Text = Session["SL"].ToString();
            Label4.Text = Session["ML"].ToString();
            Label5.Text = Session["HL"].ToString();
            Label6.Text = Session["PL"].ToString();

        }
        public bool Validate()
        {
            if (leaveType.SelectedValue == "EL")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Earned Leaves Left";
                    return false;
                }
            }
            else if (leaveType.SelectedValue == "CL")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Casual Leaves Left";
                    return false;
                }
            }
            else if (leaveType.SelectedValue == "SL")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Sick Leaves Left";
                    return false;
                }
            }
            else if (leaveType.SelectedValue == "HL")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Half Day Leaves Left";
                    return false;
                }
            }
            else if (leaveType.SelectedValue == "ML")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Maternity Leaves Left";
                    return false;
                }
            }
            else if (leaveType.SelectedValue == "PL")
            {
                if (Convert.ToInt32(TextBox2.Text) > Convert.ToInt32(Label1.Text))
                {
                    Msg.Text = "Not Enough Paternity Leaves Left";
                    return false;

                }
            }
            else { return true; }
            return true;
        }
        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Session["LoggedIn"] == null)
            {
                Response.Redirect("Main.aspx");
            }
            else
            {
                bool a = Validate();
                if (a == false) { }
                else
                {
                    int k = 0;
                    if (Page.IsValid)
                    {
                        string Lname = Session["LName"].ToString();
                        string Designation = Session["Designation"].ToString();
                        string EID = Session["EID"].ToString();
                        int EID2 = Convert.ToInt32(EID);
                        SqlCommand cmd = new SqlCommand("sp_AddLeaveDetails", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@EID", EID2);
                        cmd.Parameters.AddWithValue("@FName", Userg.Text);
                        cmd.Parameters.AddWithValue("@LName", Lname);
                        cmd.Parameters.AddWithValue("@Designation", Designation);
                        cmd.Parameters.AddWithValue("@date1", date1.Value);
                        cmd.Parameters.AddWithValue("@date2", date2.Value);
                        cmd.Parameters.AddWithValue("@reason", reason.Text);
                        cmd.Parameters.AddWithValue("@type", leaveType.SelectedValue);
                        con.Open();
                        try
                        {
                            k = cmd.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            Msg.Text = ex.Message;
                        }
                        if (k == 1)
                        {
                            Msg.Text = "Request Accepted Successfully";
                        }
                    }
                }
               
            }
        }
    }
}