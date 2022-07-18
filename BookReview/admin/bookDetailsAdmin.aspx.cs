using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using BookReview.Models;
using BookReview.Services;


namespace BookReview.admin
{
    public partial class bookDetailsAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (Request["bid"] != null)
            {
                string[] blk = { "Block", "Unblock" };

                long currBid = Convert.ToInt64(Request["bid"]);
                var book = BookServices.Get(currBid);
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

                    editBtn.HRef = $"bookEdit.aspx?bid={currBid}";
                    delBtn.HRef = $"deleteBook.aspx?bid={currBid}";

                    var reviews = ReviewsService.GetByBook(currBid);
                    if (reviews != null)
                    {
                        foreach (var revew in reviews)
                        {
                            HtmlGenericControl reviw = new HtmlGenericControl();
                            reviw.Attributes.Add("class", "review");
                            reviw.Style.Add("display", "block");
                            if (revew.is_blocked == 1)
                                reviw.Style.Add("background", "#fc4d3d");

                            HtmlAnchor reviewerName = new HtmlAnchor();
                            reviewerName.HRef = $"userProfileView.aspx?ruid={revew.reviewed_by}";
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

                            HtmlGenericControl rBtns = new HtmlGenericControl();
                            rBtns.Attributes.Add("class", "r-btns");
                            rBtns.InnerHtml = $"<a href=\"blockReview.aspx?revid={revew.revid}&bid={revew.review_for}\" class=\"rcntl-btn\">{blk[revew.is_blocked]}</a>";
                            reviw.Controls.Add(rBtns);
                            
                            reviewSection.Controls.Add(reviw);
                        }
                    }
                }
            }

        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Upload();
        }

        protected void Upload()
        {
            if (imgFileUpload.HasFile)
            {
                string fileExt = System.IO.Path.GetExtension(imgFileUpload.FileName);
                if (fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".jpeg" && fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".png")
                {
                    imgWarn.Style.Add("display", "block");
                }
                else
                {
                    string filePath = Server.MapPath("~/bookCovers/");
                    imgFileUpload.SaveAs($"{filePath}{Request["bid"]}{fileExt.ToLower()}");
                    MySqlConnection conn = Connection.getConnectString();
                    conn.Open();
                    string query = $"update book set book_cover=\"{Request["bid"] + fileExt.ToLower()}\" where bid={Request["bid"]};";
                    var chkUpdate = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if (chkUpdate > 0)
                    {
                        Response.Redirect($"bookDetailsAdmin.aspx?bid={Request["bid"]}");
                    }
                }
            }
        }
    }
}