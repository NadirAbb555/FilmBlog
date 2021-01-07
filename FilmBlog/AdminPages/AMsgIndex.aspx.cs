using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class AMsgIndex : System.Web.UI.Page
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
                var msj = (from m in db.TBLELAQE
                           orderby m.MSJID descending
                           select m).ToList();
                RepMsj.DataSource = msj;
                RepMsj.DataBind();
            }
        }
    }
}