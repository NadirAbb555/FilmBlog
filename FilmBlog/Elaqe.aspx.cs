using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog
{
    public partial class Elaqe : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (this.txtimgcode.Text == this.Session["CaptchaImageText"].ToString())
            {
                TBLELAQE t = new TBLELAQE();
                t.NAMESURNAME = txtName.Text;
                t.TELEFON = txtTel.Text;
                t.MAIL = txtMail.Text;
                t.MOVZU = txtMovzu.Text;
                t.MESAJ = txtMsg.Text;
                db.TBLELAQE.Add(t);
                db.SaveChanges();
                Response.Redirect("Elaqe.aspx");
            }
            else
            {
                lblmsg.Text = "Kod yanlışdır";


            }

            this.txtimgcode.Text = "";
        }
    }
}