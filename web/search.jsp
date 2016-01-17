<%@ page import="DataBase.SeachQuery" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DataBase.Species" %><%--
  Created by IntelliJ IDEA.
  User: matty
  Date: 1/16/16
  Time: 10:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gaea's Glimpse</title>
    <link rel="stylesheet" type="text/css" href="./Files/css/navigation.css">
</head>
<!-- top navigation bar -->
<ul>
    <li><a class="active" href="http://gaeasglimpse.mybluemix.net/#home">
        <div id="home"><img src=./Files/Images/home.png></div>
    </a></li>
    <li><a href="#news"> Forum </a></li>
    <li><a href="#contact"> Aware </a></li>
    <li><a href="#about"> About </a></li>
    <li id="login"><a href="#about"> Login</a></li>
</ul>

<body>

<div id="resText"
     style='background-color: 333333; color: white; margin: 20px; margin-left: 40px;height: 80px; width: 1000px; border-radius: 8px 8px 8px 8px; float: left; word-wrap: break-word;'>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Results</h1></div>


<%
    ArrayList<Species> species = SeachQuery.getSearch(request.getParameter("tags"));
    for (int i = 0; i < species.size(); i++) {

%>

<!-- Java Side Here -->
<div id="panel1"
     style="background-color: 333333; color: white; margin: 5px; margin-left: 40px;height: 150px; width: 1000px; border-radius: 8px 8px 8px 8px; float: left; word-wrap: break-word;">
    <br>
    <div id="thumbnail1"
         style="background-color: black;        margin: -2px 10px 0px 10px;      height: 120px;      width: 150px; float: left;">
        <img src="<%=species.get(i).getPicture()[0]%>" style="height: 120px; width:150px;" href="www.google.com"></div>
    <div id="thumbText1" style="font-size: 16px"><a href="#"><%=species.get(i).getName()%>
    </a> <br><br>
        <%=species.get(i).getDescription()%>
    </div>
</div>

<% }
%>
</body>
</html>
