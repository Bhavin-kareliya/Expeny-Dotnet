<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_header.Master" AutoEventWireup="true" CodeBehind="graph.aspx.cs" Inherits="ExpenseManager.graph" %>
<asp:Content ID="Content1" ContentPlaceHolderID="linker" runat="server">
    <title>Graph Manage</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <div class="masonry-item col-md-6">
        <div class="bgc-white p-20 bd">
            <h6 class="c-grey">Monthly Expense</h6>
            <canvas id="area-chart" height="220"></canvas>
        </div>
    </div>
</asp:Content>
