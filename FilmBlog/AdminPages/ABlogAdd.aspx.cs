using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class ABlogAdd : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        string time = DateTime.Now.ToString("dd'.'MM'.'yyyy' 'HH':'mm':'00");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                if (Page.IsPostBack == false)
                {
                    txtTarix.Text = time;
                    var typ = (from x in db.TBLTYPE
                               select new
                               {
                                   x.TYPENAME,
                                   x.TYPEID
                               }).ToList();

                    DropType.DataSource = typ;
                    DropType.DataBind();
                    var cat = (from x in db.TBLCATEGORY
                               select new
                               {
                                   x.CATNAME,
                                   x.CATID
                               }).ToList();
                    DropCategory.DataSource = cat;
                    DropCategory.DataBind();
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            TBLBLOCG t = new TBLBLOCG();
            t.BLOGBASLIQ = txtbasliq.Text;
            t.BLOGCONTENT = txtContent.Text;
            t.BLOGTAARIX = DateTime.Parse(txtTarix.Text);
            t.BLOGMEDIA = txtMedia.Text;
            t.BLOGTYPE = byte.Parse(DropType.SelectedValue);
            t.BLOGCATEGORY = byte.Parse(DropCategory.SelectedValue);
            db.TBLBLOCG.Add(t);
            db.SaveChanges();
            Response.Redirect("Adminindex.aspx");
        }
    }
}