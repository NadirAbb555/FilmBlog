using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FilmBlog.Entity;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Collections;

namespace FilmBlog
{
    public partial class Index : System.Web.UI.Page
    {

        DBBlogFilmEntities db = new DBBlogFilmEntities();
        private int iPageSize = 5;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            var bloglar = from s in db.TBLBLOCG.ToList()
                          orderby s.BLOGID descending
                          select s;

            if (!IsPostBack)
            {
                lGetBlog();
            }
            var bloglarRight = (from s in db.TBLBLOCG
                          orderby s.BLOGID descending
                          select s).Take(5).ToList();
            Repeater3.DataSource = bloglarRight;
            Repeater3.DataBind();
           
            var category = db.TBLCATEGORY.ToList();
            Repeater2.DataSource = category;
            Repeater2.DataBind();
            
            var commRight = (from c in db.TBLCOMMENT
                            orderby c.CMTID descending
                            select c).Take(5).ToList();
            RepSonComment.DataSource = commRight;
            RepSonComment.DataBind();


        }
        private void lGetBlog()
        {
            DataTable dtData = new DataTable();
            string conString = "data source=ADMIN-PC\\SQLEXPRESS;initial catalog=DBBlogFilm;integrated security=True;MultipleActiveResultSets=True;";
            SqlConnection sqlCon = new SqlConnection(conString);
            sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("Select * From TBLBLOCG ORDER BY BLOGID DESC ", sqlCon);
            SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);
            sqlDa.Fill(dtData);
            sqlCon.Close();

            PagedDataSource pdsData = new PagedDataSource();
            DataView dv = new DataView(dtData);
            pdsData.DataSource = dv;
            pdsData.AllowPaging = true;
            pdsData.PageSize = iPageSize;

            if (ViewState["PageNumber"] != null)
                pdsData.CurrentPageIndex = Convert.ToInt32(ViewState["PageNumber"]);
            else
                pdsData.CurrentPageIndex = 0;
            if (pdsData.PageCount > 0)
            {
                Repeater1.Visible = true;
                ArrayList alPages = new ArrayList();
                for (int i = 0; i <= pdsData.PageCount; i++)
                    alPages.Add((i).ToString());
                Repeater4.DataSource = alPages;
                Repeater4.DataBind();
            }
            else
            {
                Repeater4.Visible = false;
            }
            Repeater1.DataSource = pdsData;
            Repeater1.DataBind();
        }
        protected void Repeater4_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ViewState["PageNumber"] = Convert.ToInt32(e.CommandArgument);
            lGetBlog();
        }
    }


}
