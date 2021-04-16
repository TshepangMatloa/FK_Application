using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPage.aspx");
        }

        protected void btnAddFileName_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFilePage.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignupPage.aspx");
        }

        protected void btnViewUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewUsers.aspx");
        }
    }



}


      
    