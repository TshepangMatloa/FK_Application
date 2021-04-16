
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FK_Application
{
    public partial class User : System.Web.UI.Page
    {
        private void MessageBox(string msg)
        {
            Label lbl = new Label();
            lbl.Text = "<script language='javascript'>" + Environment.NewLine + "window.alert('" + msg + "')</script>";
            Page.Controls.Add(lbl);

        }
        FileKeeper_View_1TableAdapter FileView = new FileKeeper_View_1TableAdapter();
        Files_tblTableAdapter FT = new Files_tblTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable DT = FileView.NewDeviceTbl_GetData();
            GridView1.DataSource = DT;
            GridView1.DataBind();

            //DataTable countTB = ND.ScalarQueryAvailable();

            int available = int.Parse(FileView.ScalarQueryAvailable().ToString());
            int Notavailable = int.Parse(FileView.ScalarQueryNotAvailable().ToString());

            //if(!IsPostBack)
            //{
            //    GridView1.DataBind();
            //}
            //DataTable Devicetb = FileView.GetDataByUserID1(int.Parse(Session["User_ID"].ToString()));
            //if (Devicetb.Rows.Count > 0)
            //{
            //    GridView1.DataSource = Devicetb;
            //    GridView1.DataBind();
            //}
            //else
            //{
            //    Devicetb.Rows.Add(Devicetb.NewRow());
            //    GridView1.DataSource = Devicetb;
            //    GridView1.DataBind();
            //    GridView1.Rows[0].Cells.Clear();
            //    GridView1.Rows[0].Cells.Add(new TableCell());
            //    GridView1.Rows[0].Cells[0].ColumnSpan = Devicetb.Columns.Count;
            //    GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
            //    GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            //}


        }
        protected void btnDelete_Click(object sender, EventArgs e)
       {
            
            //try
            //{
            //    using (SqlConnection sqlCon = new SqlConnection())
            //    {
            //        sqlCon.Open();
            //        string query ="DELETE FROM "
            //    }
            
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            
                Response.Redirect("MenuPageForUser.aspx");
           
        }

        
    }
}