using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FilmApp
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["giris"]) == true)
            {
               
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Önce giriş yapmanız gerekiyor!');</script>");
                Response.Redirect("LoginRegisterPage.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];
            string KullaniciAdi = row.Cells[1].Text;
            Session["SecilenKullanici"] = KullaniciAdi;
            Response.Redirect("OthersProfile.aspx");
        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int secili;
            secili = GridView2.SelectedIndex;
            GridViewRow row = GridView2.Rows[secili];
            string film = row.Cells[1].Text;
            Session["SecilenFilm"] = film;
            Response.Redirect("FilmDetails.aspx");
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView3.SelectedIndex;
            GridViewRow row = GridView3.Rows[secili];
            string yonetmen = row.Cells[1].Text;
            Session["SecilenYonetmen"] = yonetmen;
            Response.Redirect("YonetmenDetails.aspx");
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView4.SelectedIndex;
            GridViewRow row = GridView4.Rows[secili];
            string senarist = row.Cells[1].Text;
            Session["SecilenSenarist"] = senarist;
            Response.Redirect("SenaristDetails.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PopularFilms.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HighScoredFilms.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PopularCategories");
        }
    }
}