<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="Leave_Management.Employees.employee" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
    <title></title>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/js/bootstrap-datetimepicker.min.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.7.14/css/bootstrap-datetimepicker.min.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css"/>--%>
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

        .font-bold {
            font-weight: bold;
        }

        .hi {
            font-size: 24px;
        }

        .lab {
            margin-left: 200px;
        }

        .temp {
            margin-left: 80px;
        }

        .templ {
            margin-left: 82px;
        }

        .aa {
            margin-left: 16px;
        }

        .hi {
            font-size: 24px;
        }

        
        .hil {
            font-size: 27px;
        }

        .header {
            background-image: url("../images/images.jpg");
        }

        .hila {
            font-size: 18px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <asp:Label runat="server" CssClass="navbar-brand" ID="Userg"></asp:Label>
                    <%--<a runat="server" class="navbar-brand" href="https://www.google.co.in/" id="User"></a>--%>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="https://www.google.co.in">Home</a></li>
                        <li><a href="https://www.google.co.in">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="WebForm1.aspx">Sign In</a></li>
                                <li><a href="WebForm2.aspx">Sign Up</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

        <div class="container">
            <div class="font-bold">
                <div class="hi">

                    <asp:Label ID="Label12" runat="server" Text="Earned Leave    :      "></asp:Label><div class="lab">
                        <asp:Label ID="Label1" runat="server"></asp:Label>

                    </div>
                    <div class="hi">
                        <asp:Label ID="Label122" runat="server" Text="Casual Leave    :      "></asp:Label>
                    </div>
                    <div class="lab">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                    <div class="hi">
                        <asp:Label ID="Label233" runat="server" Text="Sick Leave      :      "></asp:Label>
                    </div>
                    <div class="lab">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </div>
                    <div class="hi">
                        <asp:Label ID="Label435" runat="server" Text="Maternity Leave :      "></asp:Label>
                    </div>
                    <div class="lab">
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </div>
                    <div class="hi">
                        <asp:Label ID="Label546" runat="server" Text="Half Day        :      "></asp:Label>
                    </div>
                    <div class="lab">
                        <asp:Label ID="Label5" runat="server"></asp:Label>+
                    </div>
                    <div class="hi">
                        <asp:Label ID="Label75" runat="server" Text="Paternity Leave :      "></asp:Label>
                    </div>
                    <div class="lab">
                        <asp:Label ID="Label6" runat="server"></asp:Label>
                    </div>

                </div>
            </div>
        </div>


        <br />
        <br />
        <br />
        <div class="templ">

            <asp:Button runat="server" OnClientClick="return false;" class="btn btn-primary btn-lg" data-target="#login" data-toggle="modal" Text="Request Leave"></asp:Button>
        </div>
        <div class="container">
            <div class="row">
                <div class="modal" id="login" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="header">
                                <div class="modal-header">
                                    <div class="hil">

                                        <asp:Label runat="server">Request Leave</asp:Label>

                                    </div>
                                </div>
                            </div>
                            <div class="modal-body">

                                <div class="input-group">
                                    <label for="exampleLeave">Select Type of Leave</label>

                                    <asp:DropDownList ID="leaveType" runat="server">
                                        <asp:ListItem Enabled="true" Text="Select Type" Value="-1"></asp:ListItem>
                                        <asp:ListItem Text="Earned Leave" Value="EL"></asp:ListItem>
                                        <asp:ListItem Text="Casual Leave " Value="CL"></asp:ListItem>
                                        <asp:ListItem Text="Sick Leave" Value="SL"></asp:ListItem>
                                        <asp:ListItem Text="Half Day" Value="HL"></asp:ListItem>
                                        <asp:ListItem Text="Maternity Leave " Value="ML"></asp:ListItem>
                                        <asp:ListItem Text="Paternity Leave" Value="PL"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" CssClass="validate"
                                        ControlToValidate="leaveType"
                                        InitialValue="-1"
                                        ErrorMessage="Designation is required."> *
                                    </asp:RequiredFieldValidator>


                                    <br />
                                </div>
                                <div class="input-group">
                                    <label for="exampleLeave">State Reason</label>
                                    &nbsp&nbsp&nbsp 
                                
                                
                                    <asp:TextBox runat="server" ID="reason" placeholder="Enter Reason"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" CssClass="validate"
                                        ControlToValidate="reason"
                                        ErrorMessage="Need to specify Reason for Leave"> *
                                    </asp:RequiredFieldValidator>
                                    <br />
                                </div>
                                <div class="input-group">
                                    <label for="exampleLeave">Enter Number Of Days </label>
                                    &nbsp&nbsp&nbsp 
                                                                
                                    <asp:TextBox runat="server" ID="TextBox2" placeholder="Enter Days"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" CssClass="validate"
                                        ControlToValidate="TextBox2"
                                        ErrorMessage="*"> *
                                    </asp:RequiredFieldValidator>
                                     <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" 
                                      ControlToValidate="TextBox2" ErrorMessage="Value must be a number" />

                                    <br />
                                </div>



                                <label for="exampleLeave">Select Leave Starting Date</label>
                                <br />

                                <div class="row">
                                    <div class='col-sm-3'>
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker1'>
                                                <input runat="server" id="date1" type='text' class="form-control" />
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>




                                <label for="exampleLeave">Select Leave Ending Date</label>
                                <br />
                                <div class="row">
                                    <div class='col-sm-3'>
                                        <div class="form-group">
                                            <div class='input-group date' id='datetimepicker'>
                                                <input runat="server" id="date2" type='text' class="form-control" />
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                            <div class="modal-footer">
                                <asp:Label ID="Msg" runat="server"></asp:Label>
                                <asp:Button type="button"  runat="server" class="btn btn-primary" OnClick="Unnamed_Click" Text="Send"></asp:Button>
                                <asp:Button type="button" runat="server" class="btn btn-primary" data-dismiss="modal" Text="Close"></asp:Button>
                            </div>
                            <asp:Label runat="server" ID="Label8"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <script type="text/javascript">
            $(function () {
                var bindDatePicker = function () {
                    $(".date").datetimepicker({
                        format: 'YYYY-MM-DD',
                        icons: {
                            time: "fa fa-clock-o",
                            date: "fa fa-calendar",
                            up: "fa fa-arrow-up",
                            down: "fa fa-arrow-down"
                        }
                    }).find('input:first').on("blur", function () {
                        // check if the date is correct. We can accept dd-mm-yyyy and yyyy-mm-dd.
                        // update the format if it's yyyy-mm-dd
                        var date = parseDate($(this).val());

                        if (!isValidDate(date)) {
                            //create date based on momentjs (we have that)
                            date = moment().format('YYYY-MM-DD');
                        }

                        $(this).val(date);
                    });
                }

                var isValidDate = function (value, format) {
                    format = format || false;
                    // lets parse the date to the best of our knowledge
                    if (format) {
                        value = parseDate(value);
                    }

                    var timestamp = Date.parse(value);

                    return isNaN(timestamp) == false;
                }

                var parseDate = function (value) {
                    var m = value.match(/^(\d{1,2})(\/|-)?(\d{1,2})(\/|-)?(\d{4})$/);
                    if (m)
                        value = m[5] + '-' + ("00" + m[3]).slice(-2) + '-' + ("00" + m[1]).slice(-2);

                    return value;
                }

                bindDatePicker();
            });
        </script>



    </form>
</body>
</html>
