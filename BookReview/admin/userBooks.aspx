<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="userBooks.aspx.cs" Inherits="BookReview.admin.userBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/CSS/editbooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
    <form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search book by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading"><span id="userName" runat="server">Vivek's</span> <span class="ribbon">books</span></h1>
        <div class="book">
            <div class="box">
                <img src="/Images/book1.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="./bookDetailsAdmin.aspx" class="btn">View</a>
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

            <div class="box">
                <img src="/Images/book4.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="#" class="btn">View</a>
            </div>
        </div>
</asp:Content>
