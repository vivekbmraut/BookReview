<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="addBookAdmin.aspx.cs" Inherits="BookReview.admin.addBookAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/addBook.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="book-details">
        <div class="flogo"><i class="fa-solid fa-book"></i>Add Book</div>
     <form name="formBook" action="addBook.aspx" runat="server">
      <div class="title">
        <label>Title</label>
        <input type="text"  class="box" name="title" required>
      </div>
      <div class="author">
        <label>Author</label>
        <input type="text"  class="box" name="author" required>
      </div>
      <div class="description">
        <label>Description</label>
        <asp:TextBox TextMode="MultiLine" ID="bookDesc" CssClass="desc" Rows="5" Columns="65" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ErrorMessage="Description Required" CssClass="req-validator" ControlToValidate="bookDesc" Display="Dynamic" runat="server" />
      </div>
      <div class="year">
        <label>Publish Year</label>
        <input type="text"  class="box" name="year">
      </div>
      <div class="categories">
        <label>Category</label>
        <select name="categories" id="categories">
            <option value="Other">Other</option>
            <option value="Horror">Horror</option>
            <option value="Novel">Novel</option>
            <option value="Action">Action</option>
            <option value="Comedy">Comedy</option>
            <option value="History">History</option>
            <option value="Education">Education</option>
            <option value="Sports">Sports</option>
            <option value="Biography">Biography</option>
            <option value="Education">Education</option>
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
           <asp:Button Text="Submit" CssClass="sbt-btn" runat="server" />
      </form>
    </div>
</asp:Content>

