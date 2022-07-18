<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="addBookAdmin.aspx.cs" Inherits="BookReview.admin.addBookAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/addBook.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="searchAny" runat="server">
<form action="searchBook.aspx" method="get" class="search-form">
    <input type="search"  name="title" placeholder="search book by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
    <input type="submit" id="search-box" style="display:none" />
</form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="book-details">
        <div class="flogo"><i class="fa-solid fa-book"></i>Add Book</div>
     <form name="formBook" action="addBookAdmin.aspx" method="post" runat="server">
      <div class="title">
        <label>Title</label>
        <input type="text" class="box" name="title" required>
      </div>
      <div class="author">
        <label>Author</label>
        <input type="text"  class="box" name="authors" required>
      </div>
      <div class="description">
        <label>Description</label>
        <asp:TextBox TextMode="MultiLine" ID="bookDesc" CssClass="desc" Rows="5" Columns="65" runat="server"></asp:TextBox>
          
      </div>
      <div class="year">
        <label>Publish Year</label>
        <input type="text" id="pubYear" runat="server" class="box" name="year" required><br>
          <asp:RegularExpressionValidator ErrorMessage="Numeric 4 digit Year needed" CssClass="req-validator" ControlToValidate="pubYear" Display="Dynamic" ValidationExpression="[\d]{4}" runat="server" />
      </div>
      <div class="categories">
        <label>Category</label>
        <select id="category" name="category">
            <option value="Other">Other</option>
            <option value="Horror">Horror</option>
            <option value="Novel">Novel</option>
            <option value="Fiction">Fiction</option>
            <option value="Comedy">Comedy</option>
            <option value="History">History</option>
            <option value="Education">Education</option>
            <option value="Sports">Sports</option>
            <option value="Biography">Biography</option>
        </select> 
      </div>
      <div class="edition">
        <label>Edition</label>
        <input type="number" name="edition" required>
      </div>
      <div class="publisher">
        <label>Publisher</label>
        <input type="text" name="publisher">
      </div>
      <div class="publisher">
        <label>Language</label>
        <input type="text" name="language">
      </div>
           <asp:Button Text="Submit" CssClass="sbt-btn" runat="server" />
      </form>
    </div>
</asp:Content>

