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
</head>
<body>
    <div class="box">
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>
            <form class="login" id="login-fields">
                    <input class="login" name="email" type="text" id="email" placeholder="Email"/>
                    <input class="login" name="password" type="password" id="password" placeholder="Password"/>
                    <input id="submit" type="submit" value="Login"/>
            </form>
        </div>
    </div>
</body>
</html>
