using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FilmApp
{
    public partial class PopularCategories : System.Web.UI.Page
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
    }
}