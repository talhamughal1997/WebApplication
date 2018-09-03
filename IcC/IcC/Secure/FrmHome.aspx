<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmHome.aspx.cs" Inherits="IcC.Secure.FrmHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="../CSS/Admin_Style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
     <div class="HomePage">
    
        <h1 id="HomePage-h1">Manage Home Page </h1>

        <h2 class="HomePage-h2">Heading : </h2>
        <asp:TextBox ID="txtHeading" runat="server" CssClass="HomePage-TextBoxes" ToolTip="Input Heading"></asp:TextBox>
        <br /><br />
        <h2 class="HomePage-h2" style="margin-top:15vh;">Paragraph : </h2>
        <asp:TextBox ID="txtParagraph" runat="server" CssClass="HomePage-TextBoxes" TextMode="MultiLine" Width="425px" Height="125px" ToolTip="Input Paragraph"></asp:TextBox>
        <br /><br />
        <h2 class="HomePage-h2">Background Image : </h2>
        <asp:TextBox ID="txtImage" runat="server" CssClass="HomePage-TextBoxes" ReadOnly="true"></asp:TextBox>
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="HomePage-Browse" ToolTip="Select Image" ForeColor="Red"/>
        
        <br />
        <br />
         <asp:Label ID="lbl_Message" runat="server" CssClass="HomePage-Label"></asp:Label>
         <br />
         <br />

        <asp:Button ID="BtnUpdate" runat="server" Text="Update" CssClass="HomePage-BtnUpdate" OnClick="BtnUpdate_Click"/>

    </div>
        
    </form>
</body>
</html>
