﻿<%@ Page Title="" Language="C#" MasterPageFile="~/signing.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="ExpenseManager.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-control{
            margin-bottom:10px;
            padding-left:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login_content" runat="server">
    <h3>Sign In</h3>

    <asp:Label runat="server" ID="error" Text="Email Or Password are Invalid" ForeColor="Red"></asp:Label>

    <asp:RequiredFieldValidator ID="em_validator" runat="server" ControlToValidate ="email1" ErrorMessage="**Email Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="email1" type="email" class="form-control" placeholder="Your Email" AutoCompleteType="Disabled"/>

    <asp:RequiredFieldValidator ID="pass_validator" runat="server" ControlToValidate ="password1" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="password1" type="password" class="form-control" placeholder="Password" AutoCompleteType="Disabled"/>

    <asp:Button id="button" runat="server" CssClass="btn btn-dark" Text="Sign In" OnClick="buttonClick"/>
    <p class="mt-2 ">Don't have an account? <a href="signup.aspx" class="text-black">Register now!</a></p>



</asp:Content>
