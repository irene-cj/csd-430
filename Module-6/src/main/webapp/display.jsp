<%@ page import="java.sql.*, csd_430.Module_6.DBConnection" %>
<%-- Irene Carrillo Jaramillo, Module 5/6 Assignment, 10/12/25
This program will display the data from the database using a JavaBean. CSD 430 --%>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>
<%
    String idStr = request.getParameter("movie_id");
    if (idStr != null) {
        int movieId = Integer.parseInt(idStr);

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM irene_movies_data WHERE movie_id = ?")) {
            ps.setInt(1, movieId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
%>
                <h2>Movie Details</h2>
                <table border="1" cellpadding="5">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Genre</th>
                            <th>Release Year</th>
                            <th>Rating</th>
                            <th>Director</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%= rs.getInt("movie_id") %></td>
                            <td><%= rs.getString("title") %></td>
                            <td><%= rs.getString("genre") %></td>
                            <td><%= rs.getInt("release_year") %></td>
                            <td><%= rs.getInt("rating") %></td>
                            <td><%= rs.getString("director") %></td>
                        </tr>
                    </tbody>
                </table>
<%
            } else {
                out.println("<p>No movie found.</p>");
            }
        } catch (Exception e) {
            out.println("<p>Error: " + e.getMessage() + "</p>");
        }
    } else {
        out.println("<p>No movie ID selected.</p>");
    }
%>
</body>
</html>
