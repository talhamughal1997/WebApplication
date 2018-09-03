<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmAboutUs.aspx.cs" Inherits="IcC.Secure.AboutUs" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About</title>
    <link href="../CSS/Admin_Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   
         <div class="AboutPage">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

             <h1>Manage About-Us Page</h1>

             
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <br /><br />
             <asp:Panel ID="Panel1" runat="server" Visible="true">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" CssClass="LinkButton" Visible="true">Change Paragraph</asp:LinkButton>
             
                  
              <h2>Heading - 1  :</h2>
             <asp:TextBox ID="txtHeading_1" runat="server" CssClass="TextBoxes"></asp:TextBox>
             <br /><br />
             <h2>Heading - 2  :</h2>
             <asp:TextBox ID="txtHeading_2" runat="server" CssClass="TextBoxes"></asp:TextBox>
             <br /><br />
              <h2>Heading - 3  :</h2>
             <asp:TextBox ID="txtHeading_3" runat="server" CssClass="TextBoxes"></asp:TextBox>
             <br /><br /><br /><br />
                 
                 <asp:Label ID="lbl_Message_1" runat="server" CssClass="lbl_Message" ForeColor="Red"></asp:Label>
                 
                 <asp:Button ID="btnUpdate_Headings" runat="server" Text="Update" CssClass="btn-Submit" OnClick="btnUpdate_Headings_Click" />
             </asp:Panel>
                      
             <asp:Panel ID="Panel2" runat="server" Visible="false">
                 
                 <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="LinkButton" Visible="false">Change Headings</asp:LinkButton>
                  
              <h2>Paragraph - 1  :</h2>
             <asp:TextBox ID="txtPara_1" runat="server" CssClass="TextBoxes" TextMode="MultiLine"></asp:TextBox>
             <br /><br />
             <h2>Paragraph - 2  :</h2>
             <asp:TextBox ID="txtPara_2" runat="server" CssClass="TextBoxes" TextMode="MultiLine"></asp:TextBox>
             <br /><br />
              <h2>Paragraph - 3  :</h2>
             <asp:TextBox ID="txtPara_3" runat="server" CssClass="TextBoxes" TextMode="MultiLine"></asp:TextBox>
             <br /><br /><br /><br />
               
                 <asp:Label ID="lbl_Message_2" runat="server" CssClass="lbl_Message" ForeColor="Red"></asp:Label>
                 
               <asp:Button ID="btnUpdate_Paragraphs" runat="server" Text="Update" CssClass="btn-Submit" OnClick="btnUpdate_Paragraphs_Click" />
             </asp:Panel>
                     </ContentTemplate>
                 </asp:UpdatePanel>
              </div>
   
         </form>
</body>
</html>
