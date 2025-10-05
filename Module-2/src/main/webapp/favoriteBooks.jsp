<%-- Irene Carrillo Jaramillo, Module 2 Assignment, 09/22/2025
This program will display a table with books I've enjoyed reading. This program
will contain Scriptlets and an HTML table format. --%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Favorite Books</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
	<h1>My Favorite Books</h1>
	
	<p> This table shows my top 5 favorite books I've enjoyed reading.
		Each record will contain the Title, Author and Genre. </p>
		
	<%-- This will make an array of books with the title, author and genre included. --%>
	<% String[] [] books = {
		{"The Comfort Book", "Matt Haig", "Self-help"},
		{"The Let Them Theory", "Mel Robbins", "Self-help"},
		{"Demon Slayer: Kimetsu no Yaiba", "Koyoharu Gotouge", "Manga"},
		{"Twilight", "Stephenie Meyer", "Young Adult"},
		{"Clarity & Connection", "Yung Pueblo", "Poetry"}
		};
	%>
	
	<table>
		<tr>
		<th>Title</th>
		<th>Author</th>
		<th>Genre</th>
		</tr>
		
	<%-- This will loop through the array and print the book records in a table. --%>
	<%
		for (int i = 0; i< books.length; i++) {
	%>
	
	<%-- This will display the title, author and genre. --%>
		<tr>
		<td><%= books[i][0] %></td>
		<td><%= books[i][1] %></td>
		<td><%= books[i][2] %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>