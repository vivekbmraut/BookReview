<%@ Page Title="" Language="C#" MasterPageFile="~/bookMain.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="BookReview.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/feedback.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="middle" runat="server">
    <div>
        <form action="/" method="post" class="feedback-form" runat="server">
            <h3>Feedback Form<i class="fas fa-edit"></i></h3>
           <input type="text" placeholder="Enter Name" id="NameInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter name with only alphabets" ControlToValidate="NameInput" ValidationExpression="[a-zA-Z\s]+" runat="server" />
        <input type="email" placeholder="Enter email id" id="EmailInput" class="box" runat="server" required/>
            <asp:RegularExpressionValidator ErrorMessage="Enter Valid Email Id" ControlToValidate="EmailInput" CssClass="validator"  runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            <textarea class="box"  rows=5  placeholder="Enter your opinion "> </textarea>
            <asp:Button Text="Submit" CssClass="btn" runat="server" />
        </form>

    </div>
</asp:Content>
