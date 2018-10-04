<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Leave_Management.Admin.admin" %>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="../css/stylesheet.css" rel="stylesheet" />
</head>
<body>
    <form runat="server">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <asp:Label runat="server" CssClass="navbar-brand" ID="adming"></asp:Label>
                    <%--<a class="navbar-brand" href="https://www.google.co.in/">My Page</a>--%>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="www.google.co.in">Home</a></li>
                        <li><a href="www.google.co.in">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="Main.aspx">Sign In</a></li>
                                <li><a href="Register.aspx">Sign Up</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
        <div class=" form-group">
            <div style="text-align: center">
                <h2 class="page-header">Leave Requests</h2>
            </div>
            <div class="temp">
                <asp:GridView ID="grvAdmins" runat="server" CellPadding="3" OnRowCommand="grvAdmins_RowCommand" CssClass="table table-striped table-bordered table-condensed" AutoGenerateColumns="false" >
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="Id" />
                        <asp:BoundField DataField="EID" HeaderText="Employee Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                        <asp:BoundField DataField="fromDate" HeaderText="From" />
                        <asp:BoundField DataField="toDate" HeaderText="To" />
                        <asp:BoundField DataField="reason" HeaderText="Reason" />
                        <asp:BoundField DataField="Ltype" HeaderText="Leave Type" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="SanctionedButton"  OnClientClick="return confirm('Do you really want to approve the Leave? ')" class="btn btn-success" CommandName="sanction" CommandArgument ="<%# ((GridViewRow) Container).RowIndex %>"  Text="Approve" runat="server" />
                                <asp:Button ID="DeclineButton" OnClientClick="return confirm('Do you really want to remove the Leave? ')" class="btn btn-danger" Text="Reject" runat="server" CommandArgument ="<%# ((GridViewRow) Container).RowIndex %>" CommandName="reject"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
