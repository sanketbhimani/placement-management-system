﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="start_test.aspx.cs" Inherits="placement_management_system.company.start_test" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <link href="../materialize/css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script type="text/javascript" src="../materialize/jquery-2.1.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script>
    <title></title>
</head>
<body>

    <nav style="position: fixed; z-index: 1000;" class="red lighten-1">
        <div class="nav-wrapper row">

            <span style="margin-left: 3%; font-size: 2em;" class="col s3">Placement Cell</span>
            <span style="align-self: center; font-size: 1.5em;" class="col s6">
                <center>
                    Hello, <asp:Label ID="name" runat="server" Text=""></asp:Label>
                </center>
            </span>

            <ul id="nav" class="offset-s1 col s1">
                <li class="right"><a href="logout.aspx">Logout</a></li>
            </ul>
        </div>

    </nav>
    <ul id="nav-mobile" class="side-nav fixed" style="height: 100%; width: 24%; transform: translateX(0px); border-right: solid thin #e0e0e0; transform: translateX(0px); margin: 0px 0px 0px 0px; padding-top: 5.35%;">
        <li class="bold"><a href="#" style="padding-left: 48px;" class="waves-effect waves-teal">Deshboard</a></li>
        <li class="bold"><a href="add_question.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">Add Question</a></li>
        <li class="bold"><a href="view_question.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">View & Edit Question</a></li>
        <li class="bold"><a href="edit_details.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">View & edit details</a></li>
         <li class="bold active"><a href="start_test.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">Start Test</a></li>  
         <li class="bold"><a href="set_min_marks.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">Set minimum marks</a></li>
        <li class="bold"><a href="set_schedule.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">Set Schedule</a></li>
        <li class="bold"><a href="view_students.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">View Students</a></li>
        <li class="bold"><a href="logout.aspx" style="padding-left: 48px;" class="waves-effect waves-teal">Logout</a></li>
    </ul>



    <div style="margin-top: 6%; width: 100%; padding: 0px; position: absolute; padding-left: 24%;">
        <div class="grey lighten-4" style="width: 100%; padding-top: 4px; padding-bottom: 6px;">
            <h4 class="center-align">Start Test</h4>
        </div>
        <div class="container" style="margin-top: 1%; margin-left: 9%; width: 90%;">
            <form runat="server">
                <div runat="server" id="start_test_div">
                    <div class="row">
                        <div class="input-field" style="margin-left: 3%; margin-top: 7.5%;">
                            <div class="col 3">
                                <input id="htime" placeholder="hours"  runat="server" type="number" class="validate">
                            </div>
                            <div class="col 1">
                                <span style="font-size: 2.4em;">:</span>
                            </div>
                            <div class="col 3">
                                <input id="mtime" placeholder="minutes" runat="server" type="number" class="validate">
                            </div>
                            <div class="col 4">
                                <span style="font-size: 2.4em;">time</span>
                            </div>

                        </div>
                    </div>
                    <div style="margin-left: 3%;">
                        <asp:Button ID="start_test_btn" runat="server" class="waves-effect waves-light btn" OnClick="start_test_click" Text="start test" />

                    </div>
                </div>
                <div runat="server" id="stop_test_div" style="padding: 3%;">
                    <div class="row">
                        <h3>Test is running click to stop now otherwise it will stop after specified time</h3>
                    </div>
                    <div style="margin-left: 3%;">
                        <asp:Button ID="stop_test_btn" runat="server" class="waves-effect waves-light btn" OnClick="stop_test_click" Text="stop test" />
                    </div>
                </div>
                <div runat="server" id="complete_shedule_div" style="padding: 3%;">
                    <div class="row">
                        <h3>First complete the shedule details first</h3>
                    </div>

                </div>
            </form>
        </div>
    </div>


</body>
</html>
