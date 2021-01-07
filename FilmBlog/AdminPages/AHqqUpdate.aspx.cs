using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog.AdminPages
{
    public partial class AHqqUpdate : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var hqq = db.TBLHAQQIMIZDA.Find(id);
                txtAciqlama.Text = hqq.ACIQLAMA;
            }
        }
    }
        protected void Button1_Click(object sender, EventArgs e)
        {

            var hqq = db.TBLHAQQIMIZDA.Find(id);
            hqq.ACIQLAMA = txtAciqlama.Text;
            db.SaveChanges();
            Response.Redirect("AHqqIndex.aspx");
        }
    }
}