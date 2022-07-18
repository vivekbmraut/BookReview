using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class userProfileView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            var reviewer = ReviewerService.Get(Convert.ToInt64(Request["ruid"]));
            if (reviewer != null)
            {
                profilePic.Style.Add("background-image", $"../user/profilePictures/{reviewer.profile_pic}");
                rName.InnerText = reviewer.name;
                rEmail.InnerText = reviewer.email;
                rTotalRev.InnerText = reviewer.total_reviews.ToString();
                rBlockRev.InnerText = reviewer.blocked_reviews.ToString();
                userRev.Attributes.Add("href", $"./userReviews.aspx?ruid={reviewer.ruid}");
                userBk.Attributes.Add("href", $"./userBooks.aspx?ruid={reviewer.ruid}");
            }
        }
    }
}