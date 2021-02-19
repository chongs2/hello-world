
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File"%>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 결과 </title>
</head>
<body>
<% 
	String filename = "";
	int sizeLimit = 15 * 1024 * 1024;
	//한번에 올릴 수 있는 파일 용
	
	//	upload 폴더의 상대경로를 통해 파일을 저장할 절대 경로를 구하는 것입니다. 
	String realPath = request.getServletContext().getRealPath("upload");
	System.out.println(realPath);
	
	//upload 폴더가 없는 경우 폴더를 만들어라.
	File dir = new File(realPath);
	if (!dir.exists()) dir.mkdirs();
		
	// request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 기본 정책입니다.
	MultipartRequest multpartRequest = null;
	multpartRequest = new MultipartRequest(request, realPath, 
			sizeLimit, "utf-8",new DefaultFileRenamePolicy());


	String title = multpartRequest.getParameter("title");
	filename = multpartRequest.getFilesystemName("photo");
	// fileform.jsp에서 name으로 지정한 title, photo 값을 가지고 옵니다.
%>
제목 : <%=title %><br />
파일명 : <%=filename%><br />
<img src="${pageContext.request.contextPath }/upload/<%=filename%>">


</body>
</html>
