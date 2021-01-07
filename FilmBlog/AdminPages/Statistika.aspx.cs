using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class Statistika : System.Web.UI.Page
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
                lblShare.Text = db.TBLBLOCG.Count().ToString();
                lblComm.Text = db.TBLCOMMENT.Count().ToString();
                lblFilms.Text = db.TBLBLOCG.Where(m => m.BLOGTYPE == 1).Count().ToString();

                lblShareCom.Text = db.TBLBLOCG.Where(m => m.BLOGID == db.TBLCOMMENT.GroupBy(x => x.CMTBLOG).OrderByDescending(x => x.Count()).Select(x => x.Key).FirstOrDefault()).Select(n => n.BLOGBASLIQ).FirstOrDefault();
            }
        }
    }
}
