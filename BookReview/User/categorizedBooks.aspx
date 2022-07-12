<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="categorizedBooks.aspx.cs" Inherits="BookReview.user.categorizedBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/editBooks.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading"><span class="ribbon" id="catRibbon" runat="server"></span></h1>
        <div class="book" id="bookContainer" runat="server">
            
        </div>
</asp:Content>
