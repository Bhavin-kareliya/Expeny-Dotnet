using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class Manage_expense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void submitData_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('come');</script>");
            String exp_name = expense_name.Text;
            String user = Users.SelectedValue;

            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ToString());
            SqlCommand cmd = new SqlCommand("insert into expense_master values('1','"+expense_name.Text+"','1')", connect);

            connect.Open();
            cmd.ExecuteNonQuery();
            connect.Close();
        }
    }
}