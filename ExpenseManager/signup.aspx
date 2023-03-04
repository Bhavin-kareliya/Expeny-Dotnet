 <%@ Page Title="" Language="C#" MasterPageFile="~/signing.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="ExpenseManager.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Join Blinq</title>
    <style>html,
        body {
          height: 100%;
        }
        img{
            margin-top:50px;
        }
        h3{
            margin-bottom:20px;
        }
        .form-signin .form-control{
            margin:0px ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="login_content" runat="server">
    <h3>Sign Up</h3>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate ="full_name" ErrorMessage="**Full Name Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="full_name" type="text" class="form-control"  placeholder="Full Name" style="margin-bottom:10px;padding-left:20px;" />

    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="**Invalid Email Format**" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="em_validator" runat="server" ControlToValidate ="email" ErrorMessage="**Email Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="email" type="email" class="form-control" placeholder="Your Email" style="margin-bottom:10px;padding-left:20px;" />

    <asp:RequiredFieldValidator ID="pass_validator" runat="server" ControlToValidate ="password" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:TextBox runat="server" id="password" type="password" class="form-control" placeholder="Password" style="margin-bottom:10px;padding-left:20px;" />

    <asp:RequiredFieldValidator ID="con_pass_validator" runat="server" ControlToValidate ="confirm_password" ErrorMessage="**Password Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm_password" Display="Dynamic" ErrorMessage="**Confirm Password Not Matched**" ForeColor="Red" Operator="Equal" Type="Integer"></asp:CompareValidator>
    <asp:TextBox runat="server" id="confirm_password" type="password" class="form-control" placeholder="Confirm Password" style="margin-bottom:10px;padding-left:20px;" />
        
     <asp:RequiredFieldValidator ID="mobile_validtor" runat="server" ControlToValidate ="mobile_no" ErrorMessage="**Mobile Number Required**" Display="Dynamic" ForeColor="red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="mobile_no_validator" runat="server" forecolor="Red" ControlToValidate="mobile_no" ErrorMessage="**Invalid Mobile Number**" Display="Dynamic" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
    <asp:TextBox runat="server" id="mobile_no" type="text" class="form-control" placeholder="Contact No." style="margin-bottom:20px;padding-left:20px;" />

    <asp:Button id="btn" runat="server" CssClass="btn btn-dark"  Text="Sign Up" OnClick="btn_Click"/>
</asp:Content>
