using FK_Application.DataSet2TableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private void MessageBox(string msg)
        {
            Label lbl = new Label();
            lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
            Page.Controls.Add(lbl);

        }


        Login_tblTableAdapter FKadapt = new Login_tblTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                txtPass.Attributes["value"] = txtPass.Text;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int checkLogin = int.Parse(FKadapt.Login_ScalarQuery(txtUser.Text, txtPass.Text).ToString());

            if (checkLogin == 1)
            {
                DataTable device = FKadapt.GetDataByUserName(txtUser.Text);

                foreach (DataRow data in device.Rows)
                {
                    Session["NameAndSurname"] = data["First_Name"].ToString();
                    Session["User_ID"] = data["User_ID"].ToString();
                    Session["User_Type"] = data["User_Type"].ToString();
                }

                if (Session["User_Type"].ToString() == "Admin")
                {
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    Response.Redirect("MenuPageForUser.aspx");
                }


            }
            else
            {
                MessageBox("incorrect username or password");
            }
        }

       

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}

    