using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace BookReview.admin
{
    public partial class loginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                try
                {
                    MySqlConnection conn;
                    MySqlCommand cmd;

                    conn = Models.Connection.getConnectString();
                    conn.Open();

                    string sql =$"select aid,email,password from admin where email=\"{Request.Form["EmailInput"]}\" and password=SHA2(\"{Request.Form["PasswordInput"]}\",224);";
                    cmd = new MySqlCommand(sql, conn);
                    MySqlDataReader red = cmd.ExecuteReader();
                    if (red.HasRows)
                    {
                        red.Read();
                        Session["aid"] = red.GetString("aid");
                        red.Close();
                        conn.Close();
                        Response.Redirect("adminView.aspx");
                    }
                    else
                    {
                        ErrorDiv.Style.Add("display", "block");
                    }
                }
                catch(MySqlException ex)
                {}
            }
        }
    }
}