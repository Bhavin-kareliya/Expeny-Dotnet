using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("~/Admin_dashboard.aspx");
            }
            error.Visible = false;
        }

        protected void buttonClick(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            string query = "select Id,FirstName,LastName,Email,DOB from Users where Email='" + email1.Text + "' and Password= " + password1.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                if (rd.HasRows)
                {
                    Session["id"] = rd[0];
                    Session["first_name"] = rd[1];
                    Session["last_name"] = rd[2];
                    Session["email"] = rd[3];
                    Session["DOB"] = rd[4];

                    Response.Redirect("~/Admin_dashboard.aspx");
                }
                else
                {
                    error.Visible = true;
                }
            }

        }

        protected void signupClick(object sender, EventArgs e)
        {
            Response.Redirect("~/forgetPassword.aspx");
        }
    }
}