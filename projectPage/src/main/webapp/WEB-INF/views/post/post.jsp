<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.page-main-style {
	width: 85%;
	margin: 0 auto;
}

.align-center {
	text-align: center;
}

.center { 
	text-aling:center;
	margin:0 auto;
	border:20px;
	padding:10px;
}
</style>

<div class=center>
	<h2>후기 게시판입니다.</h2>
</div>



<div class="page-main-style">
	<ul class="nav nav-pills nav-fill">
		<li class="nav-item"><a class="nav-link active" href="post.do">참여
				게시판</a></li>
		<li class="nav-item"><a class="nav-link" href="postlist.do">영화
				후기 게시판</a></li>
		<li class="nav-item"><a class="nav-link" href="postphoto.do">갤러리</a>
		</li>
	</ul>
</div>

<div class=page-main-style>

		<div>
			<c:if test="${!empty user_id}">
				<input type="button" value="글쓰기"
					onclick="location.href='postwrite.do'">
			</c:if>
		</div>


		<c:if test="${count == 0 }">
			<div class="result-disply">등록된 게시물이 없습니다.</div>
			<input type="button" value="돌아가기" onclick="location.href='post.do'">
		</c:if>

	
		<c:if test="${count > 0 }">
			<table class="highlight">
	<!-- 				<thead>
				<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
 				</thead>-->
				<tbody>
					<c:forEach var="post" items="${list}">
						<tr>
							<td rowspan="4" width=20%>
							${post.post_img}
							</td>
						</tr>
						<tr>
							<td  colspan="3"><a href="postdetail.do?num=${post.post_num}">${post.post_title}</a></td>
							</tr>
						<tr>
							<td colspan="3">${post.mem_num}</td>
						</tr>
						<tr>
							<td width=30%>
							${post.post_date}
							</td>
							<td width=30%>
							${post.post_hit}
							</td>
							<td width>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>


		
	<form action="post.do" method="get">
		<ul class="search">
			<li>
				<select name="keyfield">
					<option value="post_title">제목</option>
					<option value="post_board">내용</option>
					<option value="">id</option>
				</select>
			</li>		
			<li>
				<input type="search" size="16" name="keyword" id="keyword"> 
			</li>
			<li>
				<input type="submit" value="찾기" style="float:right;">
			</li>
		</ul>

		<div class=align-center>${pagingHtml}</div>

	</form>
</div>



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
