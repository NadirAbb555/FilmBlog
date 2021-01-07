using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class AMsgDelete : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                int id = Convert.ToInt32(Request.QueryString["MSJID"]);
                var msj = db.TBLELAQE.Find(id);
                db.TBLELAQE.Remove(msj);
                db.SaveChanges();
                Response.Redirect("AMsgIndex.aspx");
            }
        }
    }
}