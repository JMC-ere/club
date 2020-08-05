<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/manager.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/manager.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.approve_status_choice{
margin: 0px auto; width:50%;
}
</style>
</head>
<body>
<div class="manager_menu">
       <ul class="manager_menu_list">
          <li><a href="${pageContext.request.contextPath}/main/manage_club.do">클럽개설신청 관리</a></li>
          <li><a href="${pageContext.request.contextPath}/main/manage_member.do">회원 관리</a></li>
       </ul>
   </div>
   <br>
  <p class="manager_title"> 클럽 개설 신청 관리 페이지</p>
   <hr width="90%" color="green"><br><br>
   
   <div class="manage_club_detail">
   <c:if test="${fn:endsWith(manageClub.filename,'.jpg') ||
				  fn:endsWith(manageClub.filename,'.JPG') ||
				  fn:endsWith(manageClub.filename,'.png') ||
			      fn:endsWith(manageClub.filename,'.PNG') ||
				  fn:endsWith(manageClub.filename,'.bmp') ||
				  fn:endsWith(manageClub.filename,'.BMP') ||
			      fn:endsWith(manageClub.filename,'.gif') ||
				  fn:endsWith(manageClub.filename,'.GIF')}">
<div class="manage_club_img">
	<img src="imageView1.do?num=${manageClub.club_num}">
	
</div>	
</c:if>
   
   
   <div class="club_detail_list" style="margin:0 0 0 30px;">
   <label>제목</label><br> 
   ${manageClub.club_title}
   <hr width="400px">
	<label>작성자 ID</label><br>
	${manageClub.mem_id}
	<hr width="100%">
	<label>클럽이름</label><br>
	${manageClub.club_name}
	<hr width="100%">
	<label>클럽 시작 날짜</label><br>
	${manageClub.club_start}
	<hr width="100%">
	<label>클럽 모임 간격</label><br>
	${manageClub.club_interval}
	<hr width="100%">
	<label>클럽 종료일</label><br>
	${manageClub.club_end}
	<hr width="100%">
	<label>상세내용</label><br>
	${manageClub.club_detail}
	<hr width="100%">

</div>

	<!-- 승인상태 선택 -->
<form action="status_change.do" method="post">
<input type="hidden" name="num" value="${manageClub.club_num}" >
 <div class="approve_status_choice">
 <label> 승인 상태 선택</label>
  <c:if test="${manageClub.club_state == 1}">
  <select class="browser-default" name="select_status">
   <option value="1" selected>미승인(현재상태)</option>
    <option value="2">승인</option>
    <option value="3">반려</option>
  </select>
  </c:if>
  
   <c:if test="${manageClub.club_state == 2}">
  <select class="browser-default" name="select_status">
  <option value="2" selected >승인(현재상태)</option>
  <option value="1" >미승인</option>
   <option value="3">반려</option>
  </select>
  </c:if>
  
    <c:if test="${manageClub.club_state == 3}">
  <select class="browser-default" name="select_status">
   <option value="3" selected >반려(현재상태)</option>
   <option value="1" >미승인</option>
   <option value="2">승인</option>
  </select>
  </c:if>
  <button class="btn waves-effect waves-light" type="submit" name="action">완료</button>
  <a class="waves-effect waves-light btn" href="boardclubmodify.do?club_num=${manageClub.club_num}">글 수정하기</a>
  </div>
</form>
<!-- 승인상태 선택 끝-->

  </div>

<script>



  document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('select').formSelect();
  });
        
  </script>
</body>
</html>