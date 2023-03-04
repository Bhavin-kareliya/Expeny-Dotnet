<%@ Page Title="" Language="C#" MasterPageFile="~/signing.Master" AutoEventWireup="true" CodeBehind="forgetPassword.aspx.cs" Inherits="ExpenseManager.forgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reset Your Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login_content" runat="server">
    <h3>Forgot Password</h3>

    <asp:Label runat="server" ID="info" Text="Check Out Your Email For Reset Password Link." BorderStyle="Dashed"></asp:Label>

     <asp:RequiredFieldValidator ID="em_validator" runat="server" ControlToValidate ="email" ErrorMessage="**Email Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="email" type="email" class="form-control" placeholder="Your Email" style="margin-bottom:10px;padding-left:20px;" />

    <asp:Button id="btn" runat="server" CssClass="btn btn-dark"  Text="Send OTP" OnClick="btn_Click"/>
</asp:Content>
