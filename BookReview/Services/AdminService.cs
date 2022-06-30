#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using Admin=BookReview.Models.Admin;
using Connection = BookReview.Models.Connection;


namespace BookReview.Services
{
    public class AdminService
    {
        public static Admin? Get(int id)
        {
            Admin a = new Admin();
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                MySqlCommand cmd = new MySqlCommand($"select * from admin where aid={id}", conn);
                MySqlDataReader red = cmd.ExecuteReader();
                if (!red.HasRows)
                {
                    red.Close();
                    conn.Close();
                    return null;
                }
                red.Read();
                a.aid = Convert.ToInt32(red.GetString("aid"));
                a.name = red.GetString("name");
                a.email = red.GetString("email");
                a.profile_pic = red.GetString("profile_pic");
                red.Close();
                conn.Close();
            }
            catch(MySqlException ex) {
                return null;
            }
            return a;
        }
    }
}