#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using BookReview.Models;
using BookReview.Services;

namespace BookReview.Services
{
    public class BookServices
    {

        public static Book? Get(int bid)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select * from book where bid={bid};";
                MySqlDataReader red = (new MySqlCommand(query, conn)).ExecuteReader();
                if(red.Read())
                {
                    int ordinal;
                    Book book = new Book();
                    book.bid = red.GetInt64("bid");
                    book.book_cover = red.GetString("book_cover");
                    book.title = red.GetString("title");
                    book.authors = red.GetString("authors");
                    book.description = red.GetString("description");
                    book.year = red.GetString("year");
                    book.edition = red.GetInt32("edition");
                    book.language = red.GetString("language");
                    book.publisher = red.GetString("publisher");
                    book.category = red.GetString("category");

                    ordinal = red.GetOrdinal("aid");
                    if (red.IsDBNull(ordinal))
                        book.aid = 0;
                    else
                        book.aid = red.GetInt32("aid");
                    ordinal = red.GetOrdinal("ruid");
                    if (red.IsDBNull(ordinal))
                        book.ruid = 0;
                    else
                        book.ruid = red.GetInt64("ruid");
                    
                    book.page = red.GetInt32("page");
                    conn.Close();
                    return book;
                }
                conn.Close();
                return null;
            }
            catch(MySqlException ex)
            {
                return null;
            }   
        }

        public static long Add(Book book)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();

                //LOCK TABLE
                (new MySqlCommand("LOCK TABLES book WRITE", conn)).ExecuteNonQuery();

                object getPage = (new MySqlCommand("select page from book order by page limit 1;", conn)).ExecuteScalar();
                object countPage = (new MySqlCommand($"select count(page) from book where page={getPage};", conn)).ExecuteScalar();
                
                if (Convert.ToInt32(countPage) <= 10)
                {
                    book.page = Convert.ToInt32(getPage);
                }
                else
                {
                    book.page = Convert.ToInt32(getPage) + 1;
                }
                string query;
                if(book.ruid==0)
                {
                    query = $"insert into book values(NULL,\"default-cover.png\",\"{book.title}\",\"{book.authors}\",\"{book.description}\",\"{book.year}\",{book.edition},\"{book.language}\",\"{book.publisher}\",\"{book.category}\",{book.aid},NULL,{book.page});";
                }
                else
                {
                    query = $"insert into book values(NULL,\"default-cover.png\",\"{book.title}\",\"{book.authors}\",\"{book.description}\",\"{book.year}\",{book.edition},\"{book.language}\",\"{book.publisher}\",\"{book.category}\",NULL,{book.ruid},{book.page});";
                }
                
                var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                if(chkInsert==0)
                {
                    return 0;
                }
                string query2 = "select bid from book order by bid desc limit 1;";
                object bidInserted = (new MySqlCommand(query2, conn)).ExecuteScalar();

                //UNLOCK TABLE
                (new MySqlCommand("UNLOCK TABLES", conn)).ExecuteNonQuery();
                conn.Close();

                return Convert.ToInt64(bidInserted);
            }
            catch(MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return 0;
            }
        }
    }
}