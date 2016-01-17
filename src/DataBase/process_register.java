package DataBase;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;


public class process_register extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String registerUsername = request.getParameter("username");
        String registerPassword = request.getParameter("password");
        String language = request.getParameter("language");
        switch (language)
        {
            case "english":
                language = "en";
                break;
            case "spanish":
                language="es";
                break;
            case "french":
                language = "fr";
                break;
            case "german":
                language = "de";
                break;
        }
        String query = null;
        try
        {
            Connection con = dataBaseConnect.getConnection();
            Statement st = con.createStatement();
             query= String.format("INSERT into users ( user,password,language) VALUES ('%s','%s', '%s');",registerUsername,registerPassword,language);
            int i = st.executeUpdate(query);
            HttpSession session = request.getSession();
            session.setAttribute("username",registerUsername);
            session.setAttribute("lan",language);
            response.sendRedirect("/index.jsp");
        }
        catch (Exception e)
        {
            response.getWriter().println(query);
        }
    }
}
