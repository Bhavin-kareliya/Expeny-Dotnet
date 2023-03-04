using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ExpenseManager
{
    public partial class Signin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error.Visible = false;
        }

        protected void button_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            SqlCommand cmd = new SqlCommand("select email,password from Users", con);
            cmd.ExecuteNonQuery();

            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            adp.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {

                if (dr["email"].ToString().Trim() == email1.Text && dr["password"].ToString().Trim() == password1.Text)
                {

                    Session["email"] = email1.Text;
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