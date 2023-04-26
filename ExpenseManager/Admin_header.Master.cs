using System;

namespace ExpenseManager
{
    public partial class Admin_header : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("~/signin.aspx");
            }
            this.UserName.InnerText = Session["full_name"].ToString();
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear();
        }
    }
}   