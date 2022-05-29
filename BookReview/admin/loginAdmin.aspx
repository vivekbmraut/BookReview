<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="BookReview.admin.loginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width ,initial scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="../CSS/loginAdmin.css" />
</head>
<body>
    <form id="adminForm" runat="server" class="login-form" action="#">
        <h3><i class="fas fa-user-shield"></i>Admin</h3>
        <input type="text" placeholder="Email" id="EmailInput" class="box" runat="server" required/>
        <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
        <input type="password" placeholder="Password" id="PasswordInput" class="box" runat="server" required/>
        <asp:RegularExpressionValidator ErrorMessage="Password Length should be Mininmun 6 and Max length 15" ControlToValidate="PasswordInput" CssClass="pass-validator"  runat="server" ValidationExpression="[\w@!#]{6,15}" />
        <asp:Button Text="Login" CssClass="btn"  runat="server" />  
    </form>
</body>
</html>
