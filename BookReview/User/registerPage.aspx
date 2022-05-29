<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="BookReview.html.registerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/register.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <div>
        <form action="/" class="registration-form" >
        <h3>Register here<i class="fas fa-user-plus"></i></h3>
        <input type="text" placeholder="Enter Name" class="box" />
        <input type="email" placeholder="Enter email id" class="box" />
        <input type="password" placeholder="enter password" class="box" />
        <input type="password" placeholder="Confirm Password" class="box" />
        <input type="submit" value="Register" class="btn" />
    </form>
    </div>
</asp:Content> 
