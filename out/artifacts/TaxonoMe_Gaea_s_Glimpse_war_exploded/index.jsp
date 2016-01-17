<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Gaea's Glimpse</title>
    <link rel="stylesheet" type="text/css" href="./Files/css/main.css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="./Files/css/navigation.css">

    <ul>
        <li><a class="active" href="index.jsp">
            <div id="home"><img id="nav" height = 70px src=./Files/Images/logo.png></div>
        </a></li>
        <div id="links">
            <li><a href="#news"> Forum </a></li>
            <li><a href="#contact"> Aware </a></li>
            <li><a href="#about"> About </a></li>
            <li id="login"><a href="register.jsp">Register</a></li>
        </div>
    </ul>

    <script type="text/javascript">
        var questionList = ["Size: ", "Animal type: ", "Habitat: ", "Location: "];
        var choiceList = [["large (think kangaroo)", "medium (think turtle)", "small (think ladybug)"],["mammal", "bird", "reptile", "insect", "fish"],["riverbank", "pond", "beach"],["land", "shore", "sea"]];
        var buttonTemplate = "<button type='button' class='question' onclick='nextq()'>lorem</button>";
        function nextq(){
            if(questionList.length == 0 || choiceList.length == 0){
                form = document.createElement('form');
                form.setAttribute('method', 'POST');
                form.setAttribute('action', 'search.jsp');
                myvar = document.createElement('input');
                myvar.setAttribute('name', '');
                myvar.setAttribute('type', 'search');
                myvar.setAttribute('value', 'wet');
                form.appendChild(myvar);
                document.body.appendChild(form);
                form.submit();
            }
            else {
                var q = questionList.pop();
                var choices = choiceList.pop();
                var choice1 = choices.pop();
                var choice2 = choices.pop();
                var choice3 = choices.pop();
                var button1 = buttonTemplate.replace("lorem", choice1);
                var button2 = buttonTemplate.replace("lorem", choice2);
                var button3 = buttonTemplate.replace("lorem", choice3);
                document.getElementById("buttons").innerHTML = "<h2>" + q + "</h2><form>" + button1 + button2 + button3 + "</form>";
            }
        }
    </script>

</head>
<body>

<br><br><br><br><br><br><br>

    <div class="box">
        <div class="container-1">
            <h1>search an animal description</h1><br><br>
            <form action="search.jsp" method="post">
                <input type="search" id="search" placeholder="Search..." name="tags"/>
                <input id="submit" type="submit" value="Search">
            </form><br><br>
        </div>
    </div>


<div class=Container id="panel">
    <div id="category">
        <h1>or answer a few questions to find similar species</h1><br>
        <div id='buttons'>
            <h2>Continent: </h2>
            <form>
                <button type="button" class="question" onclick="nextq()">Asia</button>
                <button type="button" class="question" onclick="nextq()">Africa</button>
                <button type="button" class="question" onclick="nextq()">North America</button>
                <button type="button" class="question" onclick="nextq()">South America</button>
                <button type="button" class="question" onclick="nextq()">Europe</button>
                <button type="button" class="question" onclick="nextq()">Australia</button>
            </form>
        </div>
    </div>
</div>


</body>
</html>
