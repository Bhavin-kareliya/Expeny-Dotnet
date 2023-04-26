using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ExpenseManager
{
    public partial class Admin_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ExpenyDbConnectionString"].ConnectionString;
            using (SqlConnection connect = new SqlConnection(cs))
            {
                connect.Open();
                SqlCommand sqlCommand = new SqlCommand("GetDashboardTotals", connect);

                SqlDataReader rd = sqlCommand.ExecuteReader();
                while (rd.Read())
                {
                    this.totalUsers.InnerText = rd[0].ToString();
                    this.totalExpenses.InnerText = rd[1].ToString();
                    this.totalGroups.InnerText = rd[2].ToString();
                }

            }
        }
    }


}