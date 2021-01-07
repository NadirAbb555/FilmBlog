using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog
{
    public partial class CategoryInfo : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["CATID"]);
            var cat = db.TBLBLOCG.Where(m => m.BLOGCATEGORY == id).ToList();
            RepCatBlog.DataSource = cat;
            RepCatBlog.DataBind();
        }
    }
}