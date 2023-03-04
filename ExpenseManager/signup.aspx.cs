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
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            SqlConnection connect=new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand("insert into Users values('"+full_name.Text+"','"+email.Text+"','"+password.Text+"','"+mobile_no.Text+"','')",connect);
            connect.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("~/signin.aspx");
            connect.Close();
        }
    }
}