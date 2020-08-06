<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
.page-menu{
	width: 85%;
	margin: 0 auto;
}
</style>

<div class="page-menu">
	<h2>후기 작성하기</h2>
	<form:form action="postwrite.do" enctype="multipart/form-date"
		commandName="postVO">

			<%-- 			<form id="search_form">
				<label for="title">게시물 유형</label> <select name='option1no'
					onchange="this.form.option1no_input.value=this.value">
					<option value=1>참여</option>
					<option value=2>영화</option>
					<option value=3>갤러리</option>
				</select> <input type=hidden value='' name='option1no_input'>
			</form> --%>
	
	<table id="postWrite" class="table table-bordered">
		<tbody>
			<tr>
				<th scope="row">
					<label for="category">게시물 유형</label>
				</th>
				<td scope="row"> <form:input path="post_category" />
				</td> 
			</tr>
			<tr>
				<th scope="row">
					<label for="title">제목</label>
				</th>
				<td scope="row"> <form:input path="post_title" class="post_title"/>
				</td> 
			</tr>
			<tr>
				<th scope="row">
					<label for="title">내용</label>
				</th>
				<td scope="row"><form:textarea path="post_board" class="form-control"  rows="10" placeholder=" 내용을 입력해주세요"/>
				</td> 
			</tr>			
			<tr>
				<th scope="row"><label for="upload">파일 업로드</label></th>
				<td class="post_img"><input type="file" name="upload"></td>
			</tr>
		</tbody>
	</table>
	
		<div>
			<input type="submit" value="전송"> 
			<input type="button" value="목록" onclick="location.href='postlist.do'">
		</div>
	</form:form>
</div>