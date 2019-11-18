<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<form action="uploadProc.jsp" method="post" enctype="multipart/form-data">
		<table border="1">
			<tr>
				<td colspan="2" align="center">
				<b>파일 업로드</b>
				</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
					<input type="text" name="subject">
				</td>
			</tr>
			<tr>
				<td>파일명1</td>
				<td>
					<input type="file" name="fileName1" accept="image/*">
				</td>
			</tr>
			<tr>
				<td>파일명2</td>
				<td>
					<input type="file" name="fileName2" accept=".zip/">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="파일 업로드">
			</tr>
		</table>
	</form>
</body>
</html>