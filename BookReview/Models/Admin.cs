
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace BookReview.Models
{
    public class Admin
    {
        public int aid { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string profile_pic { get; set; }
        public string password { get; set; }

    }
}