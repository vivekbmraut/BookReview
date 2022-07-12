<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="bookDetailsAdmin.aspx.cs" Inherits="BookReview.admin.bookDetailsAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/CSS/bookDetailsAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
     <div class="about-book">
        <div class="book-cover">
            <img src="../Images/Scala.jpg" id="bookCover" runat="server" class="book-img"/>
            <form id="imgUploadForm" runat="server">
                <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
                <label for="imgFileUpload" class="chose-btn">Change cover</label><br />
                <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
            </form>
            <div class="img-warn" id="imgWarn" runat="server">Image should be of format .jpeg OR .jpg OR .png</div>
        </div>
        <div class="book-desc">
            <h2 class="name" id="title" runat="server">Scala for the Impatient </h2>
            <h4 class="author" id="authors" runat="server">Cay S. Horstmann</h4>
            <p class="summary" id="description" runat="server">
                
                
            </p>
            <div class="general">
                <div class="book-property property-category">
                    <div class="property-label">Categories:  <span class="property-value" id="category" runat="server"></span></div>
                </div>
                <div class="book-property property-year">
                    <div class="property-label">Year:  <span class="property-value" id="year" runat="server"></span></div>
                </div>
                <div class="book-property property-edition">
                    <div class="property-label">Edition:  <span class="property-value" id="edition" runat="server"></span></div>
                </div>
                <div class="book-property property-langauge">
                    <div class="property-label">Language:  <span class="property-value" id="language" runat="server"></span></div>
                </div>
                <div class="book-property property-publisher">
                    <div class="property-label">Publisher:  <span class="property-value" id="publisher" runat="server"></span></div>
                </div>
            </div>
        </div>
    </div>

    <div class="btngrp">
            <a href="#" class="btn" id="editBtn" runat="server">Edit Details<i class="fa-solid fa-pen"></i></a>
            <a href="#" class="btn">Delete Book<i class="fa-solid fa-trash-can"></i></a>
    </div>

    <div class="review-section" id="reviewSection" runat="server">
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
    
    <script src="../JS/bookDetailsAdmin.js"></script>
</asp:Content>
