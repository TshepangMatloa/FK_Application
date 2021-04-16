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
    public partial class UserInfo : System.Web.UI.Page
    {
        FileKeeper_View_1TableAdapter ND = new FileKeeper_View_1TableAdapter();
        //UsersTableAdapter UT = new UsersTableAdapter();
        //FPB_DBEntities1 DB = new FPB_DBEntities1();
        FK_DbEntities4 DB = new FK_DbEntities4();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["File_ID"] = int.Parse(Request.QueryString["File_ID"]);

                var availability = Request.QueryString["Availability"];
                if (availability == "False")
                {
                    lblHide.Text = "Already allocated";
                    btnAlocate.Enabled = false;
                }

                DataTable SSNDI = ND.GetDataByFileID(int.Parse(Request.QueryString["File_ID"]));

               
              

                foreach (DataRow DR in SSNDI.Rows)
                {
                    
                    lblFileName.Text = DR["File_Name"].ToString();
                    lblFileRoom.Text = DR["File_Room"].ToString();
                    

                }
            }
        }

      

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }

        protected void btnAllocate_Click(object sender, EventArgs e)
        {
            FileKeeper_View_1 DeviceTbl = new FileKeeper_View_1();
           
            DeviceTbl.File_Name = lblFileName.Text;
            DeviceTbl.File_Number = lblFileRoom.Text;
           


            DB.FileKeeper_View_1.Remove(DeviceTbl);
            DB.SaveChanges();

            FileKeeper_View_1TableAdapter NewDev = new FileKeeper_View_1TableAdapter();
            NewDev.UpdateQueryRemove(int.Parse(Session["File_ID"].ToString()));
            //MessageBox("Successful");
            //CleartextBoxes(this);
        }
    }
}


    