<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="BookReview.user.searchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./CSS/editBooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading">Relevant <span>Results</span></h1>
        <div class="book" id="bookContainer" runat="server">
            
        </div>
</asp:Content>
