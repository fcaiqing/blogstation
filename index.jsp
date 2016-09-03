<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎</title>
</head>
<body>
<%response.sendRedirect("showArticles?action=showAllArticles"); %>
<%-- 
<jsp:forward page="showArticles?action=showAllArticles"></jsp:forward>
--%>
</body>
</html>