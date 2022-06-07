<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="adminView.aspx.cs" Inherits="BookReview.admin.adminView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/adminView.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="searchAny" runat="server">
<form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search admin by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="admin-container">
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://cdn.shopify.com/s/files/1/0253/8956/3978/files/passport_photo_Kristina_Pimenova.jpg?v=1592285068);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div class="btn-section">
          <a href="#" class="ad-btns"> Edit</a><a href="#" class="ad-btns"> Delete</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?k=20&m=1300512215&s=612x612&w=0&h=enNAE_K3bhFRebyOAPFdJtX9ru7Fo4S9BZUZZQD3v20=);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div class="btn-section">
          <a href="#" class="ad-btns"> Edit</a><a href="#" class="ad-btns"> Delete</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://st3.depositphotos.com/6462898/18271/i/600/depositphotos_182710514-stock-photo-passport-picture-asian-young-woman.jpg);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div class="btn-section">
          <a href="#" class="ad-btns"> Edit</a><a href="#" class="ad-btns"> Delete</a></div>
        </div>
      <div class="admin-card">
      <div class="profile-image" style="background-image: url(https://st2.depositphotos.com/2783505/7767/i/450/depositphotos_77676472-stock-photo-portrait-of-a-blonde-german.jpg);">
        </div>
        <div class="ad-name">Priya Carl</div>
        <div class="ad-email">p@gmail.com</div>
        <div class="btn-section">
          <a href="#" class="ad-btns"> Edit</a><a href="#" class="ad-btns"> Delete</a></div>
        </div>
        <a href=#><div class="admin-card"><i class="fa-solid fa-circle-plus"></i><h2>Add Admin</h2></div></a>
    </div>
</asp:Content>

