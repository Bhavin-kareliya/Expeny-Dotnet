using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            email_exists.Visible = false;
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("insert into Users(FirstName,LastName,Email,Password,Contact,DOB) values('" + first_name.Text.Trim() + "', '" + last_name.Text.Trim() + "',  '" + email.Text.Trim() + "','" + password.Text.Trim() + "','" + mobile_no.Text.Trim() + "', '" + DOB.Text + "')", connect);
            connect.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("~/signin.aspx");
            connect.Close();
        }

        protected void email_TextChanged(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ConnectionString);

            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Email = '" + email.Text.Trim() + "'", connect);
            connect.Open();
            Int32 count = (Int32)cmd.ExecuteScalar();
            if(count > 0)
            {
                email_exists.Visible = true;
            }
            else
            {
                email_exists.Visible = false;
            }
            connect.Close();
        }
    }
}