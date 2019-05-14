using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FilmApp
{
    public class Operations
    {
        public object MessageBox { get; private set; }

        public static bool Login(int Sifre, string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from KullaniciTable where KullaniciAdi=@pka and Sifre=@pks";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = sql;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@pka", KullaniciAdi);
            komut.Parameters.AddWithValue("@pks", Sifre);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            adaptor.Fill(sonucDS);
            baglanti.Close();
            bool sonuc = false;
            if (sonucDS.Tables[0].Rows.Count > 0)
                sonuc = true;
            else
                sonuc = false;
            return sonuc;
        }

        public static bool LoginAdmin(int Sifre, string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select * from YoneticiTable where KullaniciAdi=@pka and Sifre=@pks";
            SqlCommand komut = new SqlCommand();
            komut.CommandText = sql;
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@pka", KullaniciAdi);
            komut.Parameters.AddWithValue("@pks", Sifre);
            DataSet sonucDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter();
            adaptor.SelectCommand = komut;
            baglanti.Open();
            adaptor.Fill(sonucDS);
            baglanti.Close();
            bool sonuc = false;
            if (sonucDS.Tables[0].Rows.Count > 0)
                sonuc = true;
            else
                sonuc = false;
            return sonuc;
        }









        public static void KullaniciEkle(string Ad, string Soyad, string Cinsiyet, string DogumTarihi, string KullaniciAdi, int Sifre, string FotoUrl)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KullaniciTable (Ad,Soyad,Cinsiyet,DogumTarihi,KullaniciAdi,Sifre,FotoUrl) values(@pad,@psoyad,@pcinsiyet,@pdogumtarihi,@pkullaniciadi,@psifre,@pfotourl)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pad", Ad);
            komut.Parameters.AddWithValue("@psoyad", Soyad);
            komut.Parameters.AddWithValue("@pcinsiyet", Cinsiyet);
            komut.Parameters.AddWithValue("@pdogumtarihi", DogumTarihi);
            komut.Parameters.AddWithValue("@pkullaniciadi", KullaniciAdi);
            komut.Parameters.AddWithValue("@psifre", Sifre);
            komut.Parameters.AddWithValue("@pfotourl", FotoUrl);         
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }

        public static void KategoriEkle(string KategoriAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into KagetoriTable (KategoriAdi) values(@pkadi)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pkadi", KategoriAdi);
            
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void SenaristEkle(string Ad,string Soyad)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into SenaristTable (Ad,Soyad) values(@psad,@pssa)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@psad", Ad);
            komut.Parameters.AddWithValue("@pssa", Soyad);

            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void YonetmenEkle(string Adi, string Soyadi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into YonetmenTable (Adi,Soyadi) values(@pyadi,@pysadi)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pyadi", Adi);
            komut.Parameters.AddWithValue("@pysadi", Soyadi);

            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static void FilmEkle(string Adi, int Suresi,string Kategori,int SenaristID,int YonetmenID,string VizyonTarihi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "insert into FilmTable (Adi,Suresi,Kategori,SenaristID,YonetmenID,VizyonaGirisTarihi) " +
                "values(@pyadi,@psuresi,@pkategori,@psenarist,@pyonetmen,@pvizyon)";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            komut.Parameters.AddWithValue("@pyadi", Adi);
            komut.Parameters.AddWithValue("@psuresi", Suresi);
            komut.Parameters.AddWithValue("@pkategori", Kategori);
            komut.Parameters.AddWithValue("@psenarist", SenaristID);
            komut.Parameters.AddWithValue("@pyonetmen", YonetmenID);
            komut.Parameters.AddWithValue("@pvizyon", VizyonTarihi);
            baglanti.Open();
            komut.ExecuteNonQuery();
            baglanti.Close();
        }
        public static DataSet IzlenilenFilmleriCek(string KullaniciAdi)
        {
            string baglantiYolu = ConfigurationManager.ConnectionStrings["baglan"].ToString();
            SqlConnection baglanti = new SqlConnection(baglantiYolu);
            string sql = "select Adi from FilmTable where Id in(select FilmID from FilmIzlenmeTable where KullaniciID in (Select Id from KullaniciTable where KullaniciAdi = '"+KullaniciAdi+"'))";
            SqlCommand komut = new SqlCommand(sql, baglanti);
            DataSet bilgilerDS = new DataSet();
            SqlDataAdapter adaptor = new SqlDataAdapter(komut);
            baglanti.Open();
            adaptor.Fill(bilgilerDS);
            baglanti.Close();
            return bilgilerDS;
        }
    }
}