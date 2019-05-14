using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FilmApp
{
    public partial class AdminPagee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["admin"]) == true)
            {

            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Önce giriş yapmanız gerekiyor!');</script>");
                Response.Redirect("LoginRegisterPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kategori = TextBox1.Text;
            Operations.KategoriEkle(kategori);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string senaristadi = TextBox2.Text;
            string senaristsoyadi = TextBox5.Text;
            Operations.SenaristEkle(senaristadi, senaristsoyadi);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string yonetmenadi = TextBox3.Text;
            string yonetmensoyadi = TextBox6.Text;
            Operations.YonetmenEkle(yonetmenadi, yonetmensoyadi);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            

            try
            {
                string Adi = TextBox4.Text;
                int Sure = Convert.ToInt32(TextBox7.Text);
                string Kategori = TextBox8.Text;
                int SenaristID = Convert.ToInt32(DropDownList1.SelectedItem.Value);
                int YonetmenID = Convert.ToInt32(DropDownList2.SelectedItem.Value);
                string Vizyon = TextBox11.Text;
                Operations.FilmEkle(Adi,Sure,Kategori,SenaristID,YonetmenID,Vizyon);
            }
            catch (Exception)
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Hata", "<script>alert('Lütfen eksiksiz doldurunuz!');</script>");
               
            }

        }
    }
}