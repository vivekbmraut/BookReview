﻿<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="BookReview.html.registerPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./CSS/register.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
        <form id="userRegisterForm" action="#" class="registration-form" runat="server">
        <h3>Register here<i class="fas fa-user-plus"></i></h3>

        <input type="text" placeholder="Enter Name" id="NameInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter name with only alphabets" CssClass="validator" Display="Dynamic" ControlToValidate="NameInput" ValidationExpression="[a-zA-Z\s]+" runat="server" />
        
            <input type="email" placeholder="Enter email id" id="EmailInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator" Display="Dynamic"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />

            <input type="password" placeholder="enter password" id="PasswordInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Password Length should be Mininmun 6 and Max length 15" ControlToValidate="PasswordInput" CssClass="validator" Display="Dynamic"  runat="server" ValidationExpression="[\w@!#]{6,15}" />
        
            <input type="password" placeholder="Confirm Password" id="ConfirmPasswordInput" class="box" runat="server" required/>
            <asp:CompareValidator ErrorMessage="Above Password does not match" ControlToValidate="ConfirmPasswordInput" CssClass="validator" Display="Dynamic" ControlToCompare="PasswordInput" runat="server" />
        
            <asp:Button Text="Submit" CssClass="btn" runat="server" />
    </form>
    <div class="email-err" id="emailErr" runat="server">Email Already Registered Try New One</div>
</asp:Content> 
