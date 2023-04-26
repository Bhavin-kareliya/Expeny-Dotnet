<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_header.Master" AutoEventWireup="true" CodeBehind="Admin_dashboard.aspx.cs" Inherits="ExpenseManager.Admin_dashboard" %>

<asp:Content ID="link" ContentPlaceHolderID="linker" runat="server">
    <title>Dashboard</title>
</asp:Content>


<asp:Content ID="mainContent" ContentPlaceHolderID="mainContent" runat="server">
    <div id='content'>
        <div>
            <h4>Welcome Bhavin Kareliya</h4>
        </div>
        <div class="row my-3">
            <div class="card col-3 mx-3" style="width: 18rem;">
                <div class="card-body text-center">
                    <h4 class="card-title">Total Users</h4>
                    <h1 class="card-subtitle mb-2 text-body-secondary" runat="server" id="totalUsers">41</h1>
                </div>
            </div>
            <div class="card col-3 mr-3" style="width: 18rem;">
                <div class="card-body text-center">
                    <h4 class="card-title">Total Expenses</h4>
                    <h1 class="card-subtitle mb-2 text-body-secondary" runat="server" id="totalExpenses">41</h1>
                </div>
            </div>
            <div class="card col-3 mr-3" style="width: 18rem;">
                <div class="card-body text-center">
                    <h4 class="card-title">Total Groups</h4>
                    <h1 class="card-subtitle mb-2 text-body-secondary" runat="server" id="totalGroups">${}</h1>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
