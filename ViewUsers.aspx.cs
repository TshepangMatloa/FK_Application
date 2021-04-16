using FK_Application.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class ViewUsers : System.Web.UI.Page
    {
        Login_tblTableAdapter FileView = new Login_tblTableAdapter();

        private void MessageBox(string msg)
        {
            Label lbl = new Label();
            lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
            Page.Controls.Add(lbl);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable filetb = FileView.UserGetData();
            GridView1.DataSource = filetb;
            GridView1.DataBind();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            int countemail = int.Parse(FileView.ScalarQueryUserName(txtSearch.Text).ToString());

            if (countemail == 0)
            {
                MessageBox("User name not found");
            }
            else
            {
                DataTable UserDV = FileView.GetDataBy_UserName(txtSearch.Text);
                GridView1.DataSource = UserDV;
                GridView1.DataBind();
            }
            if (txtSearch.Text == "")
            {
                MessageBox("Required to write something");
            }
        }
    }
}