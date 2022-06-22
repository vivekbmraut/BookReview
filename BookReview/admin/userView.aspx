<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="userView.aspx.cs" Inherits="BookReview.admin.userView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/userView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
    <form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search users by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="admin-container">
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://img.freepik.com/free-photo/passport-photo-portrait-asian-smiling-woman_264197-7635.jpg);">
        </div>
        <div class="ad-name">Anthony Mark</div>
        <div class="ad-email">p@gmail.com</div>
        <div  class="review"><span class="comment"><i class="fa-solid fa-message"></i>3</span> <span class="block"><i class="fa-solid fa-circle-xmark" ></i>2</span></div>
        <div class="btn-section">
          <a href="userProfileView.aspx" class="ad-btns">View</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://live.staticflickr.com/5023/5675214515_7046fbaf88_b.jpg);">
        </div>
        <div class="ad-name">Saiman Says</div>
        <div class="ad-email">p@gmail.com</div>
        <div  class="review"><span class="comment"><i class="fa-solid fa-message"></i>3</span> <span class="block"><i class="fa-solid fa-circle-xmark" ></i>2</span></div>
        <div class="btn-section">
          <a href="#" class="ad-btns">View</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://us.123rf.com/450wm/marctran/marctran1708/marctran170800509/83588077-passport-photo-of-asian-female-natural-look-healthy-skin.jpg?ver=6);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div  class="review"><span class="comment"><i class="fa-solid fa-message"></i>3</span> <span class="block"><i class="fa-solid fa-circle-xmark" ></i>2</span></div>
        <div class="btn-section">
          <a href="#" class="ad-btns">View</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://i.pinimg.com/474x/67/1c/30/671c30920b5cd5694d1ccac86c310efa--beauty-makeup-hair-and-makeup.jpg);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div  class="review"><span class="comment"><i class="fa-solid fa-message"></i>3</span> <span class="block"><i class="fa-solid fa-circle-xmark" ></i>2</span></div>
        <div class="btn-section">
          <a href="#" class="ad-btns">View</a></div>
        </div>
    </div>
</asp:Content>
