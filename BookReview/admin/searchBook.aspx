<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="BookReview.admin.searchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/editBooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
<form action="searchBook.aspx" method="get" class="search-form">
    <input type="search"  name="title" placeholder="search book by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
    <input type="submit" id="search-box" style="display:none" />
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading">Relevant <span>Results</span></h1>
        <div class="book" id="bookContainer" runat="server">
            
        </div>
</asp:Content>
