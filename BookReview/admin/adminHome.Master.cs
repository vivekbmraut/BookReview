using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BookReview.admin
{
    public partial class adminHome : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["aid"]!=null)
           {
                try
                {
                    MySqlConnection conn =Connection.getConnectString();
                    conn.Open();
                    string query = $"select name,profile_pic from admin where aid=\"{Session["aid"]}\";";
                    MySqlCommand cmd= new MySqlCommand(query, conn);
                    MySqlDataReader red = cmd.ExecuteReader();
                    red.Read();
                    profilePic.Attributes.Add("src", $"./profilePictures/{red.GetString("profile_pic")}");
                    adminName.InnerText = red.GetString("name");
                    
                    red.Close();
                    conn.Close();
                }
                catch(MySqlException ex) { }

           }    
        }
    }
}