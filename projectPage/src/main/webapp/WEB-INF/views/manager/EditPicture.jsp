<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/manager.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <p class="manager_title"> <br><br>메인 이미지 편집 페이지</p>
   <hr width="90%" color="green"><br><br>
   
<form id="first" action="pic_process.do" method="post">
   	
   	   첫번째 화면에 등록할 사진 선택<br>
    사진 선택  : <input type="file" name="upload" id="upload"/>
		<c:if test="${!empty EditMainPicture.filename}">
		<span>(${EditMainPicture.filename })파일을 선택하셨습니다. </span>
		</c:if>
	<input type="submit" class="waves-effect waves-light btn-small" value="완료">
   	<br>
   	
  </form>
   	
</body>
</html>