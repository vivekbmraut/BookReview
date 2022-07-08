using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using Connection = BookReview.Models.Connection;

namespace BookReview.user
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select ruid from reviewer where email=\"{Request.Form["ctl00$middle$EmailInput"]}\" and password=SHA2(\"{Request.Form["ctl00$middle$PasswordInput"]}\",224);";
                object red = (new MySqlCommand(query, conn)).ExecuteScalar();
                conn.Close();
                if (red!=null)
                {
                    Session["ruid"] = red.ToString();
                    Response.Redirect("./bookHome.aspx");
                }
                else
                {
                    ErrorDiv.Style.Add("display", "block");
                }

                
            }
        }
    }
}