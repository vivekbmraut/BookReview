#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Admin = BookReview.Models.Admin;
using BookReview.Services;
namespace BookReview.admin
{
    public partial class addAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                
                if (AdminService.isEmailRegistered(Request.Form["ctl00$middle$EmailInput"]))
                {
                    emailErr.Style.Add("display", "block");
                }
                else
                {
                    Admin ad = new Admin();
                    ad.name = Request.Form["ctl00$middle$NameInput"];
                    ad.email = Request.Form["ctl00$middle$EmailInput"];
                    ad.password = Request.Form["ctl00$middle$PasswordInput"];
                    ad.profile_pic = "default.png";
                    AdminService.Add(ad);
                    Response.Redirect("adminView.aspx");
                }
                /*foreach(var it in Request.Form.AllKeys)
                {
                    System.Windows.Forms.MessageBox.Show(it);
                }*/
            }
        }
    }
}