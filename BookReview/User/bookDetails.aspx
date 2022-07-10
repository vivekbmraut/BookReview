<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="bookDetails.aspx.cs" Inherits="BookReview.html.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/bookDisplay.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="about-book">
        <div class="book-cover" >
            <img src="~/bookCovers/default-cover.png"  id="bookCover" runat="server"/>
        </div>
        <div class="book-desc">
            <h2 class="name" id="title" runat="server">Title </h2>
            <h4 class="author" id="authors" runat="server">Author</h4>
            <p class="summary" id="description" runat="server">
                Desc
                
            </p>
            <div class="general">
                <div class="book-property property-category">
                    <div class="property-label">Categories:  <span class="property-value" id="category" runat="server"></span></div>
                </div>
                <div class="book-property property-year">
                    <div class="property-label">Year:  <span class="property-value" id="year" runat="server">0000</span></div>
                </div>
                <div class="book-property property-edition">
                    <div class="property-label">Edition:  <span class="property-value" id="edition" runat="server">1</span></div>
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
    <div class="review-section" id="reviewSection" runat="server">
        <div class="review">
            <h2 class="reviewer-name">Vivek Raut</h2>
            <p class="r-text">
                Good Book Read it later
            </p>
            <span class="date">25/06/2022</span> 
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <span class="date">25/06/2022</span>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
                Written for experienced Java, C++, or C# programmers who are new to Scala or functional programming, Scala for the Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples and hands-on activities guide you through well-defined stages of competency, from basic to expert
            </p>
            <span class="date">25/06/2022</span>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
               Written for experienced Java, C++, or C# programmers who are new to Scala or functional programming, Scala for the Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples 
            </p>
            <span class="date">25/06/2022</span>
            <span class="r-btns">
                <a href="#" class="rcntl-btn">Edit</a>
                <a href="#" class="rcntl-btn">Delete</a>
            </span>
        </div>

    </div>
    <div class="r-section">
      <div class="r-form">
      <form action="#" method="post" id="giveRForm" runat="server">
        <textarea class="give-review" rows="5" cols="50" id="revTextArea" runat="server" required></textarea><br/>
        <button type="submit" class="r-btn" id="revBtn" runat="server">Post Review</button><span class="warn">Should be Logged in to write review</span>
      </form >
      </div>
      <div class="r-note">
        <p>Our Website provides total Freedom of Speech in review section feel free to write what you experienced while reading this particular book. Kindly avoid posting any advertisements in the review section surely its sure to get blocked.</p>
      </div>
    </div>
</asp:Content>
