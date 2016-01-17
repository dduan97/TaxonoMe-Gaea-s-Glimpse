package DataBase;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class process_login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {

            Connection connection = dataBaseConnect.getConnection();
            Statement st = connection.createStatement();
            ResultSet rs;
            String query = String.format("select * from users where user = '%s' and password = '%s' ", username, password);
            rs = st.executeQuery(query);
            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);

                String lanquery = String.format("SELECT language FROM users WHERE user = '%S' ", username);
                Statement lan = connection.createStatement();
                ResultSet lanR = lan.executeQuery(lanquery);

                while (lanR.next())
                    session.setAttribute("lan", lanR.getString("language"));
                //out.println("welcome " + userid);
                //out.println("<a href='logout.jsp'>Log out</a>");

                response.sendRedirect("/index.jsp");
            } else {
                response.sendRedirect("/login.jsp");
            }

        } catch (Exception e) {
            response.getWriter().println(e.getMessage());
        }

    }
}
