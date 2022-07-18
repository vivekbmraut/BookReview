<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="MyReviews.aspx.cs" Inherits="BookReview.user.MyReviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/MyReviews.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading">My <span class="ribbon">Reviews</span></h1>
    <div class="review-section" id="reviewSection" runat="server">

    </div>
</asp:Content>
