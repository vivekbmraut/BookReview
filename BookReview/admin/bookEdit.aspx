<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="bookEdit.aspx.cs" Inherits="BookReview.admin.bookEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/addBook.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
    <form action="searchBook.aspx" method="get" class="search-form">
    <input type="search"  name="title" placeholder="search book by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
    <input type="submit" id="search-box" style="display:none" />
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="book-details">
        <div class="flogo"><i class="fa-solid fa-book"></i>Edit Book</div>
     <form id="editBookForm" method="post" runat="server">
      <div class="title">
        <label>Title</label>
        <input type="text" class="box" name="title" id="bookTitle" runat="server" required>
      </div>
      <div class="author">
        <label>Author</label>
        <input type="text"  class="box" name="authors" id="bookAuthors" runat="server" required>
      </div>
      <div class="description">
        <label>Description</label> 
        <asp:TextBox TextMode="MultiLine" ID="bookDesc" CssClass="desc" Rows="5" Columns="65" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ErrorMessage="Description Required" CssClass="req-validator" ControlToValidate="bookDesc" Display="Dynamic" runat="server" />
      </div>
      <div class="year">
        <label>Publish Year</label>
        <input type="text"  class="box" name="year" id="bookYear" runat="server" required>
      </div>
      <div class="categories">
        <label>Category</label>
        <select name="category" id="bookCategory" runat="server">
            <option value="Other">Other</option>
            <option value="Horror">Horror</option>
            <option value="Novel">Novel</option>
            <option value="Action">Action</option>
            <option value="Comedy">Comedy</option>
            <option value="History">History</option>
            <option value="Education">Education</option>
            <option value="Sports">Sports</option>
            <option value="Biography">Biography</option>
        </select> 
      </div>
      <div class="edition">
        <label>Edition</label>
        <input type="number" name="edition" id="bookEdition" runat="server" required>
      </div>
      <div class="publisher">
        <label>Publisher</label>
        <input type="text" name="publisher" id="bookPublisher" runat="server">
      </div>
      <div class="publisher">
        <label>Language</label>
        <input type="text" name="language" id="bookLanguage" runat="server">
      </div>
           <asp:Button Text="Submit" CssClass="sbt-btn" runat="server" />
      </form>
    </div>

</asp:Content>
