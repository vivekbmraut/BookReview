<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="userReviews.aspx.cs" Inherits="BookReview.admin.userReviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/userReviews.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
<form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search users by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <h1 class="heading"><span id="userName" runat="server">Vivek's</span> <span class="ribbon">Reviews</span></h1>
    <div class="review-section">
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <span class="date">25/06/2022</span> 
            <span class="r-btns">
                <a href="#" class="rcntl-btn">Block</a>
            </span>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <span class="date">25/06/2022</span>
            <span class="r-btns">
                <a href="#" class="rcntl-btn">Block</a>
            </span>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
                Written for experienced Java, C++, or C# programmers who are new to Scala or functional programming, Scala for the Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples and hands-on activities guide you through well-defined stages of competency, from basic to expert
            </p>
            <span class="date">25/06/2022</span>
            <span class="r-btns">
                <a href="#" class="rcntl-btn">Block</a>
            </span>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
               Written for experienced Java, C++, or C# programmers who are new to Scala or functional programming, Scala for the Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples 
            </p>
            <span class="date">25/06/2022</span>
            <span class="r-btns">
                <a href="#" class="rcntl-btn">Block</a>
            </span>
        </div>

    </div>

</asp:Content>
