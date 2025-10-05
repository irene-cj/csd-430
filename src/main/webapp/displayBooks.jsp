<%-- Irene Carrillo Jaramillo, Module 4 Assignment, 10/04/2025
This JSP page gathers data from the FavBookBean JavaBean and displays it in a formatted HTML table. --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.FavBookBean" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Books (Using JavaBean)</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
    <h1>My Favorite Books</h1>

    <p>
        This table displays five of my favorite books. 
        The data is stored in a JavaBean class and displayed dynamically using JSP scriptlets.
    </p>

    <%-- This will save the FavBookBean data and store them in an array. --%>
    <%
        FavBookBean[] books = {
            new FavBookBean("The Comfort Book", "Matt Haig", "Self-help", 2021, "A comforting reflection on life."),
            new FavBookBean("The Let Them Theory", "Mel Robbins", "Self-help", 2023, "Encourages letting people be themselves."),
            new FavBookBean("Demon Slayer: Kimetsu no Yaiba", "Koyoharu Gotouge", "Manga", 2016, "A story of courage and family."),
            new FavBookBean("Twilight", "Stephenie Meyer", "Young Adult", 2005, "A vampire romance classic."),
            new FavBookBean("Clarity & Connection", "Yung Pueblo", "Poetry", 2021, "Poems about healing and self-discovery.")
        };
    %>

    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Genre</th>
            <th>Year</th>
            <th>Description</th>
        </tr>

        <%-- This will loop through Bean array and print each record. --%>
        <%
            for (FavBookBean book : books) {
        %>
            <tr>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getGenre() %></td>
                <td><%= book.getYear() %></td>
                <td><%= book.getDescription() %></td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
