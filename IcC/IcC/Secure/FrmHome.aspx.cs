using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace IcC.Secure
{
    public partial class FrmHome : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                qry = "select * from tbl_Home where id = 1";
                txtHeading.Text = obj.FindField(qry, "Heading").ToString();
                txtParagraph.Text = obj.FindField(qry, "Paragraph").ToString();
                txtImage.Text = obj.FindField(qry, "Background_Img").ToString();
            }
            lbl_Message.Text = "";
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (FileUpload1.HasFile)
                {
                    string nam = Path.GetFileName(FileUpload1.FileName);
                    if (File.Exists(Server.MapPath("~/images/" + nam)))
                    {
                        lbl_Message.Text = "File Alredy Exist";
                    }
                    else
                    {
                        if (txtHeading.Text == "" || txtParagraph.Text == "")
                        {
                            lbl_Message.Text = "Plz Fill TextBoxes !!";
                        }
                        else
                        {
                            qry = "select * from tbl_Home where id = 1";
                            File.Delete(Server.MapPath("~/" + obj.FindField(qry, "Background_Img")));
                            FileUpload1.SaveAs(Server.MapPath("~/images/" + nam));
                            nam = "/images/" + nam;
                            qry = "Update tbl_Home set Heading='" + txtHeading.Text + "' , Paragraph='" + txtParagraph.Text + "' , Background_Img = '" + nam + "' where id=1";
                            obj.Manipulate(qry);
                            lbl_Message.Text = "Updation With Image Successfully";
                        }
                    }
                }
                else
                {
                    qry = "Update tbl_Home set Heading='" + txtHeading.Text + "' , Paragraph='" + txtParagraph.Text + "' where id=1";
                    obj.Manipulate(qry);
                    lbl_Message.Text = "Updation WithOut Image Successfully";
                }
            }
            catch (Exception ex)
            {
                lbl_Message.Text = "Error !!   " + ex;
            }
        }
    }
}