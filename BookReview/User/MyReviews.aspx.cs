using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using BookReview.Services;

namespace BookReview.user
{
    public partial class MyReviews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ruid"] != null)
            {
                long currRuid = Convert.ToInt64(Session["ruid"]);
                var reviews = ReviewsService.GetByReviewer(currRuid);
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

                        if (revew.is_blocked==0)
                        {
                            HtmlGenericControl rBtns = new HtmlGenericControl();
                            rBtns.Attributes.Add("class", "r-btns");
                            rBtns.InnerHtml = $"<a href=\"editReview.aspx?revid={revew.revid}\" class=\"rcntl-btn\">Edit</a><a href = \"deleteReview.aspx?revid={revew.revid}&bid={revew.review_for}\" class=\"rcntl-btn\">Delete</a> <a href=\"bookDetails.aspx?bid={revew.review_for}\">Source</a>";
                            reviw.Controls.Add(rBtns);
                        }

                        reviewSection.Controls.Add(reviw);
                        
                    }
                }
            }
        }
    }
}