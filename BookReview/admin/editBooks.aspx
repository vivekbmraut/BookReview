<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="editBooks.aspx.cs" Inherits="BookReview.admin.WebForm1" %>
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
    
    <h1 class="heading">View<span class="ribbon">Books</span></h1>
    <a href="addBookAdmin.aspx"><div class="addbk-btn"><i class="fa-solid fa-plus"></i>Add Book</div></a>    
    <div class="book" id="bookContainer" runat="server">
            
        </div>
        <div class="page-btns">
        <a href="#" class="c-btn" id="prevBtn" runat="server">&lt prev</a> <a href="#" class="c-btn" id="nextBtn" runat="server">next &gt</a>
        </div>


</asp:Content>
