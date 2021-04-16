using FK_Application.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class AddFilePage : System.Web.UI.Page
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
            lblUser.Text = $":)  {Session["NameAndSurname"].ToString()}";
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            Files_tblTableAdapter FileNum = new Files_tblTableAdapter();
            //string email = Session["Email"].ToString();

            //if (txtFileName.Text == "")
            //{
            //    MessageBox("Enter File name");
            //    return;
            //}

            //if (txtFileNumber.Text == "")
            //{
            //    MessageBox("Enter File Number");
            //    return;
            //}

            //if (txtFileRoom.Text == "")
            //{
            //    MessageBox("Enter File room");
            //    return;
            //}

            //int Avail = int.Parse(FileNum.ScalarQueryFileNum(txtFileNumber.Text.Trim()).ToString());
            //if (Avail == 1)
            //{
            //    MessageBox("File number already exist, try another file number");
            //    return;
            //}

            Files_tbl FT = new Files_tbl();
            FT.File_Name = txtFileName.Text;
            FT.File_Number = txtFileNumber.Text;
            FT.File_Room = txtFileRoom.Text;
            FT.Date = DateTime.Parse(DateTime.Now.ToString());
            FT.User_ID = int.Parse(Session["User_ID"].ToString());
            //FT.Email = email;


            DB.Files_tbl.Add(FT);
            DB.SaveChanges();
            MessageBox("Successful");
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
            if (Session["User_Type"].ToString() == "Admin")
            {
                Response.Redirect("Menu.aspx");
            }
            else
            {
                Response.Redirect("MenuPageForUser.aspx");
            }
        }
    }
}