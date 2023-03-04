using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExpenseManager
{
    public partial class Admin_header : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(Session["email"] == null)
            //{
            //    Response.Redirect("~/signin.aspx");
            //}
        }
        protected void Logout(object sender, EventArgs e)
        {
            
        }
    }
}