using System;

namespace ExpenseManager
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("~/Signin.aspx");
        }
    }
}