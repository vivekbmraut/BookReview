<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="BookReview.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/feedback.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="middle" runat="server">
    <div>
        <form action="/" method="post" class="feedback-form"  >
            <h3>Feedback Form<i class="fas fa-edit"></i></h3>
           <input type="text" placeholder="Enter Name" id="NameInput" class="box" runat="server" required/>
        <input type="email" placeholder="Enter email id" id="EmailInput" class="box" runat="server" required/>
            <textarea class="box"  rows=5  placeholder="Enter your opinion "> </textarea>
            <button type="submit" class="btn"  >Submit</button>
        </form>

    </div>
</asp:Content>
