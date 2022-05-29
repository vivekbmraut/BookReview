<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="BookReview.html.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="/CSS/register.css" rel="stylesheet" />
</head>
<body>
     <form action="/" class="registration-form" >
        <h3>Register here<i class="fas fa-user-plus"></i></h3>
        <input type="text" placeholder="Enter Name" class="box" />
        <input type="email" placeholder="Enter email id" class="box" />
        <input type="password" placeholder="enter password" class="box" />
        <input type="password" placeholder="Confirm Password" class="box" />
        <input type="submit" value="Register" class="btn" />
    </form>

</body>

</html>
