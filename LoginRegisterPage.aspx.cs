using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace FilmApp
{
    public partial class LoginRegisterPage : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(@"Data Source = (localdb)\MSSQLLocalDB; Initial Catalog = FilmApp; Integrated Security = True; Connect Timeout = 30; Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string Ad = TextBox3.Text;
            string Soyad = TextBox4.Text;
            string Cinsiyet = TextBox5.Text;
            string DogumTarihi = TextBox6.Text;
            string KullaniciAdi = TextBox7.Text;
            int Sifre = Convert.ToInt32(TextBox8.Text);
            if (FileUpload1.HasFile)
            {
                string fname = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//ProfilePhoto//" + fname);
                string FotoUrl = "~//ProfilePhoto//" + fname.ToString();
                Operations.KullaniciEkle(Ad, Soyad, Cinsiyet, DogumTarihi, KullaniciAdi, Sifre, FotoUrl);
            }
            else 
            {
                Response.Write("Lütfen bir fotoğraf yükleyiniz.");
            }
            
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            string KullaniciAdi = TextBox1.Text;
            int Sifre = Convert.ToInt32(TextBox2.Text);

            bool dogrumu = Operations.Login(Sifre, KullaniciAdi);
            if (dogrumu == true)
            {
                Session["giris"] = true;
                Session["KullaniciAdi"] = KullaniciAdi;
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Yanlış kullanıcı adı veya şifre girdiniz!');</script>");
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string KullaniciAdi = TextBox9.Text;
            int Sifre = Convert.ToInt32(TextBox10.Text);

            bool dogrumu = Operations.LoginAdmin(Sifre, KullaniciAdi);
            if (dogrumu == true)
            {
                Session["giris"] = true;
                Session["Admin"] = true;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Yanlış kullanıcı adı veya şifre girdiniz!');</script>");
            }
        }
    }
}