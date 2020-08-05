<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<style type="text/css">
	#detailview{
		width:50%;
	}
	#club_detail{
		width:100%;
		height:250px;
	}
</style>
<div class="row" id="detailview">
	<h4>클럽 개설 제안</h4>
		<ul>
			<li>
				클럽 명 : ${club.club_name}</li>
			<li>
				영화 장르 : ${club.club_genre}
			</li>
			<li>
				모임 장소 : ${club.club_loc}</li>
			<li>
				모임 시간 : ${club.club_time}</li>
			<li>
				시작 날짜 : ${club.club_start}</li>
			<li>
				종료 날짜 : ${club.club_end}</li>
			<li>
				모임 간격 : ${club.club_interval}

			</li>
		<br>
		<c:if test="${!empty club.filename }">
		<li>첨부파일 : ${club.filename}</li>
		</c:if>
		<br>
	<c:if test="${fn:endsWith(club.filename, '.jpg') ||
				  fn:endsWith(club.filename, '.JPG') ||
				  fn:endsWith(club.filename, '.gif') ||
				  fn:endsWith(club.filename, '.GIF') ||
				  fn:endsWith(club.filename, '.png') ||
				  fn:endsWith(club.filename, '.PNG') }">
	<div>
		<img src="imageView.do?club_num=${club.club_num }" style="max-width:500px">
	</div>
	</c:if>
			<br>
			<li>
				${club.club_detail}
			</li>
		</ul>
	<div class=right>
			<c:if test="${!empty user_id && user_id == club.mem_id }">
			<input type="button" class="btn purple lighten-5 purple-text text-darken-4" value="수정" onclick="location.href='boardclubmodify.do?club_num=${club.club_num}'">
			<input type="button" class="btn purple lighten-5 purple-text text-darken-4" value="삭제" onclick="location.href='boardclubdelete.do?club_num=${club.club_num}'">
			</c:if>
			<input type="button" class="btn purple lighten-5 purple-text text-darken-4" value="돌아가기" onclick="location.href='boardclub.do'">
		
	</div>
</div>