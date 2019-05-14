<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="FilmApp.AdminPagee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 387px;
        }
    </style>
</head>
<body style="height: 571px">
    <form id="form1" runat="server">
        
          
        
        <h1 class="auto-style1">Admin Page</h1>
        
        
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <font color="red"><strong>Kategori Ekleme</strong></font> <br />
                    <asp:Label ID="Label1" runat="server" Text="Kategori Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" />


                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    &nbsp;</td>
                <td>
                   <font color="red"><strong>Senarist Ekleme</strong></font> <br />
                    <asp:Label ID="Label2" runat="server" Text="Senarist Adı Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Senarist Soyadı Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Ekle" OnClick="Button2_Click" />
                    
                    
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                   <font color="red"><strong>Yönetmen Ekleme</strong></font> <br />
                    <asp:Label ID="Label3" runat="server" Text="Yönetmen Adı Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Yönetmen Soyadı Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Ekle" OnClick="Button3_Click" />
                </td>
                <td>
                    <font color="red"><strong>Film Ekleme</strong></font> <br />
                    <asp:Label ID="Label4" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource5" DataTextField="Ad" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" SelectCommand="SELECT [Id], [Ad] FROM [SenaristTable]"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource6" DataTextField="Adi" DataValueField="Id"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" SelectCommand="SELECT [Id], [Adi] FROM [YonetmenTable]"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Film Giriniz:"></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Ekle" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                   
                    Kategori Düzenle/Sil
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="KategoriAdi" HeaderText="KategoriAdi" SortExpression="KategoriAdi" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" DeleteCommand="DELETE FROM [KagetoriTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [KagetoriTable] ([KategoriAdi]) VALUES (@KategoriAdi)" SelectCommand="SELECT * FROM [KagetoriTable]" UpdateCommand="UPDATE [KagetoriTable] SET [KategoriAdi] = @KategoriAdi WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="KategoriAdi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="KategoriAdi" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                   Senarist Düzenle/Sil
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                            <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" DeleteCommand="DELETE FROM [SenaristTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [SenaristTable] ([Ad], [Soyad]) VALUES (@Ad, @Soyad)" SelectCommand="SELECT * FROM [SenaristTable]" UpdateCommand="UPDATE [SenaristTable] SET [Ad] = @Ad, [Soyad] = @Soyad WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                            <asp:Parameter Name="Soyad" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Ad" Type="String" />
                            <asp:Parameter Name="Soyad" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                  Yönetmen Düzenle/Sil
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                            <asp:BoundField DataField="Soyadi" HeaderText="Soyadi" SortExpression="Soyadi" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" DeleteCommand="DELETE FROM [YonetmenTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [YonetmenTable] ([Adi], [Soyadi]) VALUES (@Adi, @Soyadi)" SelectCommand="SELECT * FROM [YonetmenTable]" UpdateCommand="UPDATE [YonetmenTable] SET [Adi] = @Adi, [Soyadi] = @Soyadi WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Adi" Type="String" />
                            <asp:Parameter Name="Soyadi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Adi" Type="String" />
                            <asp:Parameter Name="Soyadi" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                  Film Düzenle/Sil
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                            <asp:BoundField DataField="Suresi" HeaderText="Suresi" SortExpression="Suresi" />
                            <asp:BoundField DataField="Kategori" HeaderText="Kategori" SortExpression="Kategori" />
                            <asp:BoundField DataField="SenaristID" HeaderText="SenaristID" SortExpression="SenaristID" />
                            <asp:BoundField DataField="YonetmenID" HeaderText="YonetmenID" SortExpression="YonetmenID" />
                            <asp:BoundField DataField="VizyonaGirisTarihi" HeaderText="VizyonaGirisTarihi" SortExpression="VizyonaGirisTarihi" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FilmAppConnectionString %>" DeleteCommand="DELETE FROM [FilmTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [FilmTable] ([Adi], [Suresi], [Kategori], [SenaristID], [YonetmenID], [VizyonaGirisTarihi]) VALUES (@Adi, @Suresi, @Kategori, @SenaristID, @YonetmenID, @VizyonaGirisTarihi)" SelectCommand="SELECT * FROM [FilmTable]" UpdateCommand="UPDATE [FilmTable] SET [Adi] = @Adi, [Suresi] = @Suresi, [Kategori] = @Kategori, [SenaristID] = @SenaristID, [YonetmenID] = @YonetmenID, [VizyonaGirisTarihi] = @VizyonaGirisTarihi WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Adi" Type="String" />
                            <asp:Parameter Name="Suresi" Type="String" />
                            <asp:Parameter Name="Kategori" Type="String" />
                            <asp:Parameter Name="SenaristID" Type="Int32" />
                            <asp:Parameter Name="YonetmenID" Type="Int32" />
                            <asp:Parameter Name="VizyonaGirisTarihi" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Adi" Type="String" />
                            <asp:Parameter Name="Suresi" Type="String" />
                            <asp:Parameter Name="Kategori" Type="String" />
                            <asp:Parameter Name="SenaristID" Type="Int32" />
                            <asp:Parameter Name="YonetmenID" Type="Int32" />
                            <asp:Parameter Name="VizyonaGirisTarihi" Type="DateTime" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        
        
    </form>
</body>
</html>
