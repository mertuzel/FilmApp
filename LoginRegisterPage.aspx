<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginRegisterPage.aspx.cs" Inherits="FilmApp.LoginRegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 393px;
        }
        .auto-style3 {
            width: 393px;
            font-size: 22pt;
            text-align: center;
        }
        .auto-style4 {
            font-size: 22pt;
            text-align: center;
        }
        .auto-style5 {
            margin-left: 102px;
        }
        .auto-style6 {
            margin-left: 52px;
        }
        .auto-style7 {
            margin-left: 87px;
        }
        .auto-style8 {
            margin-left: 40px;
        }
        .auto-style9 {
            margin-left: 124px;
        }
        .auto-style11 {
            margin-left: 101px;
        }
        .auto-style12 {
            margin-left: 66px;
        }
        .auto-style13 {
            margin-left: 69px;
        }
        .auto-style14 {
            margin-left: 119px;
        }
        .auto-style16 {
            margin-left: 89px;
        }
        .auto-style18 {
            text-align: center;
            font-weight: normal;
            
        }
        .auto-style19 {
            
        }
        .auto-style20 {
            width: 880px;
            height: 453px;
        }
        .auto-style21 {
            width: 393px;
            height: 30px;
        }
        .auto-style22 {
            height: 30px;
        }
        .auto-style23 {
            margin-left: 104px;
        }
        .auto-style24 {
            margin-left: 54px;
        }
        .auto-style25 {
            margin-left: 110px;
        }
    </style>

    
<body 
    
</body style="height: 438px">
    <form id="form1" runat="server" class="auto-style20">
        <h1 class="auto-style18"><strong><em><span class="auto-style19">Film Öneri Giriş/Kayıt Ekranı</span></em></strong></h1>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Kullanıcı Girişi</td>
                <td class="auto-style4">Kayıt Ol</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="İsim:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Şifre:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Soyisim:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="Giriş" OnClick="Button1_Click2" />
                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Cinsiyet:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style11"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style22">
                    <asp:Label ID="Label7" runat="server" Text="Doğum Tarihi:"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style12"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Admin Girişi</td>
                <td class="auto-style8">
                    <asp:Label ID="Label8" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="Label9" runat="server" Text="Şifre:"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style14"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style24"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Label10" runat="server" Text="Resim:"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style25" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Şifre:"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style23"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style16" Text="Kayıt Ol" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Giriş" Width="45px" />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
        </table>
    </form>

</html>
