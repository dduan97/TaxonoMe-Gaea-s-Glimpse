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
    <link rel="stylesheet" type="text/css" href="./Files/css/main.css">

</head>
<body>
    <div class="box">
        <h1 >welcome back</h1>
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>
            <form class="login" id="login-fields" action="index.jsp" method="post">
                    <input class="login" name="username" type="text" id="username" placeholder="Username"/><br>
                    <input class="login" name="password" type="password" id="password" placeholder="Password"/><br>
                    <input id="submit" type="submit" value="Login"/>
            </form>
        </div>
    </div>
</body>
</html>
