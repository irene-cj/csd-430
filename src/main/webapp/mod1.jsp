<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Module 1 Assignment</title>
</head>
<body>
	<h1>Hello World !</h1>
	<%
	String message= "Today is: " + java.time.LocalDate.now();
	out.println("<p>" + message + "</p>");
	%>
</body>
</html>