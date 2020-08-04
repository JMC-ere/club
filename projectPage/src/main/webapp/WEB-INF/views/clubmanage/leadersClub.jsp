<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h6>현재 진행 중인 클럽</h6>
<c:if test="${empty leadersValidClub && empty leadersPastClub }">
클럽장으로 활동중인 모임이 없습니다.
	<%-- <c:if test="${user_auth<3 }">
	우수회원으로 승급 시 모임개설 신청하여 관리자 승인시 클럽장이 되실 수 있습니다
	우수회원 자격 설명
	통합 후 추가 및 수정
	</c:if> --%>
	<%-- <c:if test="${user_auth>=3 }">
		모임개설 신청하여 관리자가 승인하면 클럽장이 되실 수 있습니다
		<input type="button" onclick="location.href='xxx.do'" 통합 후 모임개설 주소 추가
	</c:if> --%>
</c:if>

<c:if test="${!empty leadersValidClub }">
	<c:forEach var="validClub" items="${leadersValidClub}">
	<ul>
		<li>${validClub.club_num}</li>
		<li>${validClub.club_title}</li>
		<li>${validClub.club_start}</li>
		<li>${validClub.club_end}</li>
		<li>${validClub.club_interval }</li>
		<li>${validClub.club_time }</li>
		<li>
			<input type="button" value="회원 관리" onclick="location.href='manageMembers.do?club_num=${validClub.club_num}'">
		</li>
	</ul>
	</c:forEach>
<h6>종료된 클럽</h6>
<c:if test="${empty leadersPastClub }">
클럽장으로 활동 종료한 모임이 없습니다
</c:if>
<c:if test="${! empty leadersPastClub }">
	<c:forEach var="pastClub" items="${leadersPastClub}">
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
</c:if>