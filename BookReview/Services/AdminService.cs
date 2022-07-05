#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using Admin=BookReview.Models.Admin;
using Connection = BookReview.Models.Connection;
using System.Windows.Forms;

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

        public static Boolean isEmailRegistered(string email)
        {
            MySqlConnection conn = Connection.getConnectString();
            conn.Open();
            string sql = $"select aid from admin where email=\"{email}\"";
            object chkEntry = (new MySqlCommand(sql, conn)).ExecuteScalar();
            conn.Close();
            if(chkEntry==null)
            {
                return false;
            }
            return true;
        }

        public static Admin? Update(Admin admin)
        {
            var chk=Get(admin.aid);
            if(chk!=null)
            {
                try
                {
                    MySqlConnection conn = Connection.getConnectString();
                    conn.Open();
                    string query = $"update admin set name=\"{admin.name}\",email=\"{admin.email}\",profile_pic=\"{admin.profile_pic}\" ";
                    var chkUpdate=(new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if (chkUpdate==0)
                    {
                        return null;
                    }
                    var ad = Get(admin.aid);
                    return ad;
                }
                catch(MySqlException ex) { return null; }
            }

            return null;
        }

        public static Boolean Add(Admin admin)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"insert into admin values(NULL,\"{admin.name}\",\"{admin.email}\",SHA2(\"{admin.password}\",224),\"{admin.profile_pic}\")";
                
                var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkInsert==0)
                {
                    return false;
                }
                return true;
            }
            catch(MySqlException ex)
            { return false; }

        }
    }
}