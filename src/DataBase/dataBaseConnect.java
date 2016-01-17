package DataBase;

import javax.annotation.Resource;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.lang.annotation.Repeatable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;


public class dataBaseConnect {

    static Connection getConnection() {
        try {
            Context ctx = new InitialContext();
            DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/gaeasglimpseDB");
            return ds.getConnection();


        } catch (Exception e) {

        }
        return null;
    }
}
