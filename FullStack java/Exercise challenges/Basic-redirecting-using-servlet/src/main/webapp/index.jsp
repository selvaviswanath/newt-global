<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index page</title>
</head>
<body>
<a href="<%= request.getContextPath() %>/Controller?page=login">Login</a>
<br/>
<a href="<%= request.getContextPath() %>/Controller?page=sign">sign up</a>
<br/>
<a href="<%= request.getContextPath() %>/Controller?page=about">about</a>

</body>
</html>