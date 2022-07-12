<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="bookHome.aspx.cs" Inherits="BookReview.html.bookHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/bookHome.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <img src="/Images/book1u2-1.jpg" alt="not visible"  class="head-img"/>
    <div class="box-container">

        <h1 class="heading">Some <span>books</span></h1>
        <div class="book" id="bookContainer" runat="server">
            
        </div>
        <div class="page-btns">
        <a href="#" class="c-btn" id="prevBtn" runat="server">&lt prev</a> <a href="#" class="c-btn" id="nextBtn" runat="server">next &gt</a>
        </div>
        </div>
    
</asp:Content>
