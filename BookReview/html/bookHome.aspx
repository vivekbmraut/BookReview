<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="bookHome.aspx.cs" Inherits="BookReview.html.bookHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="guestOrReviewer" runat="server">
    <form action="#" class="login-form" >
            <h3>Login</h3>
            <input type="email" class="box" placeholder="enter your email" />
            <input type="password" class="box" placeholder="enter password" />
            <input type="submit" value="login now"  class="btn"/>
            <p> forget your password <a href="#">click here</a></p>
            <p> don't have an account' <a href="./registerpage.aspx">create now</a></p>

        </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="middle" runat="server">
    <section class="img">
        <div>
            <img src="/Images/book1.jpg" alt="not visible" />
        </div>
    </section>
</asp:Content>
