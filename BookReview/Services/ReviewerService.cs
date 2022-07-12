#nullable enable
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
        public static Reviewer? Get(long ruid)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select * from reviewer where ruid={ruid};";

                MySqlDataReader red = (new MySqlCommand(query, conn)).ExecuteReader();

                if (red.HasRows == false)
                {
                    red.Close();
                    conn.Close();
                    return null;
                }
                red.Read();
                Reviewer reviewer = new Reviewer();
                reviewer.ruid = red.GetInt64("ruid");
                reviewer.name = red.GetString("name");
                reviewer.email = red.GetString("email");
                reviewer.profile_pic = red.GetString("profile_pic");
                reviewer.total_reviews = red.GetInt64("total_reviews");
                reviewer.blocked_reviews = red.GetInt32("blocked_reviews");
                reviewer.is_suspended = red.GetInt32("is_suspended");
                reviewer.page = red.GetInt32("page");

                red.Close();
                conn.Close();
                return reviewer;
            }
            catch (MySqlException ex)
            {
                return null;
            }
        }

        public static string GetName(long ruid)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select name from reviewer where ruid={ruid};";
                object rdr = (new MySqlCommand(query, conn)).ExecuteScalar();
                conn.Close();
                if (rdr == null)
                    return "";
                return rdr.ToString();
            }
            catch (MySqlException ex)
            {
                return "";
            }
        }
       
        public static Boolean Add(Reviewer reviewer)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();


                //LOCK reviewer
                (new MySqlCommand("Lock Tables reviewer WRITE",conn)).ExecuteNonQuery();
                
                object getPage=(new MySqlCommand("select page from reviewer order by page limit 1;",conn)).ExecuteScalar();
                object countPage= (new MySqlCommand($"select count(page) from reviewer where page={getPage};", conn)).ExecuteScalar();
                if(Convert.ToInt32(countPage)<=10)
                {
                    reviewer.page = Convert.ToInt32(getPage);
                }
                else
                {
                    reviewer.page = Convert.ToInt32(getPage)+1;
                }
                string query = $"insert into reviewer values(NULL,\"{reviewer.name}\",\"{reviewer.email}\",SHA2(\"{reviewer.password}\",224),\"{reviewer.profile_pic}\",{reviewer.total_reviews},{reviewer.blocked_reviews},{reviewer.is_suspended},{reviewer.page});";
                var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                
                (new MySqlCommand("UNLOCK TABLES", conn)).ExecuteNonQuery();
               //TABLES UNLOCKED


                conn.Close();
                if (chkInsert == 0)
                {
                    return false;
                }
                return true;
            }
            catch(MySqlException ex)
            {
                return false;
            }
            
        }

        public static Reviewer? Update(Reviewer reviewer)
        {
            var chk = Get(reviewer.ruid);
            if(chk!=null)
            {
                try
                {
                    MySqlConnection conn = Connection.getConnectString();
                    conn.Open();
                    string query = $"update reviewer set name=\"{reviewer.name}\",email=\"{reviewer.email}\",profile_pic=\"{reviewer.profile_pic}\",total_reviews={reviewer.total_reviews},blocked_reviews={reviewer.blocked_reviews} where ruid={reviewer.ruid};";
                    var chkUpdate = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if(chkUpdate==0)
                    {
                        return null;
                    }
                    var rev = Get(reviewer.ruid);
                    return rev;
                }
                catch(MySqlException ex)
                {
                    return null;
                }
            }
            return null;
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

        public static bool blockCntUpdt(int blkCnt,long ruid)
        {
            try
            {

                Boolean is_sus = false;
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query1 = $"select blocked_reviews from reviewer where ruid={ruid};";
                object rdr = (new MySqlCommand(query1, conn)).ExecuteScalar();
                int blkTtl = Convert.ToInt32(rdr);
                blkTtl += blkCnt;
                if (blkTtl >= 3)
                    is_sus = true;
                string query2 = $"update reviewer set is_suspended={is_sus},blocked_reviews={blkTtl} where ruid={ruid}";
                var chkUpDate = (new MySqlCommand(query2, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkUpDate > 0)
                    return true;
                return false;
            }
            catch(MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return false;
            }
        }

        public static bool totalRevUpdt(int TtlCnt,long ruid)
        {
            try
            {   
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query1 = $"select total_reviews from reviewer where ruid={ruid};";
                object rdr = (new MySqlCommand(query1, conn)).ExecuteScalar();
                int TtlRev = Convert.ToInt32(rdr);
                TtlRev += TtlCnt;
                string query2 = $"update reviewer set total_reviews={TtlRev} where ruid={ruid};";
                var chkUpDate = (new MySqlCommand(query2, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkUpDate > 0)
                    return true;
                return false;
            }
            catch (MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return false;
            }
        }

    }
}