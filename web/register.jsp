<%--
  Created by IntelliJ IDEA.
  User: Dennis
  Date: 1/17/2016
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="./Files/css/login.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700,400italic,700italic' rel='stylesheet' type='text/css'>


</head>
<body>
<div class="box">
    <h1 >register to start contributing</h1>
    <div class="container-1">
        <span class="icon"><i class="fa fa-search"></i></span>
        <form class="login" id="login-fields" action="/process_register" method="post">
            <input class="login" name="username" type="text" id="username" placeholder="username"/><br>
            <input class="login" name="password" type="password" id="password" placeholder="password"/><br>
            <select name="language">
                <option value="english">English</option>
                <option value="spanish">Spanish</option>
                <option value="french">French</option>
                <option value="german">German</option>
            </select><br>
            <input id="submit" type="submit" value="Register"/>
        </form>


    </div>
</div>
</body>
</html>