using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Admin = BookReview.Models.Admin;
using BookReview.Services;

namespace BookReview.admin
{
    public partial class adminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Admin> admins = AdminService.Getall();
            if(admins!=null)
            {
                foreach(var ad in admins)
                {
                    HtmlGenericControl card = new HtmlGenericControl();
                    card.Attributes.Add("class", "admin-card");
                    
                    HtmlGenericControl cardPic = new HtmlGenericControl();
                    cardPic.Attributes.Add("class", "profile-image");
                    cardPic.Style.Add("display", "block");
                    cardPic.Style.Add("background-image", $"url(./profilePictures/{ad.profile_pic})");
                    
                    HtmlGenericControl cardName = new HtmlGenericControl();
                    cardName.Attributes.Add("class","ad-name");
                    cardName.InnerText = ad.name;
                    cardName.Style.Add("display", "block");
                    
                    HtmlGenericControl cardEmail = new HtmlGenericControl();
                    cardEmail.Attributes.Add("class", "ad-email");
                    cardEmail.InnerText = ad.email;
                    cardEmail.Style.Add("display", "block");

                    HtmlGenericControl cardBtns = new HtmlGenericControl();
                    cardBtns.Attributes.Add("class", "btn-section");
                    cardBtns.InnerHtml= "<a href=\"#\" class=\"ad-btns\">Delete</a>";
                    cardBtns.Style.Add("display", "block");
                    card.Controls.Add(cardPic);
                    card.Controls.Add(cardName);
                    card.Controls.Add(cardEmail);
                    card.Controls.Add(cardBtns);
                    adminCardContainer.Controls.Add(card);
                }
            }
            

        }
    }
}