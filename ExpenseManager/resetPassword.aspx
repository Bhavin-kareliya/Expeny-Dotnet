<%@ Page Title="" Language="C#" MasterPageFile="~/signing.Master" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="ExpenseManager.resetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Reset Your Password</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login_content" runat="server">
    <h3>Reset Password</h3>

    <asp:TextBox ID="Error1" runat="server" Text="Please Enter Valid OTP." Visible="false"></asp:TextBox>
    <asp:TextBox ID="email" runat="server" CssClass="form-control disabled" Text="" ></asp:TextBox>

    <asp:RequiredFieldValidator ID="otp_validator" runat="server" ControlToValidate ="otp" ErrorMessage="**OTP Required**" Display="Dynamic" ForeColor="red" ></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="otp" class="form-control" placeholder="OTP" style="margin-bottom:10px;padding-left:20px;" />

    <asp:RequiredFieldValidator ID="pass_validator" runat="server" ControlToValidate ="password" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="password" type="password" class="form-control" placeholder="New Password" style="margin-bottom:10px;padding-left:20px;" />

    <asp:RequiredFieldValidator ID="con_pass_validator" runat="server" ControlToValidate ="confirm_password" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm_password" Display="Dynamic" ErrorMessage="**Confirm Password Not Matched**" ForeColor="Red" Operator="Equal" Type="Integer"></asp:CompareValidator>
    <asp:TextBox runat="server" id="confirm_password" type="password" class="form-control" placeholder="Confirm Password" style="margin-bottom:10px;padding-left:20px;"/>

    <asp:Button id="reset_btn" runat="server" CssClass="btn btn-dark"  Text="Reset Password" OnClick="reset_btn_Click"/>
</asp:Content>
