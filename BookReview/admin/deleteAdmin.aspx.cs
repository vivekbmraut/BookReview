using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;
using System.IO;
namespace BookReview.admin
{
    public partial class deleteAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["aid"] != null)
            {
                int currAid = Convert.ToInt32(Request["aid"]);
                var admn = AdminService.Get(currAid);
                var chk = AdminService.Delete(currAid);
                if(chk==true && (admn.profile_pic!="default.png"))
                {
                    File.Delete(admn.profile_pic);
                }
                Response.Redirect("adminView.aspx");
            }
        }
    }
}