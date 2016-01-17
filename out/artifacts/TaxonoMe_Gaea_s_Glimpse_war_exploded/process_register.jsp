<%--
  Created by IntelliJ IDEA.
  User: Dennis
  Date: 1/17/2016
  Time: 4:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="java.sql.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String registerUsername = request.getParameter("username");
    String registerPassword = request.getParameter("password");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("database address",
                "username", "password");
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into users(username, password) values ( + '" + registerUsername + "','" + registerPassword + "')");
    }
    catch(SQLException e){
        out.println("sql error!");
    }
    catch(ClassNotFoundException e){
        out.println("class not found!");
    }
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("index.jsp");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("login.jsp");
    }


%>
<html>
<head>
    <title>Whatevs</title>
</head>
<body>

</body>
</html>
