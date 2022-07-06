<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="adminView.aspx.cs" Inherits="BookReview.admin.adminView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/adminView.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="searchAny" runat="server">
<form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search admin by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="admin-container" id="adminCardContainer" runat="server">
        <a href="addAdmin.aspx" class="admin-card add"><i class="fa-solid fa-circle-plus"></i><h2>Add Admin</h2></a>
    </div>
</asp:Content>

