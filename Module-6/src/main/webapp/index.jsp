<%@ page import="java.sql.*, csd_430.Module_6.DBConnection" %>
<html>
<head>
    <title>Irene’s Movies</title>
</head>
<body>
    <h2>Select a Movie</h2>
    <form action="display.jsp" method="post">
        <select name="movie_id">
            <%
                try (Connection conn = DBConnection.getConnection();
                     Statement stmt = conn.createStatement();
                     ResultSet rs = stmt.executeQuery("SELECT movie_id, title FROM irene_movies_data")) {
                    while (rs.next()) {
                        int id = rs.getInt("movie_id");
                        String title = rs.getString("title");
            %>
                        <option value="<%= id %>"><%= id %> - <%= title %></option>
            <%
                    }
                } catch (Exception e) {
                    out.println("<p>Error: " + e.getMessage() + "</p>");
                }
            %>
        </select>
        <input type="submit" value="View Movie">
    </form>
</body>
</html>
