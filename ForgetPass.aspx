<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPass.aspx.cs" Inherits="Leave_Management.ForgetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
        }

        form {
            display: table;
            margin: auto;
        }
        .validate {
            color: red;
        }
    </style>
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
                    <a class="navbar-brand" href="https://www.google.co.in/">My Page</a>
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
                <asp:ValidationSummary runat="server" CssClass="validate" HeaderText="There were errors on the page:" />
                        <h2 class="form-signin-heading">Reset Password</h2>
                    </div>
            <label for="exampleInputEmail1">Enter Email Address</label>
            <asp:RegularExpressionValidator ID="regexEmailValid" CssClass="validate" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                 ControlToValidate="txtUsername" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="txtUsername"
                ErrorMessage="UserName is required."> *
            </asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username" Width="300px" aria-describedby="basic-addon1" />
            </div>
            <label for="exampleInputPassword1">New Password</label>
            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required."> *
            </asp:RequiredFieldValidator>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon2"><i class="glyphicon glyphicon-eye-close"></i></span>
                <asp:TextBox CssClass="form-control" runat="server" ID="txtPassword" placeholder="Password" TextMode="Password" Width="300px" aria-describedby="basic-addon2" />
            </div>
            <br />
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" CssClass="btn btn-primary btn-lg outline" />
                <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />

            </div>
            
        </div>
    </form>
</body>
</html>
