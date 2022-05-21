<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeration.aspx.cs" Inherits="BookReview.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Registration Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link  rel="stylesheet" href="CSS/register.css" />
</head>
<body>
    <form action="/" class="registration-form" runat="server">
        <h3>Register here<i class="fas fa-user-plus"></i></h3>
        <input type="text" placeholder="Enter Name" class="box" />
        <input type="email" placeholder="Enter email id" class="box" />
        <input type="password" placeholder="enter password" class="box" />
        <input type="password" placeholder="Confirm Password" class="box" />
        <input type="submit" value="Register" class="btn" />
    </form>

</body>
</html>