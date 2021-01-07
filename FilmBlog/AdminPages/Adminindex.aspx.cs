using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class Adminindex : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else { 
            //var blg = db.TBLBLOCG.ToList();
            if (!IsPostBack)
            {
                lGetBlog();
            }
            }
        }
        private void lGetBlog()
        {
            var blg = (from b in db.TBLBLOCG
                       join c in db.TBLCATEGORY
                       on b.BLOGCATEGORY equals c.CATID

                       join t in db.TBLTYPE
                       on b.BLOGTYPE equals t.TYPEID
                       orderby b.BLOGID descending
                       select new
                       {
                           BLOGID = b.BLOGID,
                           BLOGBASLIQ = b.BLOGBASLIQ,
                           BLOGTAARIX = b.BLOGTAARIX,
                           BLOGMEDIA = b.BLOGMEDIA,
                           BLOGTYPE = t.TYPENAME,
                           BLOGCATEGORY = c.CATNAME
                       }).ToList();
            ListView1.DataSource = blg;
            ListView1.DataBind();
        }

        protected void ListView1_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (ListView1.FindControl("DataPage1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.lGetBlog();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }
    }
}