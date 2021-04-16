using FK_Application.DataSet2TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class SignupPage : System.Web.UI.Page
    {
        private void MessageBox(string msg)
        {
            Label lbl = new Label();
            lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
            Page.Controls.Add(lbl);

        }

        FK_DbEntities4 DB = new FK_DbEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                txtpassword.Attributes["value"] = txtpassword.Text;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Login_tblTableAdapter CheckEmail = new Login_tblTableAdapter();

            if (txtusername.Text == "")
            {
                MessageBox("Enter user name");
                return;
            }

            if (txtpassword.Text == "")
            {
                MessageBox("Enter password");
                return;
            }

            if (txtfirstname.Text == "")
            {
                MessageBox("Enter first name");
                return;
            }

            if (txtlastname.Text == "")
            {
                MessageBox("Enter last name");
                return;
            }

            int Avail = int.Parse(CheckEmail.ScalarQueryUserName(txtusername.Text.Trim()).ToString());
            if (Avail == 1)
            {
                MessageBox("User name already exist, try another user name");
                return;
            }

            int Avail1 = int.Parse(CheckEmail.ScalarQueryEmail(txtEmail.Text.Trim()).ToString());
            if (Avail1 == 1)
            {
                MessageBox("Email already exist, try another email");
                return;
            }


            Login_tbl LN = new Login_tbl();
            LN.First_Name = txtfirstname.Text;
            LN.Last_Name = txtlastname.Text;
            LN.User_Name = txtusername.Text;
            LN.Password = txtpassword.Text;
            LN.Email = txtEmail.Text;
            LN.User_Type = DDUserType.SelectedItem.ToString();
            LN.Date = DateTime.Parse(DateTime.Now.ToString());

            DB.Login_tbl.Add(LN);
            DB.SaveChanges();
            MessageBox("Registered");
            CleartextBoxes(this);
        }
        public void CleartextBoxes(Control parent)
        {

            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {

                    ((TextBox)(c)).Text = "";
                }

                if (c.HasControls())
                {
                    CleartextBoxes(c);
                }
            }
          

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }
    }
}

        

       


