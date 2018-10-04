<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="leaveManagement.H.R.HR" %>

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
    <form id="form2" runat="server">
        <nav id="form1" runat="server">
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
                                    <li><%--<asp:Button ID="button1" runat="server" Text="Log Out" OnClick="Button1_Click"/>--%></li>

                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </nav>
        <h2 class="page-header">HR page</h2>
            <div class="hi">
            <asp:Label runat="server" Text="Enter Username Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="Usernameemp"></asp:TextBox> <br/>
             <asp:Label runat="server" Text="Select Gender"></asp:Label>&nbsp&nbsp
                <div class="input-group">
                <asp:DropDownList ID="Gender" runat="server">
                    <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                </asp:DropDownList>
            </div>
                <br/>
            <asp:Label runat="server" Text="Set Total Earned Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox><br/>
            <asp:Label runat="server" Text="Set Total Casual Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox><br/>
            <asp:Label runat="server" Text="Set Total Sick Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox><br/>
            <asp:Label runat="server" Text="Set Total Maternity Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox4"></asp:TextBox><br/>
            <asp:Label runat="server" Text="Set Total Half Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox5"></asp:TextBox><br/>
            <asp:Label runat="server" Text="Set Total Paternity Leaves Of Employee"></asp:Label>
            <asp:TextBox runat="server" ID="TextBox6"></asp:TextBox><br/>
            <asp:Label runat="server" ID="Label4" Text="Set Total Paternity Leaves Of Employee"></asp:Label><br/><br/>
            <asp:Button ID="Buttonsend" runat="server" Text="Create" OnClick="Buttonsend_Click" CssClass="btn btn-primary btn-lg outline" />
        </div>
           
    </form>

    
</body>
</html>
