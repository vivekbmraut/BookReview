﻿#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;
using Admin = BookReview.Models.Admin;

namespace BookReview.admin
{
    public partial class adminProfileView : System.Web.UI.Page
    {
        Admin? admn;
        protected void Page_Load(object sender, EventArgs e)
        {
            admn = AdminService.Get(Convert.ToInt32(Session["aid"]));
            if (admn != null)
            {
                profilePic.Style.Add("background-image", $"url(./profilePictures/{admn.profile_pic})");
                adminName.InnerText = admn.name;
                adminEmail.InnerText = admn.email;
            }
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Upload();
        }
        protected void Upload()
        {
            if(imgFileUpload.HasFile)
            {
                string fileExt = System.IO.Path.GetExtension(imgFileUpload.FileName);
                if(fileExt.ToLower()!= ".jpg" && fileExt.ToLower() != ".jpeg" && fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".png")
                {
                    imgWarn.Style.Add("display", "block");
                }
                else
                {
                    string filePath = Server.MapPath("~/admin/profilePictures/");
                    imgFileUpload.SaveAs($"{filePath}{Session["aid"]}{fileExt.ToLower()}");
                    if(admn!=null)
                    {
                        admn.profile_pic = $"{Session["aid"]}{fileExt.ToLower()}";
                        AdminService.Update(admn);
                    }
                    Response.Redirect("adminProfileView.aspx");
                }
            }
        }
    }
}