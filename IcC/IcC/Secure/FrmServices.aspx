<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmServices.aspx.cs" Inherits="IcC.Secure.FrmServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services</title>
    <link href="../CSS/Admin_Style.css" rel="stylesheet" />
   
</head>
<body>
    <form id="form1" runat="server">
    <div class="Services">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <h1>Manage Services Page</h1>
        
        <h2>Service Heading :</h2>
        <asp:TextBox ID="txtHeading" runat="server" CssClass="Heading_TxtBox"></asp:TextBox>
        
              
                <div class="Child_Box">

            <h3>Paragraph _ 1 : </h3>
            <asp:TextBox ID="txtChild_Heading" runat="server" CssClass="TxtBoxes" TextMode="MultiLine"></asp:TextBox>
            <br /><br />
            <asp:Image ID="Child_Img" runat="server" CssClass="img-para-1"/>
            <asp:FileUpload ID="FileUpload4" runat="server" CssClass="img-upload"/>
            <label id="label4" for="FileUpload1" class="Label" runat="server">Upload</label>

        </div>



        <div class="Box_1">

            <h3>Paragraph _ 1 : </h3>
            <asp:TextBox ID="txtPara_1" runat="server" CssClass="TxtBoxes" TextMode="MultiLine"></asp:TextBox>
            
            <asp:Image ID="img_Para_1" runat="server" CssClass="img-para-1" />
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="img-upload"/>
            <label id="label1" for="FileUpload1" class="Label" runat="server">Upload</label>

        </div>
        <div class="Box_1">

            <h3>Paragraph _ 2 : </h3>
            <asp:TextBox ID="txtPara_2" runat="server" CssClass="TxtBoxes" TextMode="MultiLine"></asp:TextBox>
            <br /><br />
            <asp:Image ID="img_Para_2" runat="server" CssClass="img-para-1" />
            <asp:FileUpload ID="FileUpload2" runat="server" CssClass="img-upload"/>
            <label id="label2" for="FileUpload2" class="Label" runat="server">Upload</label>

        </div>
        <div class="Box_1">

            <h3>Paragraph _ 3 : </h3>
            <asp:TextBox ID="txtPara_3" runat="server" CssClass="TxtBoxes" TextMode="MultiLine"></asp:TextBox>
            <br /><br />
            <asp:Image ID="img_Para_3" runat="server" CssClass="img-para-1" />
            <asp:FileUpload ID="FileUpload3" runat="server" CssClass="img-upload"/>
            <label id="label3" for="FileUpload3" class="Label" runat="server">Upload</label>

        </div>

        
      
            </ContentTemplate>
            </asp:UpdatePanel>
          </div>
    </form>
</body>
</html>
