<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="fileuploadservlet" enctype="multipart/form-data">
    <input type="file" name="file" multiple/>
    <input type="submit" value="Upload" />
</form>

</body>
</html>