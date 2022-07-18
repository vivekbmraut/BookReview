using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class searchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (Request["title"] != null)
            {
                string searchQuery = Request["title"].ToString();
                var books = BookServices.GetAllInSearch(searchQuery);

                if (books != null)
                {
                    foreach (var book in books)
                    {
                        HtmlGenericControl box = new HtmlGenericControl();
                        box.Attributes.Add("class", "box");
                        box.Style.Add("display", "block");
                        HtmlImage bookImage = new HtmlImage();
                        bookImage.Src = $"~/bookCovers/{book.book_cover}";
                        bookImage.Attributes.Add("class", "book-cover");
                        HtmlGenericControl bookTitle = new HtmlGenericControl();
                        bookTitle.InnerText = book.title;
                        bookTitle.Attributes.Add("class", "book-title");
                        HtmlAnchor btn = new HtmlAnchor();
                        btn.Attributes.Add("class", "btn");
                        btn.Style.Add("display", "block");
                        btn.HRef = $"bookDetails.aspx?bid={book.bid}";
                        btn.InnerText = "View";
                        box.Controls.Add(bookImage);
                        box.Controls.Add(bookTitle);
                        box.Controls.Add(btn);
                        bookContainer.Controls.Add(box);
                    }
                }
            }
        }
    }
}