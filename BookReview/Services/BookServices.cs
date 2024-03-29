﻿#nullable enable
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using BookReview.Models;
using BookReview.Services;
using System.IO;

namespace BookReview.Services
{
    public class BookServices
    {
        public static bool isPage(int page)
        {
            MySqlConnection conn = Connection.getConnectString();
            conn.Open();
            string query = $"select page from book where page={page}";
            object rdr = (new MySqlCommand(query, conn)).ExecuteScalar();
            conn.Close();
            if (rdr != null)
                return true;
            return false;
        }

        public static List<Book>? GetAllInPage(int page)
        {
            List<Book> books = new List<Book>();
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select bid,book_cover,title from book where page={page}";
                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                while(rdr.Read())
                {
                    books.Add(new Book() { bid = rdr.GetInt64("bid"), book_cover = rdr.GetString("book_cover"), title = rdr.GetString("title") });
                }
                rdr.Close();
                conn.Close();
                return books;
            }
            catch(MySqlException)
            {
                return null;
            }
        }

        public static List<Book>? GetAllInReviewer(long ruid)
        {
            List<Book> books = new List<Book>();
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select bid,book_cover,title from book where ruid={ruid}";
                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                while (rdr.Read())
                {
                    books.Add(new Book() { bid = rdr.GetInt64("bid"), book_cover = rdr.GetString("book_cover"), title = rdr.GetString("title") });
                }
                rdr.Close();
                conn.Close();
                return books;
            }
            catch (MySqlException)
            {
                return null;
            }
        }

        public static List<Book>? GetAllInSearch(string searchQuery)
        {
            List<Book> books = new List<Book>();
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select bid,book_cover,title from book where title like \'%{searchQuery}%\'";
                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                while (rdr.Read())
                {
                    books.Add(new Book() { bid = rdr.GetInt64("bid"), book_cover = rdr.GetString("book_cover"), title = rdr.GetString("title") });
                }
                rdr.Close();
                conn.Close();
                return books;
            }
            catch (MySqlException)
            {
                return null;
            }
        }

        public static List<Book>? GetAllInCategory(int cat)
        {
            string[] categories = {"Horror","Novel","Biography","Fiction","Comedy","Sports","History","Education","Other"};
            List<Book> books = new List<Book>();
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"select bid,book_cover,title from book where category=\"{categories[cat-1]}\";";
                MySqlDataReader rdr = (new MySqlCommand(query, conn)).ExecuteReader();
                while (rdr.Read())
                {
                    books.Add(new Book() { bid = rdr.GetInt64("bid"), book_cover = rdr.GetString("book_cover"), title = rdr.GetString("title") });
                }
                rdr.Close();
                conn.Close();
                return books;
            }
            catch (MySqlException)
            {
                return null;
            }
        }
        public static Book? Get(long bid)
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
            long bid=0;
            MySqlConnection conn = Connection.getConnectString();
            try
            {
                conn.Open();

                //LOCK TABLE
                (new MySqlCommand("LOCK TABLES book WRITE", conn)).ExecuteNonQuery();

                object getPage = (new MySqlCommand("select page from book order by page limit 1;", conn)).ExecuteScalar();
                object countPage = (new MySqlCommand($"select count(page) from book where page={getPage};", conn)).ExecuteScalar();

                if (Convert.ToInt32(countPage) < 10)
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
                if (chkInsert > 0)
                {

                    string query2 = "select bid from book order by bid desc limit 1;";
                    object bidInserted = (new MySqlCommand(query2, conn)).ExecuteScalar();
                    bid= Convert.ToInt64(bidInserted);
                }
                //UNLOCK TABLE
                (new MySqlCommand("UNLOCK TABLES", conn)).ExecuteNonQuery();
                conn.Close();

                return bid;
            }
            catch(MySqlException ex)
            {
                (new MySqlCommand("UNLOCK TABLES", conn)).ExecuteNonQuery();
                conn.Close();
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return 0;
            }
        }

        public static long Update(Book book)
        {
            try
            {
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query = $"update book set title=\"{book.title}\",authors=\"{book.authors}\",description=\"{book.description}\",year=\"{book.year}\",edition={book.edition},language=\"{book.language}\",publisher=\"{book.publisher}\",category=\"{book.category}\" where bid={book.bid};";
                var chkInsert = (new MySqlCommand(query, conn)).ExecuteNonQuery();
                conn.Close();
                if (chkInsert > 0)
                    return book.bid;
                return 0;
            }
            catch(MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return 0;
            }
        }

        public static bool Delete(long bid)
        {
            try
            {
                bool flag = false;
                MySqlConnection conn = Connection.getConnectString();
                conn.Open();
                string query1 = $"select book_cover,page from book where bid={bid}";
                MySqlDataReader rdr = (new MySqlCommand(query1, conn)).ExecuteReader();

                if (rdr.Read())
                {
                    int delPage = rdr.GetInt32("page");
                    string bookCoverPath = rdr.GetString("book_cover");
                    rdr.Close();
                    (new MySqlCommand("LOCK TABLES book WRITE", conn)).ExecuteNonQuery();

                    var chDel = (new MySqlCommand($"delete from book where bid={bid}", conn)).ExecuteNonQuery();
                    if (chDel > 0)
                    {
                        string query = $"select page from book where page={delPage+1}";
                        object rd = (new MySqlCommand(query, conn)).ExecuteScalar();
                        if (rd!=null)
                        {
                            string query2 = $"select bid from book order by bid desc limit 1;";
                            object lastBid = (new MySqlCommand(query2, conn)).ExecuteScalar();
                            var checkDel = new MySqlCommand($"update book set page={delPage} where bid={lastBid};", conn).ExecuteNonQuery();
                            if (checkDel > 0)
                                flag = true;
                        }
                    }
                (new MySqlCommand("UNLOCK TABLES", conn)).ExecuteNonQuery();
                }
                
                conn.Close();
                return flag;
            }
            catch(MySqlException ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.ToString());
                return false;
            }
        }
    }
}