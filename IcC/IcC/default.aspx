<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="IcC._default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>I c C</title>
    
<link rel="stylesheet" href="/CSS/Home_Style.css" type="text/css" />
<link href="/CSS/Admin_Style.css" rel="stylesheet" type="text/css" />


<script src="/JQuery/JQ.js"></script>
<script src="../JQuery/Pages/Home.js"></script>


 	<!-- Home Slider -->
    <script src="Slider/sliderengine/jquery.js"></script>
    <script src="Slider/sliderengine/amazingslider.js"></script>
    <script src="Slider/sliderengine/initslider-1.js"></script>
    <!-- Home Slider -->
    

</head>
<body>
    <form id="form1" runat="server">
    <div>
    

        
<div class="loading-gif">
	<img src="images/loading.gif" />
</div>


<div class="Home-Page">			<!-- Open Home Page  -->


		
	
		<nav>  <!-- Open Navigation  -->
        
        <ul>
        <li id="Home-Panel"><a href="#">Home  <span>O</span></a></li>
        <li id="About-Panel"><a href="#">About IcC  <span>O</span></a></li>
        <li id="Classes-Panel"><a href="#">Class Rooms <span>O</span></a></li>
        <li id="Services-Panel"><a href="#">Services  <span>O</span></a></li>
           
              
        </ul>
        
        </nav>	<!-- Close Navigation  -->

    <asp:DataList ID="DataList_Home" runat="server">
                <ItemTemplate>
    
    	<div class="Heading-Box">
           
             
        <h1><%#Eval("Heading") %></h1>
        <p><%#Eval("Paragraph") %></p>
                 
        
        </div>
    
    	
    	<img src='<%#Eval("Background_Img") %>' />
    
    </ItemTemplate>
	        </asp:DataList>
   
		 	

		
        
       
		        
        
</div>							<!--  Close Home Page  -->
		
        


<div class="About-Page">		<!-- Open About Page  -->

<asp:DataList ID="DataList_About_Us" runat="server" Width="100%" Height="100%">
    <ItemTemplate>

<div class="Vision-Box">		<!-- Open Vision Box  -->

<h1><%#Eval("V1_H1") %></h1>

<p id="P1"><%#Eval("V1_P1") %></p>

<h1><%#Eval("V1_H2") %></h1>

<p id="P3">
<%#Eval("V1_P2") %>

</p>

</div>		<!-- Close Vision Box  -->


<div class="Vision-Box">		<!-- Open Vision Box - 2 -->



<h1><%#Eval("V2_H1") %></h1>

<p id="P2">
<%#Eval("V2_P1") %>
<br /><br />


</p>

</div>		<!-- Close Vision Box - 2  -->



    </ItemTemplate>
</asp:DataList>

</div>		<!-- Close About Page  -->










        

<div class="Classes-Page">		<!--  Open Classes Page  -->
    <asp:DataList ID="DataList_Classes" runat="server" Width="100%" Height="100%" CssClass="DataList_Classes">
            <ItemTemplate>



	<h1 id="h1_1"><%#Eval("H1") %></h1>
	<p id="P_1"><%#Eval("P1") %>	</p>
    
    
    
    <h1 id="h1_2"><%#Eval("H2") %></h1>
   
    <p id="P_2"><%#Eval("P2") %></p>
    
    
    
    
    <h1 id="h1_3"><%#Eval("H3") %></h1>
    
    <p id="P_3"><%#Eval("P3") %> </p>
    
    
    
    <h1 id="h1_4"><%#Eval("H4") %></h1>
    
    
    <p id="P_4"><%#Eval("P4") %></p>

    
    
    
    

	 <!-- Insert to your webpage where you want to display the slider -->
    <div id="amazingslider-1" style="display:block;position:relative;margin:0; border-radius:4vh;">
        <ul class="amazingslider-slides" style="display:none; ">
            <li><img src="images/classroom-1.jpg"   /></li>
            <li><img src="images/classroom-2.jpg"  /></li>
            <li><img src="images/classroom-3.jpg"  /></li>
            <li><a href="images/classroom-4-lightbox.jpg" class="html5lightbox"><img src="images/classroom-4.jpg"/></a></li>
            <li><img src="images/classroom-5.jpg"  /></li>
            <li><img src="images/classroom-6.jpg"  /></li>
            <li><img src="images/classroom-7.jpg"  /></li>
        </ul>
        <ul class="amazingslider-thumbnails" style="display:none; border-radius:4vh;">
            <li><img src="images/classroom-1-tn.jpg" /></li>
            <li><img src="images/classroom-2-tn.jpg" /></li>
            <li><img src="images/classroom-3-tn.jpg" /></li>
            <li><img src="images/classroom-4-tn.jpg" /></li>
            <li><img src="images/classroom-5-tn.jpg" /></li>
            <li><img src="images/classroom-6-tn.jpg" /></li>
            <li><img src="images/classroom-7-tn.jpg" /></li>
        
        	
        
        </ul>
        
        
        
        <div class="amazingslider-engine" style="display:none;"><a href="http://amazingslider.com">JavaScript Image Slider</a>
        </div>
    
    	</div>
    
    <!-- End of body section HTML codes -->


 </ItemTemplate>
        </asp:DataList>
        
