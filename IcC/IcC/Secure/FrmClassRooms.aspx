<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmClassRooms.aspx.cs" Inherits="IcC.Secure.FrmClassRooms" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Class Rooms</title>
    <link href="../CSS/Admin_Style.css" rel="stylesheet" />
  
    
</head>
<body>
    <form id="form1" runat="server">

    <div class="ClassRooms">
        
            <h1>Manage Class Rooms Page</h1>

        <div class="Box"> 
           <h2>Heading _ 1  :</h2>
             <asp:TextBox ID="TxtHeading_1" runat="server" CssClass="Heading_TxtBox" PlaceHolder="Heading"></asp:TextBox>
            <br /><br />
            <asp:TextBox ID="TxtPara_1" runat="server" CssClass="Para_TxtBox" TextMode="MultiLine" PlaceHolder="Enter Paragraph"></asp:TextBox>
            </div>
        <div class="Box"> 
           <h2>Heading _ 2  :</h2>
            <asp:TextBox ID="TxtHeading_2" runat="server" CssClass="Heading_TxtBox" PlaceHolder="Heading"></asp:TextBox>
            <br /><br />
           <asp:TextBox ID="TxtPara_2" runat="server" CssClass="Para_TxtBox" TextMode="MultiLine" PlaceHolder="Enter Paragraph"></asp:TextBox>
            </div>
        <br />
        <div class="Box"> 
           <h2>Heading _ 3  :</h2>
            <asp:TextBox ID="TxtHeading_3" runat="server" CssClass="Heading_TxtBox" PlaceHolder="Heading"></asp:TextBox>
            <br /><br />
           <asp:TextBox ID="TxtPara_3" runat="server" CssClass="Para_TxtBox" TextMode="MultiLine" PlaceHolder="Enter Paragraph"></asp:TextBox>
            </div>
        <div class="Box"> 
           <h2>Heading _ 4  :</h2>
            <asp:TextBox ID="TxtHeading_4" runat="server" CssClass="Heading_TxtBox" PlaceHolder="Heading"></asp:TextBox>
            <br /><br />
           <asp:TextBox ID="TxtPara_4" runat="server" CssClass="Para_TxtBox" TextMode="MultiLine" PlaceHolder="Enter Paragraph"></asp:TextBox>
            </div>
   
             <asp:Button ID="btn_Update" runat="server" Text="Update" CssClass="btn-Submit" OnClick="btn_Update_Click" />
               
        <asp:Label ID="lbl_Messaage" runat="server" CssClass="lbl_Message"></asp:Label>
       
    </div>
    </form>
</body>
</html>
