using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class ABlogDelete : System.Web.UI.Page
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
                int id = Convert.ToInt32(Request.QueryString["BLOGID"]);
                var blg = db.TBLBLOCG.Find(id);
                db.TBLBLOCG.Remove(blg);
                db.SaveChanges();
                Response.Redirect("Adminindex.aspx");
            }
        }
    }
}