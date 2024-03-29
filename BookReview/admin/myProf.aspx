﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="myProf.aspx.cs" Inherits="BookReview.admin.myProf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/adminProfileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="heading">Your<span class="ribbon">Profile</span></div>
    <div class="whole-div">
      <div class="info-div">
      <div class="profile-picture" style="background-image:url(./profilePictures/default.png)" id="profilePic" runat="server">
      </div>
      <div class="edit-pic">
        <form id="imageChange" runat="server">
            <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
            <label for="imgFileUpload" class="chose-btn">Change image</label><br />
            <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
        </form>
          <div class="img-warn" id="imgWarn" runat="server">Image should be of format .jpeg OR .jpg OR .png</div>
      </div>
      Name<br><span class="details" id="adminName" runat="server"></span><br/>
      Email<br><span class="details" id="adminEmail" runat="server"></span><br/>
    </div>
    </div>
    <script src="../JS/profileView.js"></script>
</asp:Content>
