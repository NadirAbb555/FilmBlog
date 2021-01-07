using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog
{
    public partial class Search : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var blg = (from b in db.TBLBLOCG
                           join c in db.TBLCATEGORY
                           on b.BLOGCATEGORY equals c.CATID

                           join t in db.TBLTYPE
                           on b.BLOGTYPE equals t.TYPEID
                           where b.BLOGBASLIQ.Contains(txtSearch.Text) || c.CATNAME.Contains(txtSearch.Text) || t.TYPENAME.Contains(txtSearch.Text)

                           select new
                           {
                               BLOGID = b.BLOGID,
                               BLOGBASLIQ = b.BLOGBASLIQ,
                               BLOGTAARIX = b.BLOGTAARIX,
                               BLOGMEDIA = b.BLOGMEDIA,
                               BLOGTYPE = t.TYPENAME,
                               BLOGCATEGORY = c.CATNAME

                           }).ToList();

                RepCatBlog.DataSource = blg;
                RepCatBlog.DataBind();

            }
            catch (Exception ex)
            {
                Label1.Text = ex +" Tapılmaı";
            }



        }
    }
}