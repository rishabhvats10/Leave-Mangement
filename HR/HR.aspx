<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="leaveManagement.HR.HR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
    <style>
        .login-form {
            width: 340px;
            margin: 50px auto;
        }

            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            }

        .btn.outline {
            background: none;
            padding: 6px 12px;
        }

        .btn-primary.outline {
            border: 2px solid #0099cc;
            color: #0099cc;
        }

            .btn-primary.outline:hover, .btn-primary.outline:focus, .btn-primary.outline:active, .btn-primary.outline.active, .open > .dropdown-toggle.btn-primary {
                color: #33a6cc;
                border-color: #33a6cc;
            }

            .btn-primary.outline:active, .btn-primary.outline.active {
                border-color: #007299;
                color: #007299;
                box-shadow: none;
            }

        body, html {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            display: table;
        }

        body {
            display: table-cell;
            vertical-align: middle;
            /*background-color: lightblue;*/
            background-image: url("../image/pexels-photo-988872.jpeg");
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;

        }

        form {
            display: table;
            margin: auto;
        }

        .font-bold {
            font-weight: bold;
        }

        .temp {
            margin-left: 80px;
        }

        .hi {
            font-size: 24px;
        }
        /*.card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            width: 40%;
        }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

        .container {
            padding: 2px 16px;
        }*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="https://www.google.co.in/">Leave Management</a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="https://www.google.co.in">Home</a></li>
                        <li><a href="https://www.google.co.in">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><asp:Button ID="button1" runat="server" Text="Log Out" OnClick="Button1_Click"/></li>
                           
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
        <div class="temp">
                <asp:GridView ID="grvHR" runat="server" CellPadding="3" CssClass="table table-striped table-bordered table-condensed" >
                  <%--  <Columns>
                        <asp:BoundField DataField="EID" HeaderText="Employee Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                        <asp:BoundField DataField="fromDate" HeaderText="From" />
                        <asp:BoundField DataField="toDate" HeaderText="To" />
                        <asp:BoundField DataField="reason" HeaderText="Reason" />
                        <asp:BoundField DataField="Ltype" HeaderText="Leave Type"/>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="SanctionedButton" class="btn btn-success" Text="Approve" runat="server" />
                                <asp:Button ID="DeclineButton" class="btn btn-danger" Text="Reject" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>--%>
                </asp:GridView>
            </div>


        <%--<div class="container">
            <div class="font-bold">
                <div class="temp">
                    <div class="hi">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><asp:Label ID="Label12" runat="server"></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label><asp:Label ID="Label10" runat="server"></asp:Label><br />
                        <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label><asp:Label ID="Label11" runat="server"></asp:Label><br />
                        <asp:Label ID="Label4" runat="server" Text="Designation"></asp:Label><asp:Label ID="Label9" runat="server"></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label><asp:Label ID="Label8" runat="server"></asp:Label><br />
                        <asp:Label ID="Label6" runat="server" Text="Earned Leave"></asp:Label><asp:Label ID="Label7" runat="server"></asp:Label><br />
                        <asp:Label ID="Label13" runat="server" Text="Casual Leave"></asp:Label><asp:Label ID="Label14" runat="server"></asp:Label><br />
                        <asp:Label ID="Label15" runat="server" Text="Medical Leave"></asp:Label><asp:Label ID="Label16" runat="server"></asp:Label><br />
                        <asp:Label ID="Label17" runat="server" Text="Maternity Leave"></asp:Label><asp:Label ID="Label18" runat="server"></asp:Label><br />
                        <asp:Label ID="Label19" runat="server" Text="Half Leave"></asp:Label><asp:Label ID="Label20" runat="server"></asp:Label><br />
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
        </div>--%>
    </form>
</body>
</html>
