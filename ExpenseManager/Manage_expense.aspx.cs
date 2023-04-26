using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class Manage_expense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitBtnClick(object sender, EventArgs e)
        {
            string expName = Name.Text;
            string expAmount = Amount.Text;

            SqlConnection connect = new SqlConnection(ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand("insert into Expenses (Name, Amount, CreatedAt) values('" + expName + "'," + expAmount + ", '" + DateTime.Now + "')", connect);

            connect.Open();
            cmd.ExecuteNonQuery();
            connect.Close();
            GridView1.DataBind();
        }
    }
}