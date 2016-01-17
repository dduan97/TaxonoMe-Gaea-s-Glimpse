<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gaea's Glimpse</title>

    <link rel="stylesheet" type="text/css" href="./Files/css/navigation.css">
    <link rel="stylesheet" type="text/css" href="./Files/css/index.css">


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

</head>
<body>

<!-- search bar -->
<br><br><br><br><br><br><br><br><br><br>
<center>
    <div class="box">
        <div class="container-1">
            <span class="icon"><i class="fa fa-search"></i></span>
            <form action="search.jsp" method="post">
                <input type="search" id="search" placeholder="Search..." name="tags"/>
                <input id="submit" type="submit" value="Search">
            </form>
        </div>
    </div>

    <br><br><br><br><br><br>


    <!-- bottom selection panel -->
    <div class=Container id="panel">
        Search Category GUI goes here
        <div id="d1"></div>
    </div>

</center>
</body>
</html>
