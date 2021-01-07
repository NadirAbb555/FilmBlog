using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class ABlogUpdate : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["BLOGID"]);
                if (Page.IsPostBack == false)
                {

                    var blg = db.TBLBLOCG.Find(id);
                    txtbasliq.Text = blg.BLOGBASLIQ;
                    txtContent.Text = blg.BLOGCONTENT;
                    txtTarix.Text = blg.BLOGTAARIX.ToString();
                    txtMedia.Text = blg.BLOGMEDIA;
                    DropType.SelectedValue = blg.BLOGTYPE.ToString();
                    DropCategory.SelectedValue = blg.BLOGCATEGORY.ToString();

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
            var Tblog = db.TBLBLOCG.Find(id);
            Tblog.BLOGBASLIQ = txtbasliq.Text;
            Tblog.BLOGCONTENT = txtContent.Text;
            Tblog.BLOGTAARIX = DateTime.Parse(txtTarix.Text);
            Tblog.BLOGMEDIA = txtMedia.Text;
            Tblog.BLOGTYPE = byte.Parse(DropType.SelectedValue);
            Tblog.BLOGCATEGORY = byte.Parse(DropCategory.SelectedValue);
            db.SaveChanges();
            Response.Redirect("Adminindex.aspx");
        }
    }
}