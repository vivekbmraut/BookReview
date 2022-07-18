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
    public partial class userReviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (Request["ruid"] != null)
            {
                string[] blk = { "Block", "Unblock" };
                long currRuid = Convert.ToInt64(Request["ruid"]);
                var reviews = ReviewsService.GetByReviewer(currRuid);
                userName.InnerText = reviews[0].reviewer_name;
                if (reviews != null)
                {
                    foreach (var revew in reviews)
                    {
                        HtmlGenericControl reviw = new HtmlGenericControl();
                        reviw.Attributes.Add("class", "review");
                        reviw.Style.Add("display", "block");
                        if (revew.is_blocked == 1)
                            reviw.Style.Add("background", "#fc4d3d");

                        HtmlGenericControl rText = new HtmlGenericControl();
                        rText.InnerText = revew.review;
                        rText.Attributes.Add("class", "r-text");

                        HtmlGenericControl date = new HtmlGenericControl();
                        date.InnerText = revew.review_date;
                        date.Attributes.Add("class", "date");

                        reviw.Controls.Add(rText);
                        reviw.Controls.Add(date);

                        HtmlGenericControl rBtns = new HtmlGenericControl();
                        rBtns.Attributes.Add("class", "r-btns");
                        rBtns.InnerHtml = $"<a href=\"blockReview.aspx?revid={revew.revid}&bid={revew.review_for}\" class=\"rcntl-btn\">{blk[revew.is_blocked]}</a> <a href=\"bookDetailsAdmin.aspx?bid={revew.review_for}\">Source</a>";
                        reviw.Controls.Add(rBtns);

                        reviewSection.Controls.Add(reviw);
                    }
                }
            }
        }
    }
}