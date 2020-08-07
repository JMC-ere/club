<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">
	#cardImg{
		max-width:400px;
		max-height:220px;
	}
</style>

<div id="clubgenre" class="center">
	<h4>장르별 클럽</h4>
	
	<!-- 장르별 검색 기능 -->
	<div class="col s12">
		<form action="clubgenre.do" method="get">
			<div class="col s5">
				<select name="keyfield">
					<option value="" disabled selected>장르별 검색</option>
					<option value="club_genre">공포/스릴러</option>
					<option value="club_genre">로맨틱코미디/드라마</option>
					<option value="club_genre">애니메이션</option>
					<option value="club_genre">액션</option>
					<option value="club_genre">SF</option>
				</select>
			</div>
			<div class="col s5">
				<input type="search" size="16" name="keyword" id="keyword">
			</div>
			<div class="col s2">
				<input type="submit"
					class="btn purple lighten-5 purple-text text-darken-4" value="검색">
			</div>
		</form>
	</div>

	<!-- 장르별 클럽 출력 -->
	<div class="container">
		<div class="row">
			<c:forEach var="club" items="${list}">
				<div class="col-sm-6 col-lg-4">
					<p></p>
					<c:if test="${count == 0 }">
						<div>등록된 게시물이 없습니다.</div>
					</c:if>
					<c:if test="${count > 0 }">

						<div class="card">
							<div class="card-header">${club.club_genre}</div>
							<img src="imageView.do?club_num=${club.club_num }" id="cardImg"
								class="responsive-img center" />
							<div class="card-body">
								<h5 class="card-title">${club.club_name}</h5>
								<p class="card-text">${club.club_interval}</p>
								<a href="viewclubdetail.do?club_num=${club.club_num}"
									class="btn #8bc34a light-green">More</a>
							</div>
						</div>

					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>
</div>	