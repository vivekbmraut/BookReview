using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reviews = BookReview.Models.Reviews;
using BookReview.Services;


namespace BookReview.user
{
    public partial class editReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            editForm.Attributes.Add("action", $"editReview.aspx?revId={Request["revid"]}");
            if (IsPostBack)
            {
                var reviw = ReviewsService.GetById(Convert.ToInt64(Request["revid"]));
                if (reviw != null)
                {
                    DateTime date = DateTime.Now;
                    string dt = date.ToString("yyyy-MM-dd");
                    reviw.review_date = dt;
                    reviw.review = Request.Form["ctl00$middle$editedReview"];
                    ReviewsService.Update(reviw);
                    Response.Redirect($"bookDetails.aspx?bid={reviw.review_for}");

                }
            }
            else
            {
                var reviw = ReviewsService.GetById(Convert.ToInt64(Request["revid"]));
                if (reviw != null)
                {
                    editedReview.InnerText = reviw.review;
                }
            }
        }
    }
}