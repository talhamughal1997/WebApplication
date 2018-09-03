using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IcC.Secure
{
    public partial class FrmClassRooms : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "select * from tbl_Classes";
                TxtHeading_1.Text = obj.FindField(qry, "H1").ToString();
                TxtHeading_2.Text = obj.FindField(qry, "H2").ToString();
                TxtHeading_3.Text = obj.FindField(qry, "H3").ToString();
                TxtHeading_4.Text = obj.FindField(qry, "H4").ToString();
                TxtPara_1.Text = obj.FindField(qry, "P1").ToString();
                TxtPara_2.Text = obj.FindField(qry, "P2").ToString();
                TxtPara_3.Text = obj.FindField(qry, "P3").ToString();
                TxtPara_4.Text = obj.FindField(qry, "P4").ToString();
            }
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "Update tbl_Classes set H1 = ('" + TxtHeading_1.Text.ToString().ToLower() + "') , H2 = ('" + TxtHeading_2.Text.ToString().ToLower() + "') , H3 = ('" + TxtHeading_3.Text.ToString().ToLower() + "' ), H4 = ('" + TxtHeading_4.Text.ToString().ToLower() + "' ), P1 = ('" + TxtPara_1.Text.ToString().ToLower() + "' ), P2 = ('" + TxtPara_2.Text.ToString().ToLower() + "' ), P3 = ('" + TxtPara_3.Text.ToString().ToLower() + "' ), P4 = ('" + TxtPara_4.Text.ToString().ToLower() + "' ) where id = '1'";
                bool chk = obj.Manipulate(qry);

                if (chk == true)
                {
                    lbl_Messaage.Text = "!! Record Updated Successfully  !!";

                }
                else
                {
                    lbl_Messaage.Text = "!! Record Updation Failed  !!";
                }
            }
        }

       
    }
}