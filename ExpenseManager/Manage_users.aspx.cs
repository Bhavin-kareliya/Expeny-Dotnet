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
    public partial class Manage_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitData_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage("bhavin.kareliya2017@gmail.com", email_invite.Text);
            mail.Subject = "Invite To Join Blinq Expense Manager";

            mail.Body = "https://localhost:44318/signup.aspx";

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
}