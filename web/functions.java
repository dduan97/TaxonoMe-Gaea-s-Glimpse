import java.util.*;

public class AnimalQuery {
    public AnimalQuery(Connection connection, ArrayList<String> taglist){
        con = connection;
        tags = taglist;
    }

    //method to take the results from the SQL query
    public void interpretResults(ResultSet results){
        //initializing the list to hold the names, tags, and descriptions
        ResultSet rs = results;
        ArrayList<ArrayList<String>> results_2D = new ArrayList<ArrayList<String>>();
        ArrayList<String> one_result = new ArrayList<String>();

        //filling the list
        while(rs.hasNext()){
            one_result.add(rs.getString("name"));
            one_result.add(rs.getString("tags"));
            one_result.add(rs.getString("description"));
            results_2D.add(one_result);
            one_result.clear();
        }

        //print the result list as a string (can format later)
        out.println(results_2D.toString());
    }

    public void main(String[] args) throws SQLException {
        Statement stmt = null;
        //initialize the query with the first (And possibly only) tag
        String query = "SELECT name, tags, description FROM species WHERE tags LIKE '%" + tags.get(0) + "%'";

        try{
            con.setAutoCommit(false);

            //for loop is necessary because we don't know how many tags they'll put in, and I don't know how to do this
            // with prepared statements
            for(int i = 1; i < tags.size(); i++) {
                query = query + " AND '%" + tags.get(i) + "%'";
            }
            //using executeQuery becuase we're dealing with a SELECT statement

            stmt = con.executeQuery(query);
            //store results
            ResultSet results = stmt.executeQuery();
            interpretResults(results);
        }
        catch (SQLException e){
            out.println("query done goofed with SQLException");
        }
    }
}