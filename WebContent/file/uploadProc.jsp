<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import ="com.oreilly.servlet.multipart.*" %>
<%
	String savePath = application.getRealPath("file");
	int sizeLimit = 10 * 1024 * 1024;
	String name = "";
	String subject = "";
	String fileName1 = "";
	String fileName2 = "";
	String originFileName1 = "";
	String originFileName2 = "";
	try{
		MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());
		
		name = multi.getParameter("name");
		subject = multi.getParameter("subject");
		Enumeration files = multi.getFileNames();
		
		
		//file 태그의 name에 설정된 값을 가져온다.
		String file2 = (String)files.nextElement();
		//서버에 저장된 파일 이름
		fileName2 = multi.getFilesystemName(file2);
		//전송전 원래의 파일 이름
		originFileName2 = multi.getOriginalFileName(file2);
		
		//file 태그의 name에 설정된 값을 가져온다.
		String file1 = (String)files.nextElement();
		//서버에 저장된 파일 이름
		fileName1 = multi.getFilesystemName(file1);
		//전송전 원래의 파일 이름
		originFileName1 = multi.getOriginalFileName(file1);
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업로드 처리</title>
</head>
<body>
	<%= savePath %>
	<form action="download.jsp" method="post" name="uploadProc">
		<input type="hidden" name="name" value="<%= name %>">
		<input type="hidden" name="subject" value="<%= subject %>">
		<input type="hidden" name="fileName1" value="<%= fileName1 %>">
		<input type="hidden" name="fileName2" value="<%= fileName2 %>">
		<input type="hidden" name="originFileName1" value="<%= originFileName1 %>">
		<input type="hidden" name="originFileName2" value="<%= originFileName2 %>">
	</form>
	<a href="#" onclick="javascript:uploadProc.submit()">
		업로드 확인 및 다운로드 페이지 이동
	</a>
</body>
</html>