using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace IcC.Secure
{
    public partial class FrmServices : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;


        protected void Page_Load(object sender, EventArgs e)
        {

            qry = "select * from tbl_Services";
            txtHeading.Text = obj.FindField(qry,"Heading");
            
            txtChild_Heading.Text = obj.FindField(qry, "Child_H");
            Child_Img.ImageUrl = obj.FindField(qry, "Child_Img");
            img_Para_1.ImageUrl = obj.FindField(qry, "Box_Img", "1");
            img_Para_2.ImageUrl = obj.FindField(qry, "Box_Img", "2");
            img_Para_3.ImageUrl = obj.FindField(qry, "Box_Img", "3");
            txtPara_1.Text = obj.FindField(qry, "Box_P", "1");
            txtPara_2.Text = obj.FindField(qry, "Box_P", "2");
            txtPara_3.Text = obj.FindField(qry, "Box_P", "3");
            



        }

       

        
        
       

       
    }
}