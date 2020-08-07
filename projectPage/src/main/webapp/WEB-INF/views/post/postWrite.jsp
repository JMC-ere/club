<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<h2>후기 작성하기</h2>
	<form:form action="postwrite.do" enctype="multipart/form-date"
		commandName="postVO">
		<ul>

<%-- 			<form id="search_form">
				<label for="title">게시물 유형</label> <select name='option1no'
					onchange="this.form.option1no_input.value=this.value">
					<option value=1>참여</option>
					<option value=2>영화</option>
					<option value=3>갤러리</option>
				</select> <input type=hidden value='' name='option1no_input'>
			</form> --%>

			<li><label for="category">게시물 유형</label>
			<form:input path="post_category" /> <form:errors path="post_category"
					cssClass="errorcolor" /></li>
			<li><label for="title">제목</label> <form:input path="post_title" />
				<form:errors path="post_title" cssClass="errorcolor" /></li>
			<li><label for="board">내용</label> <form:input path="post_board" />
				<form:errors path="post_board" cssClass="errorcolor" /></li>
			<li><label for="upload">사진</label> <input type="file"
				name="upload" id="updload" /></li>

		</ul>
		<div>
			<input type="submit" value="전송"> <input type="button"
				value="목록" onclick="location.href='postlist.do?c='">
		</div>
	</form:form>
</div>