using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class resetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var email_url = Request.QueryString["email"];

            email.Text = email_url;
            email.Enabled = false;
        }

        protected void reset_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            String email_text = Request.QueryString["email"];
            String otp_text = otp.Text.ToString();
            String pass = password.Text;
            String con_pass = confirm_password.Text;
            SqlCommand cmd = new SqlCommand("SELECT otp FROM USERS WHERE EMAIL='" + email_text + "'", con);

            con.Open();
            Int32 otp_data = cmd.ExecuteNonQuery();
            con.Close();

            if (otp_data == Convert.ToInt32(otp_text))
            {
                SqlCommand command = new SqlCommand("UPDATE USERS SET password= '" + pass + "',otp='' WHERE email='" + email_text + "'", con);
                Response.Write("<script>alert('comming2');</script>");
                con.Open();
                command.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/signin.aspx");
            }
            else
            {
                Error1.Visible = true;
                Response.Write("<script>alert('comming Error');</script>");
            }

        }
    }
}