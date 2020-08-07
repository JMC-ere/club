<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.page-menu{
	width: 60%;
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
	<h3>글 수정</h3>
	<form:form action="postupdate.do" enctype="multipart/form-data" commandName="postVO" class="write_form">
		<form:hidden path="post_num"/>
		
					<%-- 			<form id="search_form">
				<label for="title">게시물 유형</label> <select name='option1no'
					onchange="this.form.option1no_input.value=this.value">
					<option value=1>참여</option>
					<option value=2>영화</option>
					<option value=3>갤러리</option>
				</select> <input type=hidden value='' name='option1no_input'>
			</form> --%>
	
		<div class="write_button">
			<button type="submit" class="btn btn-outline-success">수정 완료</button>
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
				<c:if test="${!empty postVO.post_imgname}">
				<br>
				<span class="align-center"><h6><p class="text-danger">(${postVO.post_imgname})파일이 등록되어 있습니다. 다시 업로드 하면 기존 파일은 삭제됩니다.</p></h6></span>
				</c:if>
			</tr>
	</tbody>
</table>
		
		
	</form:form>
	
	
</div>