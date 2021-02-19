<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form method='post' action='fileupload.jsp' enctype="multipart/form-data">
	제목 : <input type="text" name="title" /><br />
	이미지 : <input type='file' name='photo' /><br />
	<input type='submit' value='upload' />
</form>


</body>
</html>