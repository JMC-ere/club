<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
	#openform{
		width:50%;
	}
	#club_detail{
		width:100%;
		height:250px;
	}
</style>
<div class="row" id="openform">
	<form:form class="col s12" action="openclub.do" enctype="multipart/form-data" commandName="clubVO" id="openclub">
		<h4>클럽 개설 제안</h4>
		<ul>
			<li>
				<label for="club_title">제목</label>
				<form:input path="club_title"/><form:errors path="club_title" cssClass="error-color"/>
			</li>
			<li>
				<label for="club_name">클럽 명</label>
				<form:input path="club_name"/><form:errors path="club_name" cssClass="error-color"/>
			</li>
			<li>
				<label>영화 장르</label><p>
				<label><input type="checkbox" class="filled-in" name="club_genre" id="club_genre1" value="1"/><span>공포/스릴러</span></label>
				<label><input type="checkbox" class="filled-in" name="club_genre" id="club_genre2" value="2"/><span>로맨틱코미디/드라마</span></label>
				<label><input type="checkbox" class="filled-in" name="club_genre" id="club_genre3" value="3"/><span>애니메이션</span></label>
				<label><input type="checkbox" class="filled-in" name="club_genre" id="club_genre4" value="4"/><span>액션</span></label>
				<label><input type="checkbox" class="filled-in" name="club_genre" id="club_genre5" value="5"/><span>SF</span></label>
			</li>
			<br>
			<li>
				<label for="club_loc">모임 장소</label>
				<form:input path="club_loc"/><form:errors path="club_loc" cssClass="error-color"/>
			</li>
			<li>
				<label for="club_time">모임 시간</label>
				<form:input path="club_time"/><form:errors path="club_time" cssClass="error-color"/>
			</li>
			<li>
				<label for="club_start">시작 날짜</label>
				<input type="date" name="club_start" id="club_start" required>
			</li>
			<li>
				<label for="club_end">종료 날짜</label>
				<input type="date" name="club_end" id="club_end" required>
			</li>
			<li>
				<label>모임 주기</label><p>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval1" value="1"/><span>월요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval2" value="2"/><span>화요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval3" value="3"/><span>수요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval4" value="4"/><span>목요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval5" value="5"/><span>금요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval6" value="6"/><span>토요일</span></label>
				<label><input type="checkbox" class="filled-in"  name="club_interval" id="club_interval7" value="7"/><span>일요일</span></label>
			</li>
			<br>
			<li>
				<label for="upload">클럽 이미지</label>
				<input type="file" name="upload" id="upload"/>
			</li>
			<br>
			<li>
				<label for="club_detail">클럽 내용</label>
				<textarea name="club_detail" id="club_detail"></textarea>
				<form:errors path="club_detail" cssClass="error-color"/>
			</li>
		</ul>
		<div class=right>
			<c:if test="${user_auth == 4}">
			<input type="submit" class="btn purple lighten-5 purple-text text-darken-4" value="개설하기">
			</c:if>
			
			<input type="submit" class="btn purple lighten-5 purple-text text-darken-4" value="신청하기">
			
			<input type="button" class="btn purple lighten-5 purple-text text-darken-4" value="돌아가기" onclick="location.href='boardclub.do'">
		</div>
	</form:form>
</div>