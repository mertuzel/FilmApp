using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FilmApp
{
    public partial class OthersProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) == true)
            {
                string kullaniciadi = Convert.ToString(Session["SecilenKullanici"]);
                string baglan = ConfigurationManager.ConnectionStrings["baglan"].ToString();
                SqlConnection cnn = new SqlConnection(baglan);

                SqlCommand komut = new SqlCommand();
                cnn.Open();
                komut.Connection = cnn;
                komut.CommandText = "Select * from KullaniciTable where KullaniciAdi = '" + kullaniciadi + "'";
                komut.ExecuteNonQuery();
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    Label1.Text = dr["Ad"].ToString();
                    Label2.Text = dr["Soyad"].ToString();
                    Image1.ImageUrl = dr["FotoUrl"].ToString();

                }
                DataSet Sorgu = Operations.IzlenilenFilmleriCek(Convert.ToString(Session["SecilenKullanici"]));
                GridView1.DataSource = Sorgu.Tables[0];
                GridView1.DataBind();



            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Önce giriş yapmanız gerekiyor!');</script>");
                Response.Redirect("LoginRegisterPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}