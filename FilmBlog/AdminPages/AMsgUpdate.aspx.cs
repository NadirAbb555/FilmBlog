using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class AMsgUpdate : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["MSJID"]);
                if (Page.IsPostBack == false)
                {
                    var msj = db.TBLELAQE.Find(id);
                    txtAdSoyad.Text = msj.NAMESURNAME;
                    txtEmail.Text = msj.MAIL;
                    txtTelefon.Text = msj.TELEFON;
                    txtMovzu.Text = msj.MOVZU;
                    txtMsj.Text = msj.MESAJ;

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var msj = db.TBLELAQE.Find(id);
            msj.NAMESURNAME = txtAdSoyad.Text;
            msj.MAIL = txtEmail.Text;
            msj.TELEFON = txtTelefon.Text;
            msj.MOVZU = txtMovzu.Text;
            msj.MESAJ = txtMsj.Text;
            db.SaveChanges();
            Response.Redirect("AMsgIndex.aspx");
        }
    }
}