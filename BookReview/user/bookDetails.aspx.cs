#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Book = BookReview.Models.Book;
using BookReview.Services;

namespace BookReview.html
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Request["bid"]!=null)
            {
                Book? book = BookServices.Get(Convert.ToInt32(Request["bid"]));
                if (book != null)
                {
                    bookCover.Attributes.Add("src", $"../bookCovers/{book.book_cover}");
                    title.InnerText = book.title;
                    authors.InnerText = book.authors;
                    description.InnerText = book.description;
                    category.InnerText = book.category;
                    year.InnerText = book.year;
                    edition.InnerText = book.edition.ToString();
                    language.InnerText = book.language;
                    publisher.InnerText = book.publisher;
                }
            }
        }
    }
}