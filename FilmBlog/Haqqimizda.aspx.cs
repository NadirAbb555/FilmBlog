using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog
{
    public partial class Haqqimizda : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            RepHaqqimizda.DataSource = db.TBLHAQQIMIZDA.ToList();
            RepHaqqimizda.DataBind();
        }
    }
}