<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="BookReview.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/category.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="middle" runat="server">
    
<div class="category">
            <div class="box">
                <img src="/Images/category2.jpg" alt="Alternate Text" />
                <h3>Horror</h3>
                <a href="./bookDetails.aspx" class="btn">view</a>
            </div>

        <div class="box">
                <img src="/Images/category3.jpg" alt="Alternate Text" />
                <h3>Action</h3>
                <a href="./bookDetails.aspx" class="btn">view</a>
            </div>

        <div class="box">
                <img src="/Images/category4.jpg" alt="Alternate Text" />
                <h3>Comedy</h3>
                <a href="./bookDetails.aspx" class="btn">view</a>
            </div>

        <div class="box">
                <img src="/Images/category5.jfif" alt="Alternate Text" />
                <h3>Sports</h3>
                <a href="./bookDetails.aspx" class="btn">view</a>
         </div>
 </div>
</asp:Content>

