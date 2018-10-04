<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Leave_Management.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
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
            background-image: url("../images/pexels-photo-988872.jpeg");
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        form {
            display: table;
            margin: auto;
        }

        .validate {
            color: red;
        }
        .example2 {
    border: 1px solid #bbb;
    padding: 20px;
    background: #efefef;
    box-shadow: 5px 5px 5px #1b1b1b12;
    border-radius: 3px;
}
    </style>
    <%--<style type="text/css">
        .messagealert {
            width: 100%;
            position: fixed;
             top:0px;
            z-index: 100000;
            padding: 0;
            font-size: 15px;
        }
    </style>
    <script type="text/javascript">
        function ShowMessage(message, messagetype) {
            var cssclass;
            switch (messagetype) {
                case 'Success':
                    cssclass = 'alert-success'
                    break;
                case 'Error':
                    cssclass = 'alert-danger'
                    break;
                case 'Warning':
                    cssclass = 'alert-warning'
                    break;
                default:
                    cssclass = 'alert-info'
            }
            $('#alert_container').append('<div id="alert_div" style="margin: 0 0.5%; -webkit-box-shadow: 3px 4px 6px #999;" class="alert fade in ' + cssclass + '"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a><strong>' + messagetype + '!</strong> <span>' + message + '</span></div>');
        }
    </script>--%>
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
        <div class="example2">
        <div class=" form-group">
            <div style="text-align: center">
                <asp:ValidationSummary runat="server" CssClass="validate" HeaderText="There were errors on the page:" />
                <h2 class="form-signin-heading">Registration</h2>
            </div>
            <label for="exampleInputFName1">First Name</label>
            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="firstName"
                ErrorMessage="First Name is required."> *
            </asp:RequiredFieldValidator>

            <div class="input-group">
                <span class="input-group-addon" id="basic-addon3"><i class="glyphicon glyphicon-user"></i></span>

                <asp:TextBox CssClass="form-control" ID="firstName" runat="server" placeholder="Firstname" Width="300px" />
            </div>
            <label for="exampleInputLName1">Last Name</label>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon4"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox CssClass="form-control" ID="lastName" runat="server" placeholder="Lastname" Width="300px" />
            </div>
            <label for="exampleInputEmail1">Email</label>
            <asp:RegularExpressionValidator ID="regexEmailValid" CssClass="validate" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtUsername" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="txtUsername"
                ErrorMessage="Valid Email Address is required."> *
            </asp:RequiredFieldValidator>

            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
                <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username" Width="300px" />
            </div>
            <label for="exampleInputPassword1">Password</label>

            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="txtPassword"
                ErrorMessage="Password is required."> *
            </asp:RequiredFieldValidator>

            <div class="input-group">
                <span class="input-group-addon" id="basic-addon2"><i class="glyphicon glyphicon-eye-close"></i></span>
                <asp:TextBox CssClass="form-control" runat="server" ID="txtPassword" placeholder="Password" TextMode="Password" Width="300px" />
            </div>
            <label for="exampleGender">Gender</label>

            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="Gender"
                InitialValue="-1"
                ErrorMessage="Gender is required."> *
            </asp:RequiredFieldValidator>

            <div class="input-group">
                <asp:DropDownList ID="Gender" runat="server">
                    <asp:ListItem Enabled="true" Text="Select Gender" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <label for="exampleDesignation">Designation</label>

            <asp:RequiredFieldValidator runat="server" CssClass="validate"
                ControlToValidate="Designation"
                InitialValue="-1"
                ErrorMessage="Designation is required."> *
            </asp:RequiredFieldValidator>

            <div class="input-group">
                <asp:DropDownList ID="Designation" runat="server">
                    <asp:ListItem Enabled="true" Text="Select Designation" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="I.T." Value="T"></asp:ListItem>
                    <asp:ListItem Text="Video" Value="V"></asp:ListItem>
                    <asp:ListItem Text="Social Media" Value="S"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" CssClass="btn btn-primary btn-lg outline" />
                <a href="Main.aspx" class="btn btn-primary btn-lg outline">Login Page</a>
                <%--<asp:Button ID="Button2" runat="server" Text="Login Page" OnClick="Button2_Click" CssClass="btn btn-primary btn-lg outline" />--%>
                <br />
                <br />
            </div>
            <asp:Label runat="server" ID="Label4"></asp:Label>
        </div>
            </div>
    </form>
</body>
</html>
