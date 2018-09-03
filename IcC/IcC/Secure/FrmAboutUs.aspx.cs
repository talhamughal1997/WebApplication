using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IcC.Secure
{
    public partial class AboutUs : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "select * from tbl_AboutUs";
                txtHeading_1.Text = obj.FindField(qry, "V1_H1").ToString();
                txtHeading_2.Text = obj.FindField(qry, "V1_H2").ToString();
                txtHeading_3.Text = obj.FindField(qry, "V2_H1").ToString();
                txtPara_1.Text = obj.FindField(qry, "V1_P1").ToString();
                txtPara_2.Text = obj.FindField(qry, "V1_P2").ToString();
                txtPara_3.Text = obj.FindField(qry, "V2_P1");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;
            Panel2.Visible = false;
            Panel1.Visible = true;
            lbl_Message_1.Text = "";
            lbl_Message_2.Text = "";
           
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
           
                LinkButton1.Visible = true;
                LinkButton2.Visible = false;
                Panel2.Visible = true;
                Panel1.Visible = false;
                lbl_Message_1.Text = "";
                lbl_Message_2.Text = "";
        }

        protected void btnUpdate_Headings_Click(object sender, EventArgs e)
        {
            try
            {
                qry = "Update tbl_AboutUs set V1_H1 = '" + txtHeading_1.Text + "' , V1_H2 = '" + txtHeading_2.Text + "' , V2_H1 = '" + txtHeading_3.Text + "' where id = 1";

                bool chk = obj.Manipulate(qry);

                if (chk == true)
                {
                    lbl_Message_1.Text = "!! Headings Updated Successfully !!";
                }
                else
                {
                    lbl_Message_1.Text = "!! Updation Failed !!";
                }
            }
            catch(Exception)
            {
                lbl_Message_1.Text = "!! Error !!";
            }
        }

        protected void btnUpdate_Paragraphs_Click(object sender, EventArgs e)
        {
            try
            {
                qry = "Update tbl_AboutUs set V1_P1 = '" + txtPara_1.Text + "' , V1_P2 = '" + txtPara_2.Text + "' , V2_P1 = '" + txtPara_3.Text + "' where id = 1";

                bool chk = obj.Manipulate(qry);

                if (chk == true)
                {
                    lbl_Message_2.Text = "!! Paragraphs Updated Successfully !!";
                }
                else
                {
                    lbl_Message_2.Text = "!! Updation Failed !!";
                }
            }
            catch (Exception)
            {
                lbl_Message_2.Text = "!! Error !!";
            }
        }
    }
}