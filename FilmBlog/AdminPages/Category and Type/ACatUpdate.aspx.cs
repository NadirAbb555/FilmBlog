using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages.Category_and_Type
{
    public partial class ACatUpdate : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["CATID"]);

                if (Page.IsPostBack == false)
                {
                    var cat = db.TBLCATEGORY.Find(id);
                    txtCat.Text = cat.CATNAME;

                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var cat = db.TBLCATEGORY.Find(id);
            cat.CATNAME = txtCat.Text;
            db.SaveChanges();
            Response.Redirect("ACategoryIndex.aspx");

        }
    }
}