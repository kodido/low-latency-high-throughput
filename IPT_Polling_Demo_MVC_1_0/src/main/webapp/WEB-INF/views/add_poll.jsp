<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>IPT Polling Demo MVC 1.0 | Add Poll</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../../css/custom.css">
        <style>
        </style>
    </head>
    <body>
        <!-- Enable HTML 5 elements in IE 7+8 -->
        <!--[if lt IE 9]>
           <script src="js/html5shiv.min.js"></script>
        <![endif]-->
        <div class="container">

            <!-- Horizontal navigation -->
            <div class="navbar-header">

                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="..">
                    <img alt="IPT Polling Demo MVC 1.0" src="../../img/ipt_duke_sm.png">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="navbar-collapse bs-navbar-collapse collapse in" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="..">Home<span class="sr-only">(current)</span></a></li>
                    <!--<li><a href="#">Link</a></li>-->
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Polls <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="browse">Browse All Polls</a></li>
                            <li><a href="velocity">Browse All Polls [Velocity]</a></li>
                            <li class="divider"></li>
                            <li><a href="#" class="active">Add New Poll</a></li>
                            <li><a href="manage">Manage Polls</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Link</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                </ul>               
            </div><!-- /.navbar-collapse -->

            <div class="jumbotron">
                <h1>IPT Polling Demo MVC 1.0</h1>
            </div>

            <h2>Add New Poll</h2>

            <div class="row">
                <section class="col-xs-12 col-sm-8">
                    <form class="form-horizontal" method="POST">
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">Poll Title</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="title" id="title" placeholder="Title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="question" class="col-sm-2 control-label">Poll Question</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="question" id="question" placeholder="Question">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="from" class="col-sm-2 control-label">Active From</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" name="from" id="from" placeholder="From">
                            </div>
                            <label for="to" class="col-sm-2 control-label"> To </label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" name="to" id="to" placeholder="To">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="alternatives-group" class="col-sm-2 control-label">Alternatives</label>
                            <div class="col-sm-6">
                                <ul id="alternatives-sortable">
                                    <li id="1" class="ui-state-default">
                                        <div class="input-group">
                                            <span class="input-group-addon label-success" id="basic-addon1">@</span>
                                            <input type="text" class="form-control" placeholder="Type alternative description here ...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-default remove-alternative" type="button">X</button>
                                            </span>
                                        </div><!-- /input-group -->
                                    </li>
                                </ul>
                            </div>
                            <div class="col-sm-2 left">
                                <button id="add-alternative" type="button" class="btn btn-success">Add Alternative</button>
                            </div>

                            <input type="hidden" name="alternatives" id="alternatives">
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" checked> Show me the poll
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button id="submit-poll" type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                </section>
            </div> <!-- DIV class="row" -->

            <footer class="row">
                <div class="col-xs-12 col-md-8">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2932.74966193396!2d23.36926430984111!3d42.6878448938619!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40aa85f2f0eebb1f%3A0xb337ee6918350c9c!2sIPT+-+Intellectual+Products+%26+Technologies!5e0!3m2!1sbg!2sbg!4v1447889935746" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="col-xs-12 col-md-4">
                    <h2>Contacts</h2>
                    <address>
                        <strong>IPT – Intellectual Products & Technologies Ltd.</strong><br>
                        Address: bl. 44 – office 2, Slatinska Str., Slatina<br>
                        Sofia, Bulgaria<br>
                        Tel.: (+359 2) 973 38 38<br>
                        E-mail: <a href="mailto:office@iproduct.org">office@iproduct.org</a><br>
                        Latitude: 42.68836, Longitude: 23.37077
                    </address>
                </div>
            </footer>
        </div> <!-- container -->

        <!-- jQuery library -->
        <script src="../../js/jquery-1.11.3.js"></script>
        <script src="../../js/jquery-ui.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/add_poll.js"></script>
    </body>
</html>