</div>							<!--  Close Classes Page  -->





<div class="Services-Page">		<!--  Open Services Page  -->


<div class="Line-Nav-Div">		<!-- Open Line Nav Div -->



<div class="contact">		<!-- Open Contact Div -->


<button type="button" class="close">X</button>
<h2>Contact Us</h2>

<form>

	<input type="text" class="Txt-Box" placeholder="Name :" />
	<input type="text" class="Txt-Box" placeholder="Your Gmail Id :"/>
	<input type="password" class="Txt-Box" placeholder="Gmail Password :" />
    <input type="tel" class="Txt-Box" placeholder="Phone :" />
	<textarea Id="Txt-Message" placeholder="Message :"></textarea>
    
    <button type="button" class="Btn-Send" >Send</button>

</form>

</div>		<!-- Close Contact Div -->



<div class="Our-Teachers">		<!-- Open Teachers Div  -->
    <asp:DataList ID="DataList_Teachers_Slider" runat="server"><ItemTemplate>

     <img src='<%#Eval("Img_1") %>' id="teacher-slider-img-1" class="teacher-slider-img" />
     <img src='<%#Eval("Img_2") %>' id="teacher-slider-img-2" class="teacher-slider-img" />
     <img src='<%#Eval("Img_3") %>' id="teacher-slider-img-3" class="teacher-slider-img" />
     <img src='<%#Eval("Img_4") %>' id="teacher-slider-img-4" class="teacher-slider-img" />
     <img src='<%#Eval("Img_5") %>' id="teacher-slider-img-5" class="teacher-slider-img" />
     <img src='<%#Eval("Img_6") %>' id="teacher-slider-img-6" class="teacher-slider-img" />
    
    </ItemTemplate></asp:DataList>


<button type="button" class="close">X</button>

<h2>Our Teachers</h2>


<div class="Teachers-Box">			<!-- Open Teachers Box - 1 -->

<img class="teacher-img" src="images/Teacher-1.jpg" />
<h4 class="teacher-name">  Inga  North</h4>
<h5 class="teacher-subject">English Language</h5>
<p class="teacher-comment">
Inga is the best English language teacher with 20+ years of experience.
</p>

</div>		<!-- Close Teachers Box - 1  -->



<div class="Teachers-Box">			<!-- Open Teachers Box - 2 -->

<img class="teacher-img" src="images/Teacher-2.jpg" />
<h4 class="teacher-name">Linda Guzman</h4>
<h5 class="teacher-subject">Mathematics</h5>
<p class="teacher-comment">
Linda is a real polyglot who knows more than 4 languages perfectly.
</p>

</div>		<!-- Close Teachers Box - 2 -->





<div class="Teachers-Box">			<!-- Open Teachers Box - 3 -->

<img class="teacher-img" src="images/Teacher-3.jpg" />
<h4 class="teacher-name">Marilyn Adams</h4>
<h5 class="teacher-subject">Foreign Languages</h5>
<p class="teacher-comment">
Marilyn is a very friendly specialist who presented effective educational methods.
</p>

</div>		<!-- Close Teachers Box - 3 -->





<div class="Teachers-Box">			<!-- Open Teachers Box - 4 -->

   
<img class="teacher-img" src="images/Teacher-4.jpg" />
<h4 class="teacher-name">Janet Morris</h4>
<h5 class="teacher-subject">Art and Music</h5>
<p class="teacher-comment">
Janet is not just a talented artist, but a skilled professional with a teaching skill.
</p>

</div>		<!-- Close Teachers Box - 4 -->


</div>		<!-- Close Teachers Div  -->



<div class="Comments">  <!-- Open Comments Box  -->
    
    <asp:DataList ID="DataList_Comments_Page_Design" runat="server"><ItemTemplate>

    <img id="Comment_img_1" src='<%#Eval("img_1") %>' />
    <img id="Comment_img_2" src='<%#Eval("img_2") %>' />
    <img id="Comment_img_3" src='<%#Eval("img_3") %>' />
    <img id="Comment_img_4" src='<%#Eval("img_4") %>' />
    <img id="Comment_img_5" src='<%#Eval("img_5") %>' />
    <img id="Comment_img_6" src='<%#Eval("img_6") %>' />

        </ItemTemplate></asp:DataList>

    <button type="button" class="close">X</button>

</div>      <!-- Close Comments Box  -->
    











