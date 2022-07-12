using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BookReview.Models;
using MySql.Data.MySqlClient;

namespace BookReview.user
{
    public partial class uploadBookCover : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            skipBtn.HRef = $"bookDetails.aspx?bid={Request["bid"]}";   
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if(Request["bid"]!=null)
            {
                Upload();
            }

        }

        protected void Upload()
        {
            if (imgFileUpload.HasFile)
            {
                string fileExt = System.IO.Path.GetExtension(imgFileUpload.FileName);
                if (fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".jpeg" && fileExt.ToLower() != ".jpg" && fileExt.ToLower() != ".png")
                {
                    imgWarn.Style.Add("display", "block");
                }
                else
                {
                    string filePath = Server.MapPath("~/bookCovers/");
                    imgFileUpload.SaveAs($"{filePath}{Request["bid"]}{fileExt.ToLower()}");
                    MySqlConnection conn = Connection.getConnectString();
                    conn.Open();
                    string query = $"update book set book_cover=\"{Request["bid"] + fileExt.ToLower()}\" where bid={Request["bid"]};";
                    var chkUpdate = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if (chkUpdate > 0)
                    {
                        Response.Redirect($"bookDetails.aspx?bid={Request["bid"]}");
                    }
                }
            }
        }
    }
}