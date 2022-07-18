using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Models;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class addBookAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (IsPostBack)
            {
                Book book = new Book();
                book.book_cover = "default-cover.png";
                book.title = Request.Form["title"];
                book.authors = Request.Form["authors"];
                book.description = Request.Form["ctl00$middle$bookDesc"];
                book.year = Request.Form["year"];
                book.language = Request.Form["language"];
                book.edition = Convert.ToInt32(Request.Form["edition"]);
                book.category = Request.Form["category"];
                book.publisher = Request.Form["publisher"];
                book.aid = Convert.ToInt32(Session["aid"]);
                book.ruid = 0;
                var id = BookServices.Add(book);
                if (id != 0)
                {
                    Response.Redirect($"bookDetailsAdmin.aspx?bid={id}");
                }
            }
        }
    }
}