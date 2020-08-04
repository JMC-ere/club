<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<h2>글보기</h2>
	<ul>
		<li>${post.post_title}</li>
		<li>${post.mem_num}</li>
		<li>${post.post_date}</li>
		<li>${post.post_board}</li>
	</ul>
	<p>
		<input type="button" value="글 수정" onclick="loaction.href='update.do'">
		<input type="button" value="글 삭제" onclick="location.href='delete.do'">
	</p>
</div>