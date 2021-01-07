using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages.Category_and_Type
{
    public partial class ATypeIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                if (Session["USER"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    DBBlogFilmEntities db = new DBBlogFilmEntities();
                    var typ = db.TBLTYPE.ToList();
                    RepType.DataSource = typ;
                    RepType.DataBind();
                }
            }
        }
    }
}