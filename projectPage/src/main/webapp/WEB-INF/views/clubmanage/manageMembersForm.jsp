<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<p>${club.club_title}모임 회원 관리</p>
<table>
	<tr>
		<th>프로필</th>
		<th>이름</th>
		<th>별명</th>
		<th>연락처</th>
		<th>이메일</th>
		<th>참석일</th>
		<th>참석율</th>
		<th>오늘 출석 O/X</th>
	</tr>
	<c:if test="${empty clubMembers }">
		모임 신청 회원이 없습니다.
	</c:if>
	<c:if test="${!empty clubMembers }">
	<form action="manageMembers.do" method="post">
	<c:forEach var="member" items="${clubMembers }">
	<input type="hidden" name="club_num" value="${member.club_num }">
	<tr>
		<c:if test="${empty member.detail_img }">
			<td>null</td>
		</c:if>
		<c:if test="${!empty member.detail_img }">
			<td>null</td>
		</c:if>
			<td>${member.detail_name }</td>
			<td>${member.detail_nick }</td>
			<td>${member.detail_cell }</td>
			<td>${member.detail_email }</td>
			<td>${member.join_date }</td>
			<td>참석율</td>
			<td>
				<div class="switch">
					    <label>
					      	<span style="color:grey;font-size:medium;">불참</span>
					      <input type="checkbox" name="attendance" value="${member.mem_num }">
					      <span class="lever"></span>
					      	<span style="color:green;font-size:medium;">참석</span>
		    			</label>
	 			 </div>
 			</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="8" style="text-align:center">
			<button class="btn waves-effect waves-light" type="submit" name="action">출석 제출
		    			<i class="material-icons">send</i>
		  	</button>
	  	<td>
  	</tr>
	</form>
	</c:if>
</table>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>