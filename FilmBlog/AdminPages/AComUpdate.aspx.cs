using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog.AdminPages
{
    public partial class AComUpdate : System.Web.UI.Page
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
                id = Convert.ToInt32(Request.QueryString["CMTID"]);
                if (Page.IsPostBack == false)
                {
                    var cmm = db.TBLCOMMENT.Find(id);
                    txtEmail.Text = cmm.MAIL;
                    txtNickName.Text = cmm.NIKNAME;
                    txtCmm.Text = cmm.COMMENT;
                    DropFilm.SelectedValue = cmm.CMTBLOG.ToString();

                    var blg = (from b in db.TBLBLOCG
                               select new
                               {
                                   b.BLOGID,
                                   b.BLOGBASLIQ
                               }).ToList();
                    DropFilm.DataSource = blg;
                    DropFilm.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var Tcmm = db.TBLCOMMENT.Find(id);
            Tcmm.MAIL = txtEmail.Text;
            Tcmm.NIKNAME = txtNickName.Text;
            Tcmm.COMMENT = txtCmm.Text;
            Tcmm.CMTBLOG = byte.Parse(DropFilm.SelectedValue);
            db.SaveChanges();
            Response.Redirect("ACommentIndex.aspx");
        }
    }
}