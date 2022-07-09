<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="uploadBookCover.aspx.cs" Inherits="BookReview.user.uploadBookCover" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/coverUpload.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="book-cover-page">
        <div class="flogo"><i class="fa-solid fa-book"></i>Add Cover</div>
        <img src="~/bookCovers/default-cover.png" class="book-img" id="bookCover" runat="server"/>
        <form id="coverUpload" runat="server">
                <asp:FileUpload ID="imgFileUpload" ClientIDMode="Static" CssClass="file-upload" runat="server" Text="Choose File" />
                <label for="imgFileUpload" class="chose-btn">Change cover</label><br />
                <asp:Button ID="btnUpload" CssClass="save-btn" runat="server" Text="Save Image" OnClick="btnUpload_Click" />
        </form>
        <a href="#" class="skip-btn" id="skipBtn" runat="server">Skip &gt</a>
        <div class="img-warn" id="imgWarn" runat="server">Image should be of format .jpeg OR .jpg OR .png</div>
    </div>
    <script src="../JS/bookDetailsAdmin.js"></script>
</asp:Content>
