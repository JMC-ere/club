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
<style>
div.edit_title{
text-align:center; width:100%;
}
div.formform{
text-align:center;
width : 90%
}

div.boxbox{
display:block;
margin:0 auto;
border:1px solid #CCCCCC; 
width:45%;
}

</style>
</head>
<body>

 <p class="manager_title"> <br><br>메인 이미지 편집 페이지</p>
   <hr width="90%" color="green"><br><br>
   

 <!-- 첫번째 사진 선택 폼 -->
 <div class="edit_title">첫번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요</div> <br><br> 
 <div class="formform row">
  <div class="boxbox">
<form:form id="upload1" enctype="multipart/form-data" commandName="EditMainPictureVO" > 
  	<input type="hidden" name="picture_order"  value="1"/>
  	<br><h5>이미지파일 선택</h5><br>
  	<input type="file" name="pic_upload" id="pic_upload"/><br>
   <br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기" 
   onclick="javascript: form.action='pic_preview.do';form.target='_blank';"
   style="width:80%; color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='pic_process.do';" style="width:80%;color:black;">	
   	<br><br>	
  </form:form>
  </div>
  
	<!-- 첫번째 사진 선택 폼 끝 -->
  
  	<!-- 첫번째 사진 url 등록 폼 -->
  	<div class="boxbox">
  <form method="get" name="form" id="upload2">
  <input type="hidden" name="picture_order"  value="1"/>
 	<br><h5>이미지 URL 입력</h5><br>
   <input type="url" name="filename" placeholder="예)https://www.example.com/photo/08/13/picture.jpg" style="width:90%;">
	<br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='url_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='url_process.do';" style="width:80%;margin-bottom:10px;color:black;">	
   	<br><br>
   	</form>
   	</div></div>
   	<!-- 첫번째 사진 url 등록 폼 끝 -->
   	
   	<br><br><hr width="90%" color="green"><br><br>
   	
  <!-- 두번째 사진 선택 폼 -->
 <div class="edit_title">두번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요</div> <br><br> 
 <div class="formform row">
  <div class="boxbox">
<form:form id="upload3" enctype="multipart/form-data" commandName="EditMainPictureVO" > 
  	<input type="hidden" name="picture_order"  value="1"/>
  	<br><h5>이미지파일 선택</h5><br>
  	<input type="file" name="pic_upload" id="pic_upload"/><br>
   <br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='pic_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='pic_process.do';" style="width:80%;color:black;">	
   	<br><br>	
  </form:form>
  </div>
  
	<!-- 두번째 사진 선택 폼 끝 -->
  
  	<!-- 두번째 사진 url 등록 폼 -->
  	<div class="boxbox">
  <form method="get" name="form" id="upload4">
  <input type="hidden" name="picture_order"  value="1"/>
 	<br><h5>이미지 URL 입력</h5><br>
   <input type="url" name="filename" placeholder="예)https://www.example.com/photo/08/13/picture.jpg" style="width:90%;">
	<br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='url_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='url_process.do';" style="width:80%;margin-bottom:10px;color:black;">	
   	<br><br>
   	</form>
   	</div></div>
   	<!-- 두번째 사진 url 등록 폼 끝 -->
   	
   	  	<br><br><hr width="90%" color="green"><br><br>
   	
  <!-- 세번째 사진 선택 폼 -->
 <div class="edit_title">세번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요</div> <br><br> 
 <div class="formform row">
  <div class="boxbox">
<form:form id="upload5" enctype="multipart/form-data" commandName="EditMainPictureVO" > 
  	<input type="hidden" name="picture_order"  value="1"/>
  	<br><h5>이미지파일 선택</h5><br>
  	<input type="file" name="pic_upload" id="pic_upload"/><br>
   <br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='pic_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='pic_process.do';" style="width:80%;color:black;">	
   	<br><br>	
  </form:form>
  </div>
  
	<!-- 세번째 사진 선택 폼 끝 -->
  
  	<!-- 세번째 사진 url 등록 폼 -->
  	<div class="boxbox">
  <form method="get" name="form" id="upload6">
  <input type="hidden" name="picture_order"  value="1"/>
 	<br><h5>이미지 URL 입력</h5><br>
   <input type="url" name="filename" placeholder="예)https://www.example.com/photo/08/13/picture.jpg" style="width:90%;">
	<br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='url_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='url_process.do';" style="width:80%;margin-bottom:10px;color:black;">	
   	<br><br>
   	</form>
   	</div></div>
   	<!-- 세번째 사진 url 등록 폼 끝 -->
   	
   	  	<br><br><hr width="90%" color="green"><br><br>
   	
  <!-- 네번째 사진 선택 폼 -->
 <div class="edit_title">네번째 화면에 등록할 사진을 선택하거나 이미지 URL을 입력하세요</div> <br><br> 
 <div class="formform row">
  <div class="boxbox">
<form:form id="upload7" enctype="multipart/form-data" commandName="EditMainPictureVO" > 
  	<input type="hidden" name="picture_order"  value="1"/>
  	<br><h5>이미지파일 선택</h5><br>
  	<input type="file" name="pic_upload" id="pic_upload"/><br>
   <br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='pic_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='pic_process.do';" style="width:80%;color:black;">	
   	<br><br>	
  </form:form>
  </div>
  
	<!-- 네번째 사진 선택 폼 끝 -->
  
  	<!-- 네번째 사진 url 등록 폼 -->
  	<div class="boxbox">
  <form method="get" name="form" id="upload8">
  <input type="hidden" name="picture_order"  value="1"/>
 	<br><h5>이미지 URL 입력</h5><br>
   <input type="url" name="filename" placeholder="예)https://www.example.com/photo/08/13/picture.jpg" style="width:90%;">
	<br><br><input type="submit" class="btn-small lime lighten-3" value="미리보기 " 
   onclick="javascript: form.action='url_preview.do';form.target='_blank';"
   style="width:80%;color:black;">
	<br><br><input type="submit" class="btn-small lime lighten-2" value="선택한 사진으로 배경 설정하기"
	onclick="javascript: form.action='url_process.do';" style="width:80%;margin-bottom:10px;color:black;">	
   	<br><br>
   	</form>
   	</div></div>
   	<!-- 네번째 사진 url 등록 폼 -->
</body>
<script>
$(document).ready(function(){
	$('#upload1').submit(function(){
		if($('input[type="file"]').val()==''){
			alert('파일을 선택하세요');
			return false;
		};
	});
	
	$('#upload2').submit(function(){
		if($('input[name="filename"]').val()==''){
			alert('이미지 URL을 입력하세요');
			return false;
		};
	});
	
	$('#upload3').submit(function(){
		if($('input[type="file"]').val()==''){
			alert('파일을 선택하세요');
			return false;
		};
	});
	
	$('#upload4').submit(function(){
		if($('input[name="filename"]').val()==''){
			alert('이미지 URL을 입력하세요');
			return false;
		};
	});
	
	$('#upload5').submit(function(){
		if($('input[type="file"]').val()==''){
			alert('파일을 선택하세요');
			return false;
		};
	});
	
	$('#upload6').submit(function(){
		if($('input[name="filename"]').val()==''){
			alert('이미지 URL을 입력하세요');
			return false;
		};
	});
	
	$('#upload7').submit(function(){
		if($('input[type="file"]').val()==''){
			alert('파일을 선택하세요');
			return false;
		};
	});
	
	$('#upload8').submit(function(){
		if($('input[name="filename"]').val()==''){
			alert('이미지 URL을 입력하세요');
			return false;
		};
	});
	
	
});
</script>
</html>