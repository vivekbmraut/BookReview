<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="BookReview.user.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./CSS/editbooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading">My <span class="ribbon">books</span></h1>
        <div class="book" id="bookContainer" runat="server">
            
        </div>
</asp:Content>
