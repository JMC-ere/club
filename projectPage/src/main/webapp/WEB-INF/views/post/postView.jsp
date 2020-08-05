<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>후기 게시글</title>
<style>

.page-main-style {
	width: 80%;
	margin: 0 auto;
}

</style>
</head>
<body>
	<div class="page-main-style">
		<h5>${post.post_title}</h5>
		<p>
			아이디 : ${post.post_num}<br>
			제목: ${post.post_title}<br>
			내용 : ${post.post_board}<br>
			사진 : ${post.post_img}<br>
			작성일 : ${post.post_date}<br>
			
		</p>
		<hr size="2" width="100%" noshade>
		<div class="align-center">
			<input type="button" value="수정" onclick="location.href='update.do?id=${member.id}'">
			<input type="button" value="삭제" onclick="location.href='delete.do?id=${member.id}'">
			<input type="button" value="목록" onclick="location.href='post.do'">
		</div>
	</div>
</body>
</html>