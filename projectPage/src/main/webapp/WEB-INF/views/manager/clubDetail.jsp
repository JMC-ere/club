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

<div class="card-panel grey lighten-5 z-depth-1" style="width:95%;margin:0 0 40px 40px;">
<div class="row valign-wrapper">
			<div class="col s2">
			<c:if test="${
							 fn:endsWith(manageClub.filename, '.jpg') ||			 
							 fn:endsWith(manageClub.filename, '.JPG') ||			 
							 fn:endsWith(manageClub.filename, '.gif') ||			 
							 fn:endsWith(manageClub.filename, '.GIF') ||			 
							 fn:endsWith(manageClub.filename, '.png') ||			 
							 fn:endsWith(manageClub.filename, '.PNG')
			 				}">
				<img src="imageView1.do?num=${manageClub.club_num}" class="responsive-img">	
			</c:if>
			
			</div>
			<div class="col s10">
			<h5>클럽 상세</h5>
			<p>
				
				<table class="highlight" style="width:80%;">
						<tbody>
							<tr>
								<td><b>작성자 ID</b></td>
								<td>${manageClub.mem_id}</td>
							</tr>
							<tr>
								<td><b>클럽이름</b></td>
								<td>${manageClub.club_name}</td>
							</tr>
							<tr>
								<td><b>클럽 시작 날짜</b></td>
								<td>${manageClub.club_start}</td>
							</tr>
							<tr>
								<td><b>클럽 모임 간격</b></td>
								<td>${manageClub.club_interval}</td>
							</tr>
							<tr>
								<td><b>클럽 종료일</b></td>
								<td>${manageClub.club_end}</td>
							</tr>
							
						</tbody>
					</table>
				<br>
				<a href="#" data-target="slide-out" class="sidenav-trigger btn right">상세 메뉴</a> 
			</div>
		</div>
	</div>


<!--card panel 끝-->
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