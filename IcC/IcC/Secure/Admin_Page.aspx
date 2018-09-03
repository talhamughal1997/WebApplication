<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="IcC.Secure.Admin_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
    <link href="../CSS/Admin_Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="Admin-Page">
        
    <h1>WellCome IcC Owner !<br /><asp:Label ID="lbl_Admin_Name" runat="server" CssClass="Lbl_Admin_Name" ></asp:Label></h1>
        
        <asp:ImageButton ID="Img_Home" runat="server" ImageUrl="~/images/Admin_Pic/home-icon.png" CssClass="Admin-Page-Img" ToolTip="Home" PostBackUrl="~/Secure/FrmHome.aspx" />
        <asp:ImageButton ID="Img_AboutUs" runat="server" ImageUrl="~/images/Admin_Pic/About_Us.png" CssClass="Admin-Page-Img" ToolTip="About Us" PostBackUrl="~/Secure/FrmAboutUs.aspx" />
        <asp:ImageButton ID="Img_ClassRooms" runat="server" ImageUrl="~/images/Admin_Pic/Classroom_Icons.png" CssClass="Admin-Page-Img" ToolTip="Class Rooms" PostBackUrl="~/Secure/FrmClassRooms.aspx" />
        <asp:ImageButton ID="Img_Services" runat="server" ImageUrl="~/images/Admin_Pic/Services_Icon.png" CssClass="Admin-Page-Img" ToolTip="Services" PostBackUrl="~/Secure/FrmServices.aspx" />
        <asp:ImageButton ID="Img_Teachers" runat="server" ImageUrl="~/images/Admin_Pic/Teachers_Icon.png" CssClass="Admin-Page-Img" ToolTip="Our Teachers" PostBackUrl="~/Secure/FrmOurTeachers.aspx" />
        <asp:ImageButton ID="Img_Comments" runat="server" ImageUrl="~/images/Admin_Pic/Comments_Icon.png" CssClass="Admin-Page-Img" ToolTip="Comments" PostBackUrl="~/Secure/FrmComments.aspx" />
        
    </div>
    </form>
</body>
</html>
