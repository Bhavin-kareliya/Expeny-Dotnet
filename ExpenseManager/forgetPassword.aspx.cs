using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

namespace ExpenseManager
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            info.Visible = false;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            info.Visible = true;

            Random genrator = new Random();
            int r = genrator.Next(1000, 10000);

            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());

            connect.Open();

            SqlCommand cmd = new SqlCommand("select count(Email) from Users where email='" + email.Text + "'", connect);

            Int32 count = (Int32)cmd.ExecuteScalar();

            if (count == 1)
            {
                SqlCommand otp = new SqlCommand("Update Users set otp = '" + r + "' where email='" + email.Text + "'", connect);

                int otpupdate = otp.ExecuteNonQuery();

                if (otpupdate == 1)
                {
                    MailMessage mail = new MailMessage("bhavin.kareliya2017@gmail.com", email.Text);
                    mail.Subject = "OTP for forgot password";

                    mail.Body = r.ToString() + "<br/><br/>" + "https://localhost:44318/resetPassword.aspx?email=" + email.Text;

                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);

                    smtp.Credentials = new System.Net.NetworkCredential()
                    {
                        UserName = "bhavin.kareliya2017@gmail.com",
                        Password = "bkareliya09022002"
                    };

                    smtp.EnableSsl = true;
                    smtp.Send(mail);

                }
            }
            connect.Close();

        }

    }
}