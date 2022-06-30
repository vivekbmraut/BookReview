using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class adminHome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["aid"]!=null)
           {
                var admin = AdminService.Get(Convert.ToInt32(Session["aid"]));
                if (admin != null)
                {
                    profilePic.Attributes.Add("src", "./profilePictures/"+admin.profile_pic);
                    adminName.InnerText = admin.name;
                }

           }    
        }
    }
}