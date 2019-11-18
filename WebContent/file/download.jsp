<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String fileName1 = request.getParameter("fileName1");
	String fileName2 = request.getParameter("fileName2");
	String originFileName1 = request.getParameter("originFileName1");
	String originFileName2 = request.getParameter("originFileName2");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다운로드</title>
</head>
<body>
	올린 사람: <%= name %> <br>
	제목 : <%= subject %> <br>
	파일명1 : <a href="/JSP6/file/<%= fileName1 %>"><%= originFileName1 %></a>
	파일명2 : <a href="/JSP6/file/<%= fileName2 %>"><%= originFileName2 %></a>
</body>
</html>