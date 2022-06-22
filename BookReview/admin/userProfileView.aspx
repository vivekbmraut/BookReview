<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="userProfileView.aspx.cs" Inherits="BookReview.admin.userProfileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/profileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
    <form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search users by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="whole-div">
      <div class="pic-div">
      <div class="profile-picture" style="background-image:url(../user/profilePictures/default.png)">
      </div>
    </div>
    <div class="info-div">
      Name<br><span class="details">Vivek Raut</span><br/>
      Email<br><span class="details">vivek@gmail.com</span><br/>
      Reviews given:<span>4</span><br/>
      Blocked Reviews:<span>2</span>
    </div>
      <a href="userReviews.aspx"><div class="ed-link">View Reviews</div></a>
      <a href="userBooks.aspx"><div class="ed-link">View Books</div></a>
      
    </div>
</asp:Content>
