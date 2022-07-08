<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="profileView.aspx.cs" Inherits="BookReview.user.profileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/profileView.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="whole-div">
      <div class="pic-div">
      <div class="profile-picture" style="background-image:url(./profilePictures/default.png)" id="profilePic" runat="server">
      </div>
      <div class="edit-pic">
        <form id="imageChange" runat="server">
            <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
            <label for="imgFileUpload" class="chose-btn">Change image</label><br />
            <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
        </form>
      </div>
          <div class="img-warn" id="imgWarn" runat="server">Image should be of format .jpeg OR .jpg OR .png</div>
    </div>
    <div class="info-div">
      Name<br><span class="details" id="rName" runat="server">ReviewerName</span><br/>
      Email<br><span class="details" id="rEmail" runat="server">reviewer@xyz.com</span><br/>
      Reviews given:<span id="rTotalRev" runat="server">4</span><br/>
      Blocked Reviews:<span id="rBlockRev" runat="server">2</span>
    </div>
      <a href="MyReviews.aspx" id="myRev" runat="server"><div class="ed-link">View Reviews</div></a>
      <a href="MyBooks.aspx" id="myBk" runat="server"><div class="ed-link">View Books</div></a>
      <a href="logout.aspx"><div class="logout">Logout</div></a>
    </div>
    <script src="../JS/profileView.js"></script>
</asp:Content>
