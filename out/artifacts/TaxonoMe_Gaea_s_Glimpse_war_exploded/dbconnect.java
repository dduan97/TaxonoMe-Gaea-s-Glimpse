import java.sql.*;

public class DBConnect {

    public Connection main(String[] args) throws SQLException {

        Connection conn = null;
        Properties connectionProps = new Properties();
        connectionProps.put("user", this.userName);
        connectionProps.put("password", this.password);

        conn = DriverManager.getConnection("jdbc:" + this.dbms + "://" + this.serverName + ":" + this.portNumber + "/", connectionProps);

        System.out.println("Connected to database");
        return conn;
    }
}