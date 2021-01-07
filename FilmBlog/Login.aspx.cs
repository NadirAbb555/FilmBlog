using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
namespace FilmBlog
{
    public partial class Login : System.Web.UI.Page
    {
        DBBlogFilmEntities db = new DBBlogFilmEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var query = from x in db.TBLADMIN
                        where x.USERNAME == txtUsername.Text &&
                              x.PASSWORD == txtPassword.Text
                        select x;
            if (query.Any())
            {
                Session.Add("USER", txtUsername.Text);
                Response.Redirect("/AdminPages/Adminindex.aspx");
            }
            else
            {
                Response.Write("İstifadeçi adınız və ya şifrəniz doğru deyil");
            }
        }
    }
}