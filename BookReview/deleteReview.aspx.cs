using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;

namespace BookReview.user
{
    public partial class deleteReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReviewsService.Delete(Convert.ToInt64(Request["revid"]));
            Response.Redirect($"bookDetails.aspx?bid={Request["bid"]}");
        }
    }
}