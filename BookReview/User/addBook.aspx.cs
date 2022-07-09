using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Book = BookReview.Models.Book;
using BookReview.Services;

namespace BookReview.user
{
    public partial class addBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {

                Book book = new Book();
                book.book_cover = "default-cover.png";
                book.title = Request.Form["title"];
                book.authors= Request.Form["authors"];
                book.description= Request.Form["ctl00$middle$bookDesc"];
                book.year= Request.Form["year"];
                book.language= Request.Form["language"];
                book.edition= Convert.ToInt32(Request.Form["edition"]);
                book.category= Request.Form["category"];
                book.publisher = Request.Form["publisher"];
                book.ruid = 1;
                var id=BookServices.Add(book);
                if(id!=0)
                {
                    Response.Redirect($"uploadBookCover.aspx?bid={id}");
                }
            }
        }
    }
}