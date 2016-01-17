package DataBase;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class SeachQuery {
    static public ArrayList<Species> getSearch(String tagstring) {

        //format the string
        tagstring = tagstring.replaceAll("(,( )*)| ( )*", " ");
        String[] tags = tagstring.split(" ");

        Statement stmt = null;
        //initialize the query with the first (And possibly only) tag
        String query = "SELECT NAME , Tags, Description, Picture FROM species WHERE tags LIKE '%" + tags[0] + "%'";

        try(Connection con = dataBaseConnect.getConnection()) {
            //for loop is necessary because we don't know how many tags they'll put in, and I don't know how to do this
            // with prepared statements
            for (int i = 1; i < tags.length; i++) {
                query = query + " AND '%" + tags[i] + "%'";
            }
            //using executeQuery becuase we're dealing with a SELECT statement

            stmt = con.createStatement();
            //store results
            ResultSet results = stmt.executeQuery(query);

            ResultSet rs = results;
            ArrayList<Species> retVal = new ArrayList<>();

            while (rs.next()) {
                Species temp = new Species();
                temp.setName(rs.getString("name"));
                temp.setTags(rs.getString("tags"));
                temp.setPicture(rs.getString("picture"));
                temp.setDescription(rs.getString("description"));

                retVal.add(temp);

            }

            return retVal;

        } catch (SQLException e) {
            System.out.println("query done goofed with SQLException");
            System.out.println(e.getMessage());
        }

        return null;
    }
}
