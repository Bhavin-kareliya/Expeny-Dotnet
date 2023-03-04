<%@ Page Title="" Language="C#" MasterPageFile="~/signing.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="ExpenseManager.Signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login_content" runat="server">
    <h3>Sign Up</h3>

    <asp:Label runat="server" ID="error" Text="Email Or Password are Invalid" ForeColor="Red"></asp:Label>

    <asp:RequiredFieldValidator ID="em_validator" runat="server" ControlToValidate ="email1" ErrorMessage="**Email Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="email1" type="email" class="form-control" placeholder="Your Email" style="margin-bottom:10px;padding-left:20px;" AutoCompleteType="Disabled"/>

    <asp:RequiredFieldValidator ID="pass_validator" runat="server" ControlToValidate ="password1" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="password1" type="password" class="form-control" placeholder="Password" style="margin-bottom:10px;padding-left:20px;" AutoCompleteType="Disabled"/>

    <asp:Button id="button" runat="server" CssClass="btn btn-dark" Text="Sign In" OnClick="button_Click"/>
    <asp:Button id="forget" runat="server" CssClass="btn btn-dark" Text="Forgot Password" OnClick="forget_Click"/> 


</asp:Content>
