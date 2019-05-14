<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="FilmApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Divs {
            position:relative;
            width:auto;
            padding:10px;
        }
    </style>
    </head>
<body style="height: 493px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
        <div style="border: 1px solid black" class="Divs">
           Kullanıcı Arama:
            <asp:TextBox ID="TextBox1" AutoPostBack="true" CssClass="Search" runat="server"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView1" CssClass="Grids" runat="server" AutoGenerateColumns="False" DataKeyNames="KullaniciAdi" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AllowPaging="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="KullaniciAdi" HeaderText="KullaniciAdi" ReadOnly="True" SortExpression="KullaniciAdi"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:FilmAppConnectionString %>' SelectCommand="SELECT [KullaniciAdi] FROM [KullaniciTable] WHERE ([KullaniciAdi] LIKE '%' + @KullaniciAdi + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="KullaniciAdi" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div style="border: 1px solid black " class="Divs">
           Film Arama:
            <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" SelectCommand="SELECT Adi FROM FilmTable WHERE (Adi LIKE '%' + @Adi + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="Adi" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div style="border: 1px solid black " class="Divs">
          Yonetmen Arama:
            <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" SelectCommand="SELECT Adi FROM YonetmenTable WHERE (Adi LIKE '%' + @Adi + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox3" Name="Adi" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div style="border: 1px solid black " class="Divs">
           Senarist Arama:
            <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True"></asp:TextBox>
            <br />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" SelectCommand="SELECT Ad FROM SenaristTable WHERE (Ad LIKE '%' + @Ad + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="Ad" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">PopülerFilmler</asp:LinkButton>
        <br />-------------------------
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">YüksekPuanlıFilmler</asp:LinkButton>
        <br />-------------------------
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">PopülerKategoriler</asp:LinkButton>

    </form>
</body>
</html>
