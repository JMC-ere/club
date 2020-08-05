<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h6>현재 진행 중인 클럽</h6>
<c:if test="${empty myValidClub }">
<div>현재 참여 중인 클럽이 없습니다.</div>
</c:if>
<c:if test="${!empty myValidClub }">
<c:forEach var="validClub" items="${myValidClub}">
	<ul>
		<li>${validClub.club_num}</li>
		<li>${validClub.club_title}</li>
		<li>${validClub.club_start}</li>
		<li>${validClub.club_end}</li>
		<li>${validClub.club_interval }</li>
		<li>${validClub.club_time }</li>
	</ul>
</c:forEach>
</c:if>
<h6>종료된 클럽</h6>
<c:if test="${empty myPastClub }">
<div>활동이 종료된 클럽이 없습니다.</div>
</c:if>
<c:if test="${!empty myPastClub }">
<c:forEach var="pastClub" items="${myPastClub}">
	<ul>
		<li>${pastClub.club_num}</li>
		<li>${pastClub.club_title}</li>
		<li>${pastClub.club_start}</li>
		<li>${pastClub.club_end}</li>
		<li>${pastClub.club_interval }</li>
		<li>${pastClub.club_time }</li>
	</ul>
</c:forEach>
</c:if>