<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OthersProfile.aspx.cs" Inherits="FilmApp.OthersProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Img {
            border-radius:2000px;
            width:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="border-radius: 300px; width: auto;">
                <asp:Image ID="Image1" CssClass="Img" runat="server" />
            </div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
