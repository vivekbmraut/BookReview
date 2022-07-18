<%@     Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="BookReview.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="./CSS/category.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="middle" runat="server">
<div class="category">
     <div class="box">
                <img src="/Images/category1.jpg" alt="Alternate Text" />
                <h2 class="heading"><span>Horror</span></h2>
                <a href="./categorizedBooks.aspx?cat=1" class="btn">view</a>
            </div>

     <div class="box">
                <img src="/Images/category6.jfif" alt="Alternate Text" />
                <h2 class="heading"><span>Novel</span></h2>
                <a href="./categorizedBooks.aspx?cat=2" class="btn">view</a>
            </div>

     <div class="box">
                <img src="/Images/category7.jpg" alt="Alternate Text" />
                <h2 class="heading"><span>Biography</span></h2>
                <a href="./categorizedBooks.aspx?cat=3" class="btn">view</a>
            </div>

     <div class="box">
                <img src="/Images/category3.jpg" alt="Alternate Text" />
                <<h2 class="heading"><span>Fiction</span></h2>
                <a href="./categorizedBooks.aspx?cat=4" class="btn">view</a>
            </div>

     <div class="box">
                <img src="/Images/category4.jpg" alt="Alternate Text" />
                <h2 class="heading"><span>Comedy</span></h2>
                <a href="./categorizedBooks.aspx?cat=5" class="btn">view</a>
            </div>

     <div class="box">
                <img src="/Images/category5.jfif" alt="Alternate Text" />
               <h2 class="heading"><span>Sports</span></h2>
                <a href="./categorizedBooks.aspx?cat=6" class="btn">view</a>
         </div>

     <div class="box">
                <img src="/Images/category8.jpg" alt="Alternate Text" />
                <h2 class="heading"><span>History</span></h2>
                <a href="./categorizedBooks.aspx?cat=7" class="btn">view</a>
         </div>

     <div class="box">
                <img src="/Images/category10.jpg" alt="Alternate Text" />
                <h2 class="heading"><span>Education</span></h2>
                <a href="./categorizedBooks.aspx?cat=8" class="btn">view</a>
         </div>

     <div class="box">
                <img src="/Images/category9.png" alt="Alternate Text" />
                <h2 class="heading"><span>other</span></h2>
                <a href="./categorizedBooks.aspx?cat=9" class="btn">view</a>
         </div>
 </div>
</asp:Content>

