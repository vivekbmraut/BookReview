<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="addAdmin.aspx.cs" Inherits="BookReview.admin.addAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
<form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search admin by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <form id="addAdmin" runat="server" class="adminform" action="addAdmin.aspx">
        <h3><i class="fas fa-user-shield"></i>Add Admin</h3>
        <input type="text" placeholder="Email" id="EmailInput" class="box" runat="server" required/>
        <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
        <input type="password" placeholder="Password" id="PasswordInput" class="box" runat="server" required/>
        <asp:RegularExpressionValidator ErrorMessage="Password Length should be Mininmun 6 and Max length 15" ControlToValidate="PasswordInput" CssClass="pass-validator"  runat="server" ValidationExpression="[\w@!#]{6,15}" />
        <asp:Button Text="Login" CssClass="btn"  runat="server" />  
    </form>
</asp:Content>
