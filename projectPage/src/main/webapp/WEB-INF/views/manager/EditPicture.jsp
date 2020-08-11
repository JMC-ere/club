<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
   
    	첫번째 화면 현재 사진
  
			 	<img src="pic_view1.do" class="responsive-img">
		
			
			
<form:form action="pic_process.do" enctype="multipart/form-data" commandName="EditMainPictureVO" >
   	
   	<br>
   	   첫번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요<br>
   <label for="upload">사진선택</label>  : <input type="file" name="pic_upload" id="pic_upload"/>
	
	<input type="submit" class="waves-effect waves-light btn-small" value="사진 선택 완료">
   	<br>
  </form:form>
  
  <form action="url_process.do" method="post">
  <div class="input-field" style="width:30%;">
   <input type="url" name="filename" placeholder="이미지 url 입력">
	</div>
	<input type="submit" class="waves-effect waves-light btn-small" value="링크 입력 완료 ">
   	</form>
   	
</body>
</html>