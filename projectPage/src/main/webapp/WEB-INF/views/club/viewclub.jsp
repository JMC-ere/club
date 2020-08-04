<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<div class="container">
	<br>
	<h4>현재 진행중인 클럽</h4>
	<div class="row">
		<div class="col-sm-6 col-lg-4">
			<p></p>
			<c:if test="${count == 0 }">
				<div>등록된 게시물이 없습니다.</div>
			</c:if>
			<c:if test="${count > 0 }">
			<c:forEach var="club" items="${list}">
			<div class="card">
				<div class="card-header">${club.club_genre}</div>
				<img
					src="https://cdn.pixabay.com/photo/2017/04/13/14/15/mcdonalds-2227657_960_720.jpg"
					alt="" width="293px" height="172px" id="cardImg" />
				<div class="card-body">
					<h5 class="card-title">${club.club_name}</h5>
					<p class="card-text">${club.club_interval}</p>
					<a href="viewclubdetail.do?club_num=${club.club_num}" class="btn #8bc34a light-green">More</a>
				</div>
			</div>
			</c:forEach>
			</c:if>
		</div>
	</div>
</div>