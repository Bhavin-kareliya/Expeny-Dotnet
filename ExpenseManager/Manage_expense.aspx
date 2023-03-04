<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_header.Master" AutoEventWireup="true" CodeBehind="Manage_expense.aspx.cs" Inherits="ExpenseManager.Manage_expense" %>
<asp:Content ID="Content1" ContentPlaceHolderID="linker" runat="server">
    <title>Expense Manage</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <button id="add_expense_btn" class="btn btn-outline-primary" data-toggle="modal" data-target="#ExpenseModal "  style="margin-bottom:20px">Create New Expense</button>
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
                <div class="form-group">
                    <label for="recipient-name" class="col-form-label">Expense Name</label>
                    <asp:TextBox runat="server" cssClass="form-control" ID="expense_name"></asp:TextBox>
                </div>
                <label for="message-text" class="col-form-label">Add Users</label>
                <div class="row form-group user_adder">
                    <div class="col-9">
                        <asp:DropDownList ID="Users" runat="server" CssClass="form-control" AppendDataBoundItems="true" DataTextField="email">
                            <asp:ListItem><-- Select User --></asp:ListItem>
                            <asp:ListItem>vbera@gmail.com</asp:ListItem>
                            <asp:ListItem>bkareliya@gmail.com</asp:ListItem>
                            <asp:ListItem>katkotiya@gmail.com</asp:ListItem>
                            <asp:ListItem>datkotiya@gmail.com</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:Button runat="server" Text="+" CssClass="form-control col-1 Add"/>
                    <div class="col-2">
                        <asp:Button runat="server" Text="-" CssClass="form-control col-9 Remove"/>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <%--<asp:Button runat="server" cssClass="btn btn-primary" id="submitData" OnClick="onsubmitData_Click" Text="Done" UseSubmitBehavior="false"/>--%>
                <asp:Button id="submitData" runat="server" CssClass="btn btn-primary" Text="Done" OnClick="submitData_Click"/> 
            </div>
        </div>
        </div>
    </div>
    
    <h3 style="margin-bottom:20px">Your Expenses</h3>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Expense_Data">
            </asp:GridView>
            <asp:SqlDataSource ID="Expense_Data" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Expense_master]" DeleteCommand="DELETE FROM [Expense_master] WHERE [group_id] = @group_id" InsertCommand="INSERT INTO [Expense_master] ([expense_id], [expense_name], [user_id]) VALUES (@expense_id, @expense_name, @user_id)" ProviderName="System.Data.SqlClient" UpdateCommand="UPDATE [Expense_master] SET [expense_id] = @expense_id, [expense_name] = @expense_name, [user_id] = @user_id WHERE [group_id] = @group_id">
                <DeleteParameters>
                    <asp:Parameter Name="group_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="expense_id" Type="Int32" />
                    <asp:Parameter Name="expense_name" Type="String" />
                    <asp:Parameter Name="user_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="expense_id" Type="Int32" />
                    <asp:Parameter Name="expense_name" Type="String" />
                    <asp:Parameter Name="user_id" Type="Int32" />
                    <asp:Parameter Name="group_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        </form>
    
</asp:Content>
