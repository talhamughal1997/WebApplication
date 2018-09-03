using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Drawing;


namespace IcC
{
    public partial class _default : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            #region Home Page
            qry = "select * from tbl_Home";
            obj.BindToDataList(qry, DataList_Home);
            #endregion

            #region About_Us Page
            qry = "select * from tbl_AboutUS";
            obj.BindToDataList(qry, DataList_About_Us);
            #endregion

            #region Classes Page
            qry = "select * from tbl_Classes";
            obj.BindToDataList(qry, DataList_Classes);
            #endregion

            #region Service Page

            #region Main Service Page
            qry = "select * from tbl_Services";
            obj.BindToDataList(qry, DataList_Services_Box);
            qry = "select distinct(Heading) from tbl_Services";
            obj.BindToDataList(qry, DataList_For_Services_h1);
            qry = "select distinct Child_H, Child_Img from tbl_Services";
            obj.BindToDataList(qry, DataList_Services_Child);
            #endregion

            #region Comments Page
            #region Design
            qry = "select * from tbl_Comment_Page_Design";
            obj.BindToDataList(qry, DataList_Comments_Page_Design);
                       
            #endregion
            
            #endregion

            #region Teachers Page 
            
            #region Design
            qry = "select * from tbl_Teachers_Slider";
            obj.BindToDataList(qry, DataList_Teachers_Slider);
            #endregion

            #endregion

            #endregion


        }

        protected void Admin_LogIn_Authenticate(object sender, AuthenticateEventArgs e)
        {

            string email = "select * from Main_Admin where email='" + Admin_LogIn.UserName + "'";
            string pass = "select * from Main_Admin where password='" + Admin_LogIn.Password + "'";

            bool chk_email = obj.FindRecord(email);

            if (chk_email == true)
            {
                bool chk_pass = obj.FindRecord(pass);

                if (chk_pass == false)
                {
                    Admin_LogIn.FailureText = "Password InCorrect";
                    Forget_Password.Visible = true;
                    
                }
                else
                {
                    Session["LogIn"] = "Log In";
                    Forget_Password.Visible = false;
                    FormsAuthentication.RedirectFromLoginPage(Admin_LogIn.UserName, Admin_LogIn.RememberMeSet);
                    

                }
            }
               
            
            else
                {
                    Admin_LogIn.FailureText = "Email InCorrect";
                    Forget_Password.Visible = true;
                }
            }

        protected void Forget_Password_Click(object sender, EventArgs e)
        {
            Forget_Password.Visible = false;
            Admin_Panel.Visible = false;
            Forget_Panel.Visible = true;
            

        }

        protected void btn_continue_Click(object sender, EventArgs e)
        {

            string email = "select * from Main_Admin where email='" + txt_Email.Text + "' ";

            bool chk = obj.FindRecord(email);

            if (txt_Email.Text == "")
            {
                lbl_email_msg.Text = "Plz Fill Text Box !!!";
                txt_Email.BorderColor = Color.Red;
            }
            else if (chk == true)
            {
                Forget_Panel.Visible = false;
                Ques_Ans_Panel.Visible = true;
                

                lbl_q_2.Text = obj.FindField(email, "question-1").ToString();
                lbl_q_3.Text = obj.FindField(email, "question-2").ToString();
            }
            else
            {
                lbl_email_msg.Text = "InCorrect Email !!!";
            }

        }

        protected void btn_Continue_2_Click(object sender, EventArgs e)
        {
            string qry = "select * from Main_Admin where phone='" + txt_Q1.Text + "' and answer1='" + txt_Q2.Text + "' and answer2='" + txt_Q3.Text + "' ";

            bool chk = obj.FindRecord(qry);

            if (chk == true)
            {
                Ques_Ans_Panel.Visible = false;
                Password_Panel.Visible = true;                
            }
            else if (txt_Q1.Text == "" || txt_Q2.Text == "" || txt_Q3.Text == "")
            {
                lbl_error_2.Text = "Plz Fill Text Boxes";
            }
            else
            {
                lbl_error_2.Text = "Answers InCorrect";
            }
        
        
        }

        protected void btn_Finish_Click(object sender, EventArgs e)
        {

            qry = "update Main_Admin set Password = '" + Password_TxtBox_1.Text + "' ";

            if (Password_TxtBox_1.Text != Password_TxtBox_2.Text)
            {
                lbl_error_3.Text = "Password Not Matched";
            }
            else if (Password_TxtBox_1.Text == "" || Password_TxtBox_2.Text == "")
            {
                lbl_error_3.Text = "Plz Fill Tax Boxes";
            }
            else
            {
                bool add = obj.Manipulate(qry);
                if (add == true)
                {
                    
                    
                    Password_Panel.Visible = false;
                    Admin_Panel.Visible = true;
                    Admin_LogIn.UserName = "Your Password Changed";
                }
                else
                {
                    lbl_error_3.Text = "Your Password Not Update";
                    
                    
                }

            }
            
            


        }

     
       
        

        
        
        }
}