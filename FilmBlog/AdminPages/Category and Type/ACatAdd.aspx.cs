using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages.Category_and_Type
{
    public partial class ACatAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            { }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DBBlogFilmEntities db = new DBBlogFilmEntities();
            TBLCATEGORY t = new TBLCATEGORY();
            t.CATNAME = txtCat.Text;
            db.TBLCATEGORY.Add(t);
            db.SaveChanges();
            Response.Redirect("ACategoryIndex.aspx");
        }
    }
}