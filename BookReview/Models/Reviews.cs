using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookReview.Models
{
    public class Reviews
    {
        public long revid { get; set; }
        public string review { get; set; }
        public string review_date { get; set; }
        public long reviewed_by { get; set; }
        public long review_for { get; set; }
        public int is_blocked { get; set; }
        public int block_activity { get; set; }
        public string reviewer_name { get; set; }
    }
}