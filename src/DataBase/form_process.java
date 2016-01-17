package DataBase;

import jdk.internal.util.xml.impl.Input;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.sql.Connection;
import java.sql.Statement;


public class form_process extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String tags = request.getParameter("tags");
        String pic = request.getParameter("pic");
        String description = request.getParameter("des");

        try {

            Connection connection = dataBaseConnect.getConnection();
            Statement st = connection.createStatement();
            String query = String.format("INSERT into species ( Name,Tags,Picture,Description) VALUES ('%s','%s', '%s','%s');", name, tags, pic, description);
            st.executeUpdate(query);
            response.sendRedirect("index.jsp");


        } catch (Exception e) {
            response.getWriter().println(e.getMessage());
        }

    }
}
