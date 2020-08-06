<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<meta charset="UTF-8">
<title>후기 게시글</title>
<style>

.page-main-style {
	width: 80%;
	margin: 0 auto;
}

</style>

	<div class="page-main-style">
		<h5>${post.post_title}</h5>
	<ul>
			<li>아이디 : ${post.mem_num}</li>
			<li>제목: ${post.post_title}</li>
			<li>내용 : ${post.post_board}</li>
			<li>작성일 : ${post.post_date}</li>
	</ul>
		<hr size="1" width="100%">
		<c:if test="${fn:endsWith(post.post_imgname,'.jpg') ||
					  fn:endsWith(post.post_imgname,'.JPG') ||				  
					  fn:endsWith(post.post_imgname,'.gif') ||				  
					  fn:endsWith(post.post_imgname,'.GIF') ||				  
					  fn:endsWith(post.post_imgname,'.png') ||				  
					  fn:endsWith(post.post_imgname,'.PNG')}">
			<img src="imageView.do?post_num=${post.post_num}" class="responsive-img">
		</c:if>
		
			<input type="button" value="수정" onclick="location.href='update.do?id=${member.id}'">
			<input type="button" value="삭제" onclick="location.href='delete.do?id=${member.id}'">
			<input type="button" value="목록" onclick="location.href='post.do'">
		</div>
</body>
</html>