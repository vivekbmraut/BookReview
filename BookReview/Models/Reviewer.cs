using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookReview.Models
{
    public class Reviewer
    {
        public long ruid { get; set; }
        public string name { get; set; }
        public string email { get; set; }
        public string password { get; set; }
        public string profile_pic { get; set; }
        public long total_reviews { get; set; }
        public int blocked_reviews { get; set; }
        public int is_suspended { get; set; }
    }
}