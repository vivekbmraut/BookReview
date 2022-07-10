#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BookReview.Models;
using BookReview.Services;

namespace BookReview.html
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Reviews rev = new Reviews();
                rev.review = Request.Form["ctl00$middle$revTextArea"];
                DateTime dt = DateTime.Now;
                rev.review_date=dt.ToString("yyyy-MM-dd");
                rev.reviewed_by = Convert.ToInt64(Session["ruid"]);
                rev.review_for = Convert.ToInt64(Request["bid"]);
                rev.is_blocked = 0;
                rev.block_activity = 0;
                rev.reviewer_name = ReviewerService.GetName(Convert.ToInt64(Session["ruid"]));
                if (ReviewsService.Add(rev))
                {
                    Response.Redirect($"bookDetails.aspx?bid={rev.review_for}");
                }
            }
            
            if (Session["ruid"] == null)
            {
                revTextArea.Attributes.Add("disabled", "disabled");
                revBtn.Attributes.Add("disabled", "disabled");
            }
            else
            {
                giveRForm.Attributes.Add("action", $"bookDetails.aspx?bid={Request["bid"]}");
            }
            if (Request["bid"] != null)
            {
                Book? book = BookServices.Get(Convert.ToInt64(Request["bid"]));
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

                    var reviews = ReviewsService.GetByBook(Convert.ToInt64(Request["bid"]));
                    if (reviews != null)
                    {
                        foreach (var revew in reviews)
                        {
                            HtmlGenericControl reviw = new HtmlGenericControl();
                            reviw.Attributes.Add("class", "review");
                            reviw.Style.Add("display", "block");

                            HtmlGenericControl reviewerName = new HtmlGenericControl();
                            reviewerName.InnerText = revew.reviewer_name;
                            reviewerName.Attributes.Add("class", "reviewer-name");

                            HtmlGenericControl rText = new HtmlGenericControl();
                            rText.InnerText = revew.review;
                            rText.Attributes.Add("class", "r-text");

                            HtmlGenericControl date = new HtmlGenericControl();
                            date.InnerText = revew.review_date;
                            date.Attributes.Add("class", "date");

                            reviw.Controls.Add(reviewerName);
                            reviw.Controls.Add(rText);
                            reviw.Controls.Add(date);

                            if (Convert.ToInt64(Session["ruid"]) == revew.reviewed_by)
                            {
                                HtmlGenericControl rBtns = new HtmlGenericControl();
                                rBtns.Attributes.Add("class", "r-btns");
                                rBtns.InnerHtml = $"<a href=\"editReview.aspx?revid={revew.revid}\" class=\"rcntl-btn\">Edit</a><a href = \"deleteReview.aspx?revid={revew.revid}&bid={revew.review_for}\" class=\"rcntl-btn\">Delete</a>";
                                reviw.Controls.Add(rBtns);
                            }
                            reviewSection.Controls.Add(reviw);
                        }
                    }
                }
            }
            
        }
    }
}