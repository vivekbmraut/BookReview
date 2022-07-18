using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reviewer = BookReview.Models.Reviewer;
using BookReview.Services;

namespace BookReview.user
{
    public partial class profileView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var reviewer = ReviewerService.Get(Convert.ToInt64(Session["ruid"]));
            if (reviewer != null)
            {
                profilePic.Style.Add("background-image", $"./profilePictures/{reviewer.profile_pic}");
                rName.InnerText = reviewer.name;
                rEmail.InnerText = reviewer.email;
                rTotalRev.InnerText = reviewer.total_reviews.ToString();
                rBlockRev.InnerText = reviewer.blocked_reviews.ToString();
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
                    var rev = ReviewerService.Get(Convert.ToInt64(Session["ruid"]));
                    if (rev != null)
                    {
                        string filePath = Server.MapPath("~/user/profilePictures/");
                        imgFileUpload.SaveAs($"{filePath}{Session["ruid"]}{fileExt.ToLower()}");
                        rev.profile_pic = $"{Session["ruid"]}{fileExt.ToLower()}";
                        ReviewerService.Update(rev);
                    }
                    Response.Redirect("profileView.aspx");
                }
            }
        }
    }
}