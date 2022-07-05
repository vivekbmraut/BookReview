<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminHome.Master" AutoEventWireup="true" CodeBehind="addAdmin.aspx.cs" Inherits="BookReview.admin.addAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/addAdmin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="searchAny" runat="server">
<form action="/" method="get" class="search-form">
    <input type="search" id="search-box" placeholder="search admin by name" />
    <label for="search-box" class=" fa-solid fa-magnifying-glass"></label>
</form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <form id="addAdmin" runat="server" class="admin-form" action="addAdmin.aspx" method="post">
        <h3><i class="fas fa-user-shield"></i>Add Admin</h3>

        <input type="text" placeholder="Enter Name" id="NameInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter name with only alphabets" ControlToValidate="NameInput" ValidationExpression="[a-zA-Z\s]+" CssClass="validator" Display="Dynamic" runat="server" />


        <input type="email" placeholder="Enter email id" id="EmailInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator" Display="Dynamic"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />


        <input type="password" placeholder="enter password" id="PasswordInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Password Length should be Mininmun 6 and Max length 15" ControlToValidate="PasswordInput" CssClass="validator" Display="Dynamic"  runat="server" ValidationExpression="[\w@!#]{6,15}" />


        <input type="password" placeholder="Confirm Password" id="ConfirmPasswordInput" class="box" runat="server" required/>
            <asp:CompareValidator ErrorMessage="Password does not match with above" ControlToValidate="ConfirmPasswordInput" CssClass="validator" Display="Dynamic" ControlToCompare="PasswordInput" runat="server" />
        <asp:Button Text="ADD" CssClass="btn"  runat="server" />  
    </form>
    <div class="email-err" id="emailErr" runat="server">Email Already Registered Try New One</div>
</asp:Content>
