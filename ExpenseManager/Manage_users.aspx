<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_header.Master" AutoEventWireup="true" CodeBehind="Manage_users.aspx.cs" Inherits="ExpenseManager.Manage_users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="linker" runat="server">
    <link href="assests/css/bootstrap.min.css" rel="stylesheet" />
    <title>User Manager</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    
    
    <div class="d-flex justify-content-between">
        <h3 style="margin-bottom:20px">All Users</h3>
        <%--<button id="add_expense_btn" class="btn btn-outline-primary" data-toggle="modal" data-target="#ExpenseModal"  style="margin-bottom:20px">Invite New User</button>--%>
    </div>
   
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ExpenseUsers" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" SortExpression="CreatedAt" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="ExpenseUsers" runat="server" ConnectionString="<%$ ConnectionStrings:ExpenyDbConnectionString %>" SelectCommand="SELECT [Id], [FirstName], [LastName], [Email], [CreatedAt], [Address], [DOB] FROM [Users]">
        </asp:SqlDataSource>
    </form>
   
   
</asp:Content>
