<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="adminProfileView.aspx.cs" Inherits="BookReview.admin.adminProfileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/adminProfileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div class="heading">Your<span class="ribbon">Profile</span></div>
    <div class="whole-div">
      <div class="info-div">
      <div class="profile-picture" style="background-image:url(./profilePictures/default.png)">
      </div>
      <div class="edit-pic">
        <form id="imageChange" runat="server">
            <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
            <label for="imgFileUpload" class="chose-btn">Change image</label><br />
            <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
        </form>
      </div>
      Name<br><span class="details">Vivek Raut</span><br/>
      Email<br><span class="details">vivek@gmail.com</span><br/>
    </div>
    </div>
    <script src="../JS/profileView.js"></script>
</asp:Content>
