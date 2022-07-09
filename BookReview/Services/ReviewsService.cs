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
                    reviw.review_date = rdr.GetString("review").Split(' ')[0];
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
                    System.Windows.Forms.MessageBox.Show(query);
                    var chkUpdate = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                    conn.Close();
                    if (chkUpdate > 0)
                        return true;

                }
                return false;
            }
            catch(MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return false;
            }
        }
    }
}