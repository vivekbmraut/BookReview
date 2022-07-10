#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BookReview.Models;
using MySql.Data.MySqlClient;

namespace BookReview.Services
{
    public class ReviewsService
    {

        public static List<Reviews>? GetByBook(long bid)
        {
            try
            {
                List<Reviews> bookReviews = new List<Reviews>();
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select * from reviews where review_for={bid};";

                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                while (rdr.Read())
                {
                    bookReviews.Add(new Reviews() { revid = rdr.GetInt64("revid"), review = rdr.GetString("review"), review_date = rdr.GetString("review_date").Split(' ')[0], review_for = rdr.GetInt64("review_for"), is_blocked = rdr.GetInt32("is_blocked"), reviewer_name = rdr.GetString("reviewer_name"),reviewed_by=rdr.GetInt64("reviewed_by") });
                }
                rdr.Close();
                conn.Close();
                return bookReviews;
            }
            catch(MySqlException ex)
            {
                
                return null; 
            }
        }

        public static Reviews? GetById(long revid)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select * from reviews where revid={revid}";
                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                if (rdr.Read())
                {
                    Reviews reviw = new Reviews();
                    reviw.revid = rdr.GetInt64("revid");
                    reviw.review = rdr.GetString("review");
                    reviw.review_date = rdr.GetString("review_date").Split(' ')[0];
                    reviw.reviewed_by = rdr.GetInt64("reviewed_by");
                    reviw.review_for = rdr.GetInt64("review_for");
                    reviw.is_blocked = rdr.GetInt16("is_blocked");
                    reviw.reviewer_name = rdr.GetString("reviewer_name");
                    var ordinal = rdr.GetOrdinal("block_activity");
                    if (rdr.IsDBNull(ordinal))
                        reviw.block_activity = 0;
                    else
                        reviw.block_activity = rdr.GetInt32("block_activity");

                    rdr.Close();
                    conn.Close();
                    return reviw;
                }
                else
                    return null;
            }
            catch (MySqlException ex)
            {
                return null;
            }
        }
        
        public static bool Add(Reviews revew )
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"insert into reviews values(NULL,\"{revew.review}\",\"{revew.review_date}\",\"{revew.reviewed_by}\",{revew.review_for},{revew.is_blocked},{revew.block_activity},\"{revew.reviewer_name}\");";
                var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkInsert > 0)
                    return true;
                return false;
            }
            catch(MySqlException ex)
            {
                
                return false;
            }

        }

        public static bool Update(Reviews reviw)
        {
            try
            {
                var chkId = GetById(reviw.revid);
                if (chkId != null)
                {
                    MySqlConnection conn = Connection.getConnectString();
                    conn.Open();

                    string query = $"update reviews set review=\"{reviw.review}\",review_date=\"{reviw.review_date}\" where revid={reviw.revid};";
                    var chkUpdate = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if (chkUpdate > 0)
                        return true;

                }
                return false;
            }
            catch(MySqlException ex)
            {
                
                return false;
            }
        }

        public static bool Delete(long revid)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"delete from reviews where revid={revid};";
                var chkDlt = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkDlt > 0)
                    return true;
                return false;

            }
            catch(MySqlException ex)
            {
                return false;
            }
        }
    }
}