using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Reviewer = BookReview.Models.Reviewer;
using BookReview.Services;


namespace BookReview.html
{
    public partial class registerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                if(ReviewerService.isEmailRegistered(Request.Form["ctl00$middle$EmailInput"]))
                {
                    emailErr.Style.Add("display", "block");
                }
                else
                {
                    Reviewer reviewer = new Reviewer();
                    reviewer.name = Request.Form["ctl00$middle$NameInput"];
                    reviewer.email = Request.Form["ctl00$middle$EmailInput"];
                    reviewer.password = Request.Form["ctl00$middle$PasswordInput"];
                    reviewer.profile_pic = "default.png";
                    reviewer.total_reviews = 0;
                    reviewer.blocked_reviews = 0;
                    reviewer.is_suspended = 0;
                    var chk=ReviewerService.Add(reviewer);
                    if(chk)
                    {
                        Response.Redirect("./login.aspx");
                    }
                }
            }
        }
    }
}