<div class="Admin">  <!-- Open Admin Page  -->
    
    <img id="Admin-Pic-1" src="/images/Admin_Pic/Amazing_1.jpg" />
    <img id="Admin-Pic-2" src="/images/Admin_Pic/Amazing_2.jpg" />
    <img id="Admin-Pic-3" src="/images/Admin_Pic/Amazing_3.jpg" />

    <button type="button" class="close">X</button>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Admin_Panel" runat="server" CssClass="Admin_Panel">

 <asp:Login ID="Admin_LogIn" runat="server" OnAuthenticate="Admin_LogIn_Authenticate" CssClass="Admin_LogIn" TextBoxStyle-CssClass="AdminTxtBox" LoginButtonStyle-CssClass="Admin_LogIn-btn" UserNameLabelText="User Email :"></asp:Login>
              
                  <asp:LinkButton ID="Forget_Password" runat="server" CssClass="forget-lnk-btn" Visible="false" OnClick="Forget_Password_Click">Forget Your Password !! </asp:LinkButton>
            
            </asp:Panel>
                

            <asp:Panel ID="Forget_Panel" runat="server" CssClass="Forget-Panel" Visible="false">


                <h2>I c C</h2>

                <h4>Enter Email :</h4>
                <asp:TextBox ID="txt_Email" runat="server" CssClass="ForgetTxtBox"></asp:TextBox>

                <asp:Label ID="lbl_email_msg" runat="server" CssClass="lbl_Error"></asp:Label>
                  <asp:Button ID="btn_continue" runat="server" Text="Continue" CssClass="btn-complete" OnClick="btn_continue_Click"/>
           
                </asp:Panel>


                <asp:Panel ID="Ques_Ans_Panel" runat="server" CssClass="Que-Ans-Panel" Visible="false">

                <asp:Label ID="lbl_q_1" runat="server" CssClass="lbl_question" Text="Enter Your Phone :"></asp:Label>
                <asp:TextBox ID="txt_Q1" runat="server" CssClass="Que_Ans_TxtBox"></asp:TextBox>
                    <br />
                    
                <asp:Label ID="lbl_q_2" CssClass="lbl_question" runat="server" ></asp:Label>
                <asp:TextBox ID="txt_Q2" runat="server" CssClass="Que_Ans_TxtBox"></asp:TextBox>
                    <br />
                    
                <asp:Label ID="lbl_q_3" CssClass="lbl_question" runat="server"></asp:Label>
                <asp:TextBox ID="txt_Q3" runat="server" CssClass="Que_Ans_TxtBox"></asp:TextBox>


                    <asp:Label ID="lbl_error_2" runat="server" CssClass="lbl_error2" ></asp:Label>
                    <asp:Button ID="btn_Continue_2" runat="server" Text="Continue" CssClass="btn-continue2" OnClick="btn_Continue_2_Click" />


                </asp:Panel>
          


             <asp:Panel ID="Password_Panel" runat="server" CssClass="Que-Ans-Panel" Visible="false">

                <asp:Label ID="lbl_Password_1" runat="server" CssClass="lbl_question" Text="Enter New Password :" ></asp:Label>
                <asp:TextBox ID="Password_TxtBox_1" runat="server" CssClass="Que_Ans_TxtBox" TextMode="Password"></asp:TextBox>
                    <br />
                    
                <asp:Label ID="lbl_Password_2" CssClass="lbl_question" runat="server" Text="Confirm Password :"></asp:Label>
                <asp:TextBox ID="Password_TxtBox_2" runat="server" CssClass="Que_Ans_TxtBox" TextMode="Password" ></asp:TextBox>
                    <br />
                    
                 <asp:Label ID="lbl_error_3" CssClass="lbl_error2" runat="server"></asp:Label>

                    <asp:Button ID="btn_Finish" runat="server"  CssClass="btn-continue2" Text="Continue" OnClick="btn_Finish_Click" />


                </asp:Panel>
            


                 </ContentTemplate>
        </asp:UpdatePanel>

</div>      <!-- Close Admin Page  -->










    


</div>		<!-- Close Line Nav Div -->

    
            <asp:DataList ID="DataList_For_Services_h1" runat="server" CssClass="DataList_For_Services_h1"><ItemTemplate>
	            <h1><%#Eval("Heading") %></h1>
     </ItemTemplate></asp:DataList>
     

<div class="box">  		<!-- Open Box -->

        <asp:DataList ID="DataList_Services_Box" runat="server">
        <ItemTemplate>

<img src='<%#Eval("Box_Img") %>' />
<p class="para"><%#Eval("Box_P") %></p>
                      

    </ItemTemplate>
    </asp:DataList>

            

</div>		<!-- Close Box -->

    <asp:DataList ID="DataList_Services_Child" runat="server">
        <ItemTemplate>
            
            <h3><%#Eval("Child_H") %></h3>
            <img id="Child_img" src='<%#Eval("Child_Img") %>' />

             </ItemTemplate>
    </asp:DataList>


<div class="line-Nav">		<!-- Open Line Navigation -->
<ul>
<li> <a id="home" href="#home"> Home</a></li>
<li> <a id="contact" href="#contact"> Contact</a></li>
<li> <a id="our_teacher" href="#our_teacher"> Our Teacher</a></li>
<li> <a id="Comments" href="#comment"> Comments</a></li>
<li> <a id="Admin" href="#Admin"> Admin</a></li>



</ul>
</div>		<!-- Open Line Navigation -->




</div>							<!--  Close Services Page  -->			







    </div>
    </form>
</body>
</html>
