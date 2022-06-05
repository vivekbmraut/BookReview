<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="bookDetails.aspx.cs" Inherits="BookReview.html.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/bookDisplay.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="about-book">
        <div class="book-cover">
            <img src="../Images/Scala.jpg" />
        </div>
        <div class="book-desc">
            <h2 class="name">Scala for the Impatient </h2>
            <h4 class="author">Cay S. Horstmann</h4>
            <p class="summary">
                Interest in the Scala programming language continues to grow for many reasons. Scala embraces the functional programming style without abandoning the object-oriented paradigm, and it allows you to write programs more concisely than in Java. Because Scala runs on the JVM, it can access any Java library and is interoperable with familiar Java frameworks. Scala also makes it easier to leverage the full power of concurrency.<br />
                Written for experienced Java, C++, or C# programmers who are new to Scala or functional programming, Scala for the Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples and hands-on activities guide you through well-defined stages of competency, from basic to expert.<br />
                The Impatient, Second Edition, introduces the key Scala concepts and techniques you need in order to be productive quickly. It is the perfect introduction to the language, particularly for impatient readers who want to learn the fundamentals of Scala so they can start coding quickly. It doesn’t attempt to exhaustively list all the features of the language or make you suffer through long and contrived examples. Instead, carefully crafted examples and hands-on activities guide you through well-defined stages of competency, from basic to expert.
            </p>
            <div class="general">
                <div class="book-property property-category">
                    <div class="property-label">Categories:  <span class="property-value">Computer-Programming</span></div>
                </div>
                <div class="book-property property-year">
                    <div class="property-label">Year:  <span class="property-value">2016</span></div>
                </div>
                <div class="book-property property-edition">
                    <div class="property-label">Edition:  <span class="property-value">2nd</span></div>
                </div>
                <div class="book-property property-langauge">
                    <div class="property-label">Language:  <span class="property-value">English</span></div>
                </div>
                <div class="book-property property-publisher">
                    <div class="property-label">Publisher:  <span class="property-value">Addison-Wesley</span></div>
                </div>
            </div>
        </div>
    </div>
    <div class="review-section">
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <h4>25/06/2022</h4>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <h4>25/06/2022</h4>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <h4>25/06/2022</h4>
        </div>
        <div class="review">
            <h2>Vivek Raut</h2>
            <p>
                Good Book Read it later
            </p>
            <h4>25/06/2022</h4>
        </div>

    </div>
    <div class="r-section">
      <div class="r-form">
      <form action="#" runat="server">
        <asp:TextBox CssClass="give-review" TextMode="MultiLine" Rows="5" Columns="50" runat="server"></asp:TextBox><br/>
        <asp:Button type="submit" CssClass="r-btn" runat="server" Text="Post Review"/><span class="warn">Should be Logged in to write review</span>
      </form >
      </div>
      <div class="r-note">
        <p>Our Website provides total Freedom of Speech in review section feel free to write what you experienced while reading this particular book. Kindly avoid posting any advertisements in the review section surely its sure to get blocked.</p>
      </div>
    </div>
</asp:Content>
