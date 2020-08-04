<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
String select=request.getParameter("select_status");
out.println("변경된 상태 : " + select);

if(select.equals("1")){
	out.println("(미승인)");
}else if(select.equals("2")){
	out.println("(승인)");
}else if(select.equals("3")){
	out.println("(반려)");
}



%>

변경완<br>

<a class="waves-effect waves-light btn" href="manage_club.do">목록으로</a>
</body>
</html>