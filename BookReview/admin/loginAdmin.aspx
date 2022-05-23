<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginAdmin.aspx.cs" Inherits="BookReview.admin.loginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width ,initial scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    <link rel="stylesheet" href="../CSS/loginAdmin.css"
</head>
<body>
    <form id="adminForm" runat="server" class="login-form">
        <h3><i class="fas fa-user-shield"></i>Admin</h3>
        <input type="text" placeholder="Email" class="box" />
        <input type="password" placeholder="Password" class="box" />
        <input type="submit" value="Log In" class="btn" /> 
    </form>
</body>
</html>
