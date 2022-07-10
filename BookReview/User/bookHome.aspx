<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="bookHome.aspx.cs" Inherits="BookReview.html.bookHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/bookHome.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <img src="/Images/book1u2-1.jpg" alt="not visible"  class="head-img"/>
    <div class="box-container">

        <h1 class="heading">Some <span>books</span></h1>
        <div class="book" id="bookContainer" runat="server">
            
            <div class="box">
                <img src="/Images/book1.jpg" alt="Alternate Text" class="book-cover" runat="server"/>
                <h3 class="book-title">Book Name</h3>
                <a href="./bookDetails.aspx" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book2.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book3.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book4.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book1.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book2.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            <div class="box">
                <img src="/Images/book3.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>

            
        </div>
        </div>
    
</asp:Content>
