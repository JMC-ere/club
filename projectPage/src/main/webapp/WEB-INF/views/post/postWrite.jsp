<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<h2>후기 작성하기</h2>
	<form:form action="postwrite.do" commandName="postVO">
		<ul>
			<li>
				<label for="title">제목</label>
				<form:input path="post_title"/>
				<form:errors path="post_title" cssClass="errorcolor" />
			</li>
			<li>
				<label for="upload">사진</label>
				<input type="file" name="upload" id="updload"/>
			</li>
			<li>
				<label for="board">내용</label>
				<form:input path="post_board"/>
				<form:errors path="post_board" cssClass="errorcolor" />
			</li>
		</ul>
		<div>
				<input type="submit" value="전송">
				<input type="button" value="목록" onclick="location.href='postlist.do?c='">
			</div>
	</form:form>
</div>