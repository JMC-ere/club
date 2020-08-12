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
   


<form:form enctype="multipart/form-data" commandName="EditMainPictureVO" >
   	<br>
   	   첫번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요<br><br>   
   	 <!-- 사진 선택 폼 -->
   <label for="upload">사진선택</label><br> 
   <input type="hidden" name="picture_order"  value="1"/>
   <input type="file" name="pic_upload" id="pic_upload"/>
	<input type="submit" class="waves-effect waves-light btn-small" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='pic_process.do';">
	<input type="submit" value="미리보기 " onclick="javascript: form.action='pic_preview.do';form.target='_blank';">
	
   	<br>
  </form:form>
  	<!-- 사진 선택 폼 끝 -->
  
  	<!-- 사진 url 등록 폼 -->
  <form method="get" name="form">
  <input type="hidden" name="picture_order"  value="1"/>
  <div class="input-field" style="width:30%;">
   <input type="url" name="filename" placeholder="이미지 url 입력">
	</div>
	<input type="submit" class="waves-effect waves-light btn-small" value="입력한 링크로 배경 설정하기"
	onclick="javascript: form.action='url_process.do';"/>
	<input type="submit" value="미리보기 " onclick="javascript: form.action='url_preview.do';form.target='_blank';">
   	</form>
   	<!-- 사진 url 등록 폼 -->
   
   	
   	<br><br><br><hr width=80% color=CCCCCC><br><br><br>
<form:form action="pic_process.do" enctype="multipart/form-data" commandName="EditMainPictureVO" >
   	   두번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요<br><br>   
   	 <!-- 사진 선택 폼 -->
   <label for="upload">사진선택</label><br> 
   <input type="hidden" name="picture_order"  value="2"/>
   <input type="file" name="pic_upload" id="pic_upload"/>
	<input type="submit" class="waves-effect waves-light btn-small" value="선택한 사진으로 배경 설정하기">
   	<br>
  </form:form>
  	<!-- 사진 선택 폼 끝 -->
  
  	<!-- 사진 url 등록 폼 -->
  <form action="url_process.do" method="post">
  <input type="hidden" name="picture_order"  value="2"/>
  <div class="input-field" style="width:30%;">
   <input type="url" name="filename" placeholder="이미지 url 입력">
	</div>
	<input type="submit" class="waves-effect waves-light btn-small" value="입력한 링크로 배경 설정하기">
   	</form>
   	<!-- 사진 url 등록 폼 -->
   	
   	   	<br><br><br><hr width=80% color=CCCCCC><br><br><br>
<form:form action="pic_process.do" enctype="multipart/form-data" commandName="EditMainPictureVO" >
   	   세번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요<br><br>   
   	 <!-- 사진 선택 폼 -->
   <label for="upload">사진선택</label><br> 
   <input type="hidden" name="picture_order"  value="3"/>
   <input type="file" name="pic_upload" id="pic_upload"/>
	<input type="submit" class="waves-effect waves-light btn-small" value="선택한 사진으로 배경 설정하기">
   	<br>
  </form:form>
  	<!-- 사진 선택 폼 끝 -->
  
  	<!-- 사진 url 등록 폼 -->
  <form action="url_process.do" method="post">
  <input type="hidden" name="picture_order"  value="3"/>
  <div class="input-field" style="width:30%;">
   <input type="url" name="filename" placeholder="이미지 url 입력">
	</div>
	<input type="submit" class="waves-effect waves-light btn-small" value="입력한 링크로 배경 설정하기">
   	</form>
   	<!-- 사진 url 등록 폼 -->
   	
   	
   	   	<br><br><br><hr width=80% color=CCCCCC><br><br><br>
<form:form action="pic_process.do" enctype="multipart/form-data" commandName="EditMainPictureVO" >
   	   네번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요<br><br>   
   	 <!-- 사진 선택 폼 -->
   <label for="upload">사진선택</label><br> 
   <input type="hidden" name="picture_order"  value="4"/>
   <input type="file" name="pic_upload" id="pic_upload"/>
	<input type="submit" class="waves-effect waves-light btn-small" value="선택한 사진으로 배경 설정하기">
   	<br>
  </form:form>
  	<!-- 사진 선택 폼 끝 -->
  
  	<!-- 사진 url 등록 폼 -->
  <form action="url_process.do" method="post">
  <input type="hidden" name="picture_order"  value="4"/>
  <div class="input-field" style="width:30%;">
   <input type="url" name="filename" placeholder="이미지 url 입력">
	</div>
	<input type="submit" class="waves-effect waves-light btn-small" value="입력한 링크로 배경 설정하기">
   	</form>
   	<!-- 사진 url 등록 폼 -->
</body>
</html>