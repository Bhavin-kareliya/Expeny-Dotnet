using System;
using System.Configuration;
using System.Data;
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

        protected void button_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            string query = "select FirstName,LastName,Email,DOB from Users where Email='" + email1.Text + "' and Password= " + password1.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                if (rd.HasRows)
                {
                    Session["full_name"] = rd[0] + " " + rd[1];
                    Session["email"] = rd[2];
                    Session["DOB"] = rd[3];
                    
                    Response.Redirect("~/Admin_dashboard.aspx");
                }
                else
                {
                    error.Visible = true;
                }
            }

        }

        protected void forget_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/forgetPassword.aspx");
        }
    }
}