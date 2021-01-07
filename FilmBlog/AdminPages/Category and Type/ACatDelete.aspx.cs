using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity; 

namespace FilmBlog.AdminPages.Category_and_Type
{
    
    public partial class ACatDelete : System.Web.UI.Page
    {
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                DBBlogFilmEntities db = new DBBlogFilmEntities();
                int id = Convert.ToInt32(Request.QueryString["CATID"]);
                var cat = db.TBLCATEGORY.Find(id);
                db.TBLCATEGORY.Remove(cat);
                db.SaveChanges();
                Response.Redirect("ACategoryIndex.aspx");
            }
        }
    }
}