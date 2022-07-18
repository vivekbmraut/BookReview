using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;
using BookReview.Models;

namespace BookReview.admin
{
    public partial class bookEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (IsPostBack)
            {
                Book book = new Book();
                book.bid = Convert.ToInt64(Request["bid"]);
                book.title = Request.Form["ctl00$middle$bookTitle"];
                book.authors = Request.Form["ctl00$middle$bookAuthors"];
                book.description = Request.Form["ctl00$middle$bookDesc"];
                book.year = Request.Form["ctl00$middle$bookYear"];
                book.category = Request.Form["ctl00$middle$bookCategory"];
                book.edition = Convert.ToInt32(Request.Form["ctl00$middle$bookEdition"]);
                book.publisher = Request.Form["ctl00$middle$bookPublisher"];
                book.language = Request.Form["ctl00$middle$bookLanguage"];
                var chUpdt = BookServices.Update(book);
                if (chUpdt > 0)
                    Response.Redirect($"bookDetailsAdmin.aspx?bid={book.bid}");
            }
            if (Request["bid"] != null)
            {
                long currBid = Convert.ToInt64(Request["bid"]);
                editBookForm.Action = $"bookEdit.aspx?bid={currBid}";
                var book=BookServices.Get(currBid);
                bookTitle.Value = book.title;
                bookAuthors.Value = book.authors;
                bookDesc.Text = book.description;
                bookYear.Value = book.year;
                bookCategory.Value = book.category;
                bookEdition.Value = book.edition.ToString();
                bookPublisher.Value = book.publisher;
                bookLanguage.Value = book.language;
            }
        }
    }
}