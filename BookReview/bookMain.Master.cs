using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookReview
{
    public partial class HomeBook : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ruid"] != null)
            {
                btn.Style.Add("color", "green");
                loginLink.Attributes.Add("href", "~/user/profileView.aspx");
            }
        }
    }
}