<%--
  Created by IntelliJ IDEA.
  User: Dennis
  Date: 1/17/2016
  Time: 5:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("database address", "username", "password");
        Statement st = con.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from members where uname='" + username + "' and pass='" + password + "'");
        if (rs.next()) {
            session.setAttribute("username", username);
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("login_success.jsp");
        } else {
            out.println("Invalid password <a href='index.jsp'>try again</a>");
        }
    }
    catch(SQLException e){
        out.println("sql error logging in!");
    }
    catch(ClassNotFoundException e){
        out.println("class error!");
    }
%>