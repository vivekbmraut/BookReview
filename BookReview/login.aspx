<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BookReview.user.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="./CSS/login.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="middle" runat="server">
     <form id="loginform" action="login.aspx" class="login-form" method="post" runat="server">
        <h3>Login<i class="fas fa-user"></i></h3>
        
        <input type="email" placeholder="Enter email id" id="EmailInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator" Display="Dynamic"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
        <input type="password" placeholder="enter password" id="PasswordInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Password Length should be Mininmun 6 and Max length 15" ControlToValidate="PasswordInput" Display="Dynamic" CssClass="validator"  runat="server" ValidationExpression="[\w@!#]{6,15}" />
        
        <asp:Button Text="Submit" CssClass="btn" runat="server" />
        <p> don't have an account' <a href="./registerpage.aspx">create now</a></p>
    </form>
    <div class="error" id="ErrorDiv" runat="server">
        Incorrect email or password
    </div>
    <div class="error" id="SusWarn" runat="server">
        Your Account is suspended due malicious activity! 
    </div>
</asp:Content>
