using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace IcC.Secure
{
    public partial class Admin_Page : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
           
                qry = "select * from Main_Admin";
                lbl_Admin_Name.Text = obj.FindField(qry, "Name").ToString() + "  " + obj.FindField(qry, "F_Name").ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}