using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookReview.Models
{
    public class Book
    {
        public long bid { get; set; }
        public string book_cover { get; set; }
        public string title { get; set; }
        public string authors { get; set; }
        public string description { get; set; }
        public string year { get; set; }
        public int edition { get; set; }
        public string language { get; set; }
        public string publisher { get; set; }
        public string category { get; set; }
        public int? aid { get; set; }
        public long? ruid { get; set; }
        public int page { get; set; }
    }
}