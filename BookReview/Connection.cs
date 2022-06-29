using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace BookReview
{
    public class Connection
    {
        public static MySqlConnection getConnectString()
        {
            return new MySqlConnection("server=127.0.0.1;uid=Vivek;pwd=IWR1ICR!;database=book_review");
        }
    }
}