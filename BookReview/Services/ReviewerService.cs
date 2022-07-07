using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using BookReview.Models;

namespace BookReview.Services
{
    public class ReviewerService
    {

        public static Boolean Add(Reviewer reviewer)
        {
            MySqlConnection conn = Connection.getConnectString();
            conn.Open();

            string query = $"insert into reviewer values(NULL,\"{reviewer.name}\",\"{reviewer.email}\",SHA2(\"{reviewer.password}\",224),\"{reviewer.profile_pic}\",{reviewer.total_reviews},{reviewer.blocked_reviews},{reviewer.is_suspended},{reviewer.page});";
            var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
            conn.Close();
            if (chkInsert==0)
            {
                return false;
            }
            return true;
            
        }

        public static bool isEmailRegistered(string email)
        { 
            MySqlConnection conn = Connection.getConnectString();
            conn.Open();
            string query = $"select ruid from reviewer where email=\"{email}\";";
            object red = (new MySqlCommand(query, conn)).ExecuteScalar();
            conn.Close();
            if (red!=null)
            {
                return true;
            }
            return false;
        }


    }
}