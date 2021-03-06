﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_login.aspx.cs" Inherits="placement_management_system.student_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css" media="screen,projection" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script type="text/javascript" src="../materialize/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
    <title></title>
</head>
<body>
    <div runat="server" id="alert"></div>
    <nav class="red lighten-1">
        <div class="nav-wrapper">

            <span style="margin-left: 3%; font-size: 2em;">Placement Cell</span>


            <ul id="nav" style="margin-right: 3%;" class="right">
                <li><a href="student_login.aspx">Student</a></li>
                <li><a href="../company/company_login.aspx">Company</a></li>
                <li><a href="../admin/admin_login.aspx">Admin</a></li>
            </ul>
        </div>

    </nav>
    <div class="container">
        <h3 class="center" style="margin-top: 30px;">Student Login</h3>
        <div class="row" style="margin-top: 30px;">
            <div class="offset-s3 col s6">
                <form runat="server">
                    <div class="row">
                        <div class="input-field col s12">
                            <asp:TextBox runat="server" ID="clg_id" class="validate" />
                            <label for="first_name">College ID</label>
                        </div>
                        <div class="input-field col s12">
                            <asp:TextBox runat="server" ID="pass" TextMode="Password" class="validate" />
                            <label for="first_name">Password</label>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <a href="forget_pass.aspx">Forget password? click here to recover</a>
                            </div>
                        </div>
                        <div class="input-field col s12">
                            <asp:Button runat="server" ID="login_btn" class="btn waves-effect waves-light" Text="Login" OnClick="login_btn_click" />

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
