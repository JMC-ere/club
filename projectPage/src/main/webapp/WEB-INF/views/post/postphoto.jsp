<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>

.page-main-style {
	width: 80%;
	margin: 0 auto;
}

.align-center {
	text-align: center;
}

.search {
	overflow: auto;
	list-style-type: none;
}

.search li {
	float: right;
	margin: 0 auto;
}

</style>

<div>
<ul class="nav nav-pills nav-fill">
  <li class="nav-item">
    <a class="nav-link" href="post.do">참여 게시판</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="postlist.do">영화 후기 게시판</a>
  </li>
  <li class="nav-item">
    <a class="nav-link active" href="postphoto.do">갤러리</a>
  </li>
</ul>
</div>


<div class=page-main-style>
	<form action="postlist.do" method="get">

		<div>
		<c:if test="${!empty user_id}|${!empty club_name}">
				<input type="button" value="글쓰기"
					onclick="location.href='postwrite.do'">
			</c:if>
		</div>
		<c:if test="${count == 0 }">
			<div class="result-disply">등록된 게시물이 없습니다.</div>
			<input type="button" value="돌아가기"
				onclick="location.href='postlist.do'">
		</c:if>
		<c:if test="${count > 0 }">
			<table class="highlight">
				<thead>
		<c:forEach var="post" items="${list}">
	
		
<tr>
	<td colspan="6">

		
		<table width="600">
			
			<tr align="center">
				<td width="120">
				
					<a>
						<img src="../images/pride.jpg">
						<br>
					${post.post_title}
					</a>
				
				</td>


			</tr>


		</table>
		
	</td>
</tr>
</c:forEach>
</thead>
</table>
</c:if></form></div>
<br>

<table width="600">
	<div class=align-center>${pagingHtml}</div>
</table>





<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<script>

</script>

