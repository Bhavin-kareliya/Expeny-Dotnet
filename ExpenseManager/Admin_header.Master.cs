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

            if (Convert.ToInt32(Session["id"]) != 2)
            {
                this.usersLink.Visible = false;
            }
            else
            {
                this.usersLink.Visible = true;
            }
            this.UserName.InnerText = $"{Session["first_name"]}  {Session["last_name"]}";
        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Clear();
        }
    }
}