using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages.Category_and_Type
{
    public partial class ATypeUpdate : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["TYPEID"]);
                if (Page.IsPostBack == false)
                {
                    var typ = db.TBLTYPE.Find(id);
                    txtTyp.Text = typ.TYPENAME;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["TYPEID"]);
            var typ = db.TBLTYPE.Find(id);
            typ.TYPENAME = txtTyp.Text;
            db.SaveChanges();
            Response.Redirect("ATypeIndex.aspx");
        }
    }
}