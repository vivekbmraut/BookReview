using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Services;
using BookReview.Models;
using System.IO;
namespace BookReview.admin
{
    public partial class deleteBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] == null)
                Response.Redirect("Default.aspx");
            if (Request["bid"] != null)
            {
                long currbid = Convert.ToInt64(Request["bid"]);
                Book bk = BookServices.Get(currbid);
                BookServices.Delete(currbid);

                if (bk.book_cover != "default-cover.png") ;
                {
                    string Path = Server.MapPath("~/bookCovers/");
                    File.Delete(Path + bk.book_cover);
                }
            }
            Response.Redirect("editBooks.aspx");
        }
    }
}