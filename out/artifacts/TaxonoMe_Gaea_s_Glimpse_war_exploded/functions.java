import java.util.*;
import java.sql.*;

public class AnimalQuery {
    public AnimalQuery(Connection connection, String taglist){
        con = connection;
        tagstring = taglist;
    }


    public void main(String[] args) throws SQLException {

        //format the string
        tagstring = tagstring.replaceAll("(,( )*)| ( )*", " ");
        tags = tagstring.split(" ");


        Statement stmt = null;
        //initialize the query with the first (And possibly only) tag
        String query = "SELECT name, tags, description, picture FROM species WHERE tags LIKE '%" + tags[0] + "%'";

        try{
            con.setAutoCommit(false);

            //for loop is necessary because we don't know how many tags they'll put in, and I don't know how to do this
            // with prepared statements
            for(int i = 1; i < tags.length(); i++) {
                query = query + " AND '%" + tags[i] + "%'";
            }
            //using executeQuery becuase we're dealing with a SELECT statement

            stmt = con.executeQuery(query);
            //store results
            ResultSet results = stmt.executeQuery();
        }
        catch (SQLException e){
            out.println("query done goofed with SQLException");
        }
        //initializing the list to hold the names, tags, and descriptions
        ResultSet rs = results;
        ArrayList<ArrayList<String>> results_2D = new ArrayList<ArrayList<String>>();
        ArrayList<String> one_result = new ArrayList<String>();

        //filling the list
        while(rs.hasNext()){
            one_result.add(rs.getString("name"));
            one_result.add(rs.getString("tags"));
            one_result.add(rs.getString("description"));
            one_result.add(rs.getString("picture"));
            results_2D.add(one_result);
            one_result.clear();
        }

        //print the result list as a string (can format later)
        out.println(results_2D.toString());
    }
}