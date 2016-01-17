<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gaea's Glimpse</title>


    <link rel="stylesheet" type="text/css" href="./Files/css/main.css">
    <link rel="stylesheet" type="text/css" href="./Files/css/navigation.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700,400italic,700italic' rel='stylesheet'
          type='text/css'>


    <ul>
        <li><a class="active" href="index.jsp">
            <div id="home"><img id="nav" height=70px src=./Files/Images/logo.png></div>
        </a></li>
        <div id="links">
            <li><a href="forum.jsp"> Forum </a></li>
            <li><a href="Aware.jsp"> Aware </a></li>
            <li><a href="AboutUs.jsp"> About </a></li>
            <li id="login"><a href="register.jsp">Register</a></li>
            <li id="login"><a href="login.jsp">Login</a></li>
        </div>
    </ul>
</head>

<body>

<br><br><br><br><br>
<div style="background-color: white">

    <h1>Add Into the DataBase</h1>

    <form action="formprocess" method="post" >
        Name: <input type="text" name="name"><br>
        Tags: <input type="text" name="tags"><br>
        Picture: <input type="text" name="pic"><br>
        Description: <input type="text" name="des"><br>


        <input type="submit" value="Submit">
    </form>

    <br><br><br><br>
</div>

</body>

</html>