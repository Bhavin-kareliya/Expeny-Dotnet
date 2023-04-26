<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_header.Master" AutoEventWireup="true" CodeBehind="Manage_expense.aspx.cs" Inherits="ExpenseManager.Manage_expense" %>

<asp:Content ID="Content1" ContentPlaceHolderID="linker" runat="server">
    <title>Expense Manage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <button id="add_expense_btn" class="btn btn-outline-primary" data-toggle="modal" data-target="#ExpenseModal " style="margin-bottom: 20px">Create New Expense</button>
    <form runat="server">
        <!-- Modal -->
        <div class="modal fade" id="ExpenseModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">

                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Expense</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <formview class="form" id="CreateExpense">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Expense Name</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="Name" RequiredFieldValidator="true"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqName" ControlToValidate="Name" ValidationGroup="CreateFrame"
                                    runat="server" ErrorMessage="Name of the expense is required." Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Expense Amount</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="Amount" TextMode="Number" RequiredFieldValidator="true"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Amount" ValidationGroup="CreateFrame"
                                    runat="server" ErrorMessage="Amount paid to expense is required." Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Expense Group</label>
                                <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1" ReadOnly="true" Text="Default"></asp:TextBox>
                            </div>
                        </formview>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <%--<asp:Button runat="server" cssClass="btn btn-primary" id="submitData" OnClick="onsubmitData_Click" Text="Done" UseSubmitBehavior="false"/>--%>
                        <asp:Button ID="submitData" runat="server" CssClass="btn btn-primary" Text="Create" OnClick="SubmitBtnClick" />
                    </div>
                </div>
            </div>
        </div>

        <h3 style="margin-bottom: 20px">Your Expenses</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ExpenySource" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table table-bordered">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="TypeId" HeaderText="TypeId" SortExpression="TypeId" />
                <asp:BoundField DataField="GroupId" HeaderText="GroupId" SortExpression="GroupId" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="ExpenySource" runat="server"
            ConnectionString="<%$ ConnectionStrings:ExpenyDbConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ExpenyDbConnectionString.ProviderName %>"
            SelectCommand="SELECT [Id], [Name], [Amount], [TypeId], [GroupId] FROM [Expenses] ORDER BY [Id]"
            DeleteCommand="Delete [Expenses] where Id = @Id">
            <DeleteParameters>
                <asp:ControlParameter Name="Id" ControlID="Id" PropertyName="Id" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>
