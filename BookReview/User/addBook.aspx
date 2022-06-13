<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="BookReview.user.addBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/addBook.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    
    <div class="book-details">
        <div class="flogo"><i class="fa-solid fa-book"></i>Add Book</div>
       <form name="formBook" action="#" runat="server">
      <div class="title">
        <label>Title</label>
        <input type="text" name="title">
      </div>
      <div class="author">
        <label>Author</label>
        <input type="text" name="author">
      </div>
      <div class="description">
        <label>Description</label>
        <asp:TextBox TextMode="MultiLine" Rows="5" Columns="65" runat="server"></asp:TextBox>
      </div>
      <div class="year">
        <label>Publish Year</label>
        <input type="text" name="year">
      </div>
      <div class="categories">
        <label>Categories</label>
        <select name="categories" id="categories">
            <option value="other">Other</option>
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
        <input type="number" name="edition">
      </div>
      <div class="publisher">
        <label>Publisher</label>
        <input type="text" name="publisher">
      </div>
           <asp:Button Text="Submit" CssClass="sbt-btn" runat="server" />
      </form>
    </div>
    
</asp:Content>
