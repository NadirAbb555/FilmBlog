using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class AComDelete : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["CMTID"]);
                var cmm = db.TBLCOMMENT.Find(id);
                db.TBLCOMMENT.Remove(cmm);
                db.SaveChanges();
                Response.Redirect("ACommentIndex.aspx");
            }
        }
    }
}