using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;

namespace FilmBlog
{
    public partial class CommentInfo : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["CMTBLOG"]);
          //  var comm = db.TBLCOMMENT.Where(r => r.CMTBLOG == id).ToList();
            var viewBlog = db.TBLBLOCG.Where(x => x.BLOGID == id).ToList();
            RepBlog.DataSource = viewBlog;
            RepBlog.DataBind();

            var comm1 = db.TBLCOMMENT.Where(r => r.CMTBLOG == id).ToList();
            RepComments.DataSource = comm1;
            RepComments.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.txtimgcode.Text == this.Session["CaptchaImageText"].ToString())
            {
                TBLCOMMENT t = new TBLCOMMENT();
                t.NIKNAME = txtName.Text;
                t.MAIL = txtMail.Text;
                t.COMMENT = txtComment.Text;
                t.CMTBLOG = id;
                db.TBLCOMMENT.Add(t);
                db.SaveChanges();
                Response.Redirect("BlogInfo.aspx?BLOGID=" + id);
                lblmsg.Text = "Excellent.......";
            }
            else
            {

                lblmsg.Text = "Kod yanlışdır";
            }
            this.txtimgcode.Text = "";
        }
    }
}