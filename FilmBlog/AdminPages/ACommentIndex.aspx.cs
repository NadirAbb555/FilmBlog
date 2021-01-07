using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class ACommentIndex : System.Web.UI.Page
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
                var cmm = (from c in db.TBLCOMMENT
                           join b in db.TBLBLOCG
                           on c.CMTBLOG equals b.BLOGID
                           orderby c.CMTID descending
                           select new
                           {
                               CMTID = c.CMTID,
                               NIKNAME = c.NIKNAME,
                               MAIL = c.COMMENT,
                               COMMENT = c.COMMENT,
                               CMTBLOG = b.BLOGBASLIQ
                           }).ToList();
                RepComment.DataSource = cmm;
                RepComment.DataBind();
            }
        }
    }
}