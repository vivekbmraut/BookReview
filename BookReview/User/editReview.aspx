<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="editReview.aspx.cs" Inherits="BookReview.user.editReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/editReview.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
    <div class="flogo"><i class="fas fa-edit"></i>Edit Review</div>
    <div class="r-section">
      <div class="r-form">
      <form action="#" method="post">
        <textarea class="give-review" rows="5" cols="50" required></textarea><br/>
        <button type="submit" class="r-btn">Save Review</button>
      </form >
      </div>
      <div class="r-note">
        <p>Our Website provides total Freedom of Speech in review section feel free to write what you experienced while reading this particular book. Kindly avoid posting any advertisements in the review section surely its sure to get blocked.</p>
      </div>
    </div>
</asp:Content>
