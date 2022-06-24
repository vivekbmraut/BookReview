<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="categorizedBooks.aspx.cs" Inherits="BookReview.user.categorizedBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/editbooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading"><span class="ribbon">HORROR</span></h1>
        <div class="book">
            <div class="box">
                <img src="/Images/book1.jpg" alt="Alternate Text" />
                <h3>Book Name</h3>
                <a href="bookDetails.aspx" class="btn">View</a>
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
                <img src="/bookCovers/default-cover.png" alt="Alternate Text" />
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
