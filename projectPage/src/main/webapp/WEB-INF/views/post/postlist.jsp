<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
.page-main-style {
	width: 60%;
	margin: 0 auto;
}

.align-center {
	text-align: center;
	border:20px;
	padding:10px;
}

.center { 
	text-aling:center;
	margin:0 auto;
}


form#search_form{
	border:none;
	text-align: center;
	margin-top:3rem;
}
form#search_form ul.search{
	list-style:none;
}
form#search_form ul.search li{
	margin:0 0 9px 0;
	padding:0;
	display:inline;
}
form#search_form ul.search li select{
    width:5rem;
	display:inline-block;
}
form#search_form ul.search li input[type="search"]{
    width:20rem;
	display:inline-block;
}
</style>


<div class=center>
	<h2>영화후기 게시판입니다.</h2>
</div>

<div class=page-main-style>
	<ul class="nav nav-pills nav-fill">
		<li class="nav-item"><a class="nav-link" href="post.do">참여
				게시판</a></li>
		<li class="nav-item"><a class="nav-link active"
			href="postlist.do">영화 후기 게시판</a></li>
		<li class="nav-item"><a class="nav-link" href="postphoto.do">갤러리</a>
		</li>
	</ul>
</div>
<div class=page-main-style>
	<form id="search_form" action="postlist.do" method="get">
		<ul id="search_form" class="search">
			<li>
				<select name="keyfield">
					<option value="post_title">제목</option>
					<option value="post_board">내용</option>
					<option value="">id</option>
				</select>
			</li>		
			<li>
				<input type="search" size="20%" name="keyword" id="keyword"> 
				 <button class="btn waves-effect waves-light" type="submit" id="keyword">찾기</button>
			</li>
				<c:if test="${count == 0 }">
			<div class="result-disply">등록된 게시물이 없습니다.</div>
			<button class="btn waves-effect waves-light" type="submit" onclick="location.href='post.do'">돌아가기</button>
				</c:if>
		</ul>




		<div>
			<c:if test="${!empty user_id}|${!empty club_name}">
				<input type="button" value="글쓰기"
					onclick="location.href='postwrite.do'">
			</c:if>
		</div>
		<c:if test="${count > 0 }">
			<table class="highlight">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="post" items="${list}">
						<tr>
							<td>${post.post_num}</td>
							<td><a href="postdetail.do?num=${post.post_num}">${post.post_title}</a></td>
							<td>${post.mem_num}</td>
							<td>${post.post_date}</td>
							<td>${post.post_hit}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>




			
			<div class=align-center>${pagingHtml}</div>
		</c:if>
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
<script>

</script>


