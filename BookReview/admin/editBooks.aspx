<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="editBooks.aspx.cs" Inherits="BookReview.admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/CSS/editbooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    
    <h1 class="heading">View<span class="ribbon">Books</span></h1>
    <a href="addBookAdmin.aspx"><div class="addbk-btn"><i class="fa-solid fa-plus"></i>Add Book</div></a>    
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
