<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/manager.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<meta charset="UTF-8">
<title>회원 관리</title>
<style>
div.search_select{
float:left;display: block; width:25% 
}
div.search_input{
float:right;display: block; margin:25px 0 0 0;  width:70%;
}
div.member_list{
display: block; margin: 0px auto; width:80%;
}
div.searchbtn{
margin:0 0 50px 0;
}
</style>
</head>
<body>
	<div class="manager_menu">
		<ul class="manager_menu_list">
			<li><a
				href="${pageContext.request.contextPath}/main/manage_club.do">클럽개설신청
					관리</a></li>
			<li><a
				href="${pageContext.request.contextPath}/main/manage_member.do">회원
					관리</a></li>
		</ul>
	</div>
	<br>
	<p class="manager_title">회원 관리 페이지</p>
	<hr width="90%" color="green">
	<br>

	
	<form id="search_form" action="manage_member.do" method="get" onsubmit="return none()">
	<div class="searhform" style="width:55%;margin:0 auto;">
	<div class="search_select">
		<label>회원 검색</label> 
		<select class="browser-default" name="keyfield" id="keyfield">
		<optgroup label="선택">
			<option value="">전체보기</option>
			<option value="id">회원 ID</option>
			<option value="nick">회원 닉네임</option>
			<option value="name">회원 이름</option>
			 </optgroup>
			 <optgroup label="회원 등급">
			<option value="auth0">탈퇴회원</option>
			<option value="auth1">블랙회원</option>
			<option value="auth2">일반회원</option>
			<option value="auth3">우수회원</option>
			<option value="auth4">관리자</option>	
			</optgroup>
		</select> </div>
		<div class="row col s10 search_input">
		<div class="col s6">
		<input size="16" name="keyword" id="keyword"></div>
		<div class="searchbtn">
		<button class="btn waves-effect waves-light" type="submit"
			name="action1">찾기</button></div></div>
			</div>
	</form>
	
	<br>
<div class="member_list">
	<form id="modify_form" action="modify_member.do" method="post">
	
	<c:if test="${count == 0}">
		<div>등록된 회원이 없습니다.</div>
	</c:if>

	<c:if test="${count > 0}">
	<table class="centered">
	 <thead>
          <tr><th>선택</th>
              <th>회원 번호</th>
              <th>ID</th>
              <th>닉네임</th>
              <th>이름</th>
              <th>회원등급</th>
              <th>보유 포인트</th>
              <th>전화번호</th>
              <th>이메일</th>
			 <th>가입 날짜</th>
          </tr>
        </thead>
        <tbody>
        
		<c:forEach var="member" items="${list}">
		<tr>
		<td>
		<label> 
			<input type="checkbox" class="filled-in memcheck" 
		     name="mem_num" value="${member.mem_num}">
			<span style="color: black">　</td>
				<td>${member.mem_num}</td>
				<td>${member.mem_id}</td>
				<td>${member.detail_nick}</td>
				<td>${member.detail_name}</td>
				
				<td><c:if test="${member.mem_auth==0}">탈퇴회원</c:if> 
				<c:if test="${member.mem_auth==1}">블랙회원</c:if> 
				<c:if test="${member.mem_auth==2}">일반회원</c:if> 
				<c:if test="${member.mem_auth==3}">우수회원</c:if> 
				<c:if test="${member.mem_auth==4}">관리자</c:if> </td>
				<td>${member.detail_point}</td>
				<td>${member.detail_cell}</td>
				<td>${member.detail_email}</td>
				<td>${member.detail_date}</td>
				</span>		
			</label>	
			</tr>				
		</c:forEach>
		</tbody></table>		
	</c:if>
	
	<div style="text-align:right;">
	<p>
	<button class="btn waves-effect waves-light" type="submit"
			id="submit_btn">수정하기</button>
			</p></div>
			
			</form>
	</div>

	<script>//select 용 
   document.addEventListener('DOMContentLoaded', function() {
	    var elems = document.querySelectorAll('select');
	    var instances = M.FormSelect.init(elems, options);
	  });

	  // Or with jQuery

	  $(document).ready(function(){
	    $('select').formSelect();
	    
	    
	    $('#modify_form').submit(function(){
	       
	    	if($('input[type="checkbox"]:checked').length==0){
	    		alert('선택한 회원이 없습니다.');
	    		return false;
	    	}
	       });
	  });
	  
	  function none(){
		  var keyfield=document.getElementById('keyfield');
		  var keyword=document.getElementById('keyword');
		  if((keyfield.value=='auth0'||
			keyfield.value=='auth1'||
			keyfield.value=='auth2'||
			keyfield.value=='auth3'||
			keyfield.value=='auth4')&&keyword.value!=''){
			  alert('등급 선택 시 닉네임이나 아이디로 검색 불가 ');
			  return false;
		  }
	  }
	  

	  
   </script>

</body>
</html>