<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style>
.page-menu{
	width: 85%;
	margin: 0 auto;
}

.write_button{

	margin: 0 auto;
	float:right;
}

.align-center{
	margin-top:2rem;
	text-align:center;
}



</style>

<div class="page-menu">
	<h2>후기 작성하기</h2>
	<form:form action="postwrite.do" enctype="multipart/form-data"
		commandName="postVO">

			<%-- 			<form id="search_form">
				<label for="title">게시물 유형</label> <select name='option1no'
					onchange="this.form.option1no_input.value=this.value">
					<option value=1>참여</option>
					<option value=2>영화</option>
					<option value=3>갤러리</option>
				</select> <input type=hidden value='' name='option1no_input'>
			</form> --%>
	
		<div class="write_button">
			<button type="submit" class="btn btn-outline-success">작성 완료</button>
			<button type="button" class="btn btn-outline-success" onclick="location.href='postlist.do'">목록</button>
		</div>
	
	<table id="postWrite" class="table table-bordered">
		<tbody>
			<tr>
				<th scope="row">
					<label for="category">게시물 유형</label>
				</th>
				<td scope="row"> <form:input path="post_category" /><form:errors path="post_category" cssClass="error-color" />
				</td> 
			</tr>
			<tr>
				<th scope="row">
					<label for="title">제목</label>
				</th>
				<td scope="row"> <form:input path="post_title" class="post_title"/><form:errors path="post_title" cssClass="error-color" />
				</td> 
			</tr>
			<tr>
				<th scope="row">
					<label for="title">내용</label>
				</th>
				<td scope="row"><form:textarea path="post_board" class="form-control"  rows="10" placeholder=" 내용을 입력해주세요"/><form:errors path="post_board" cssClass="error-color" />
				</td> 
			</tr>			
			<tr>
				<th scope="row"><label for="upload">파일 업로드</label></th>
				<td class="post_img"><input type="file" name="upload"></td>
			</tr>
	</tbody>
</table>

		
			
	
	</form:form>
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

