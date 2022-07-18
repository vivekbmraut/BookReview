<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="userProfileView.aspx.cs" Inherits="BookReview.admin.userProfileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/profileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
    <form action="searchBook.aspx" method="get" class="search-form">
        <input type="search"  name="title" placeholder="search book by name" />
        <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
        <input type="submit" id="search-box" style="display:none" />
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="whole-div">
      <div class="pic-div">
      <div class="profile-picture" id="profilePic" runat="server" style="background-image:url(../user/profilePictures/default.png)">
      </div>
    </div>
    <div class="info-div">
      Name<br><span class="details" id="rName" runat="server">Vivek Raut</span><br/>
      Email<br><span class="details" id="rEmail" runat="server">vivek@gmail.com</span><br/>
      Reviews given:<span id="rTotalRev" runat="server">4</span><br/>
      Blocked Reviews:<span id="rBlockRev" runat="server">2</span>
    </div>
      <a href="userReviews.aspx" id="userRev" runat="server"><div class="ed-link">View Reviews</div></a>
      <!--<a href="userBooks.aspx" id="userBk" runat="server"><div class="ed-link">View Books</div></a>-->
      
    </div>
</asp:Content>
