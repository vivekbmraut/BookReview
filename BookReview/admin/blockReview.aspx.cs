using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;


namespace BookReview.admin
{
    public partial class blockReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            ReviewsService.toggleBlock(Convert.ToInt64(Request["revid"]),Convert.ToInt32(Session["aid"]));
            Response.Redirect($"bookDetailsAdmin.aspx?bid={Request["bid"]}");
        }
    }
}