<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="profileView.aspx.cs" Inherits="BookReview.user.profileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/profileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="whole-div">
      <div class="pic-div">
      <div class="profile-picture" style="background-image:url(./profilePictures/default.png)">
      </div>
      <div class="edit-pic">
        <form id="imageChange" runat="server">
            <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
            <label for="imgFileUpload" class="chose-btn">Change image</label><br />
            <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
        </form>
      </div>
    </div>
    <div class="info-div">
      Name<br><span class="details">Vivek Raut</span><br/>
      Email<br><span class="details">vivek@gmail.com</span><br/>
      Reviews given:<span>4</span><br/>
      Blocked Reviews:<span>2</span>
    </div>
      <a href="#"><div class="ed-link">View Reviews</div></a>
      <a href="#"><div class="ed-link">View Books</div></a>
      
    </div>
    <script src="../JS/profileView.js"></script>
</asp:Content>
