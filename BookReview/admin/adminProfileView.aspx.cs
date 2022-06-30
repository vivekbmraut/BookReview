using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class adminProfileView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var admin = AdminService.Get(Convert.ToInt32(Session["aid"]));
            if (admin != null)
            {
                profilePic.Style.Add("background-image", $"url(./profilePictures/{admin.profile_pic})");
                adminName.InnerText = admin.name;
                adminEmail.InnerText = admin.email;
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {

        }
    }
}