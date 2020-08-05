<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" 
               uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c"
                uri="http://java.sun.com/jsp/jstl/core" %>

	
		<div class="write_main">
			<form:form action="QA1_1_update.do" enctype="multipart/form-data" commandName="clubQAVO">
				<form:hidden path="qa1_1num"/>
				<div class="writeform_header">
					글 수정
				</div>
				<table id="qaWrite" class="qaWrite">
					<tbody>
						<tr>
							<th scope="row"><label for="qa_title">제목</label></th>
							<td class="qa_title"><form:input path="qa_title" class="qa_title" value="${clubqa.qa_title}"/></td>
						</tr>
						<tr>
							<th scope="row"><label for="qa_content">내용</label></th>
							<td class="qa_content"><form:textarea class="qa_content" path="qa_content" rows="10" cols="100%" placeholder=" 내용을 입력해주세요" style="resize: vertical; overflow: auto;"/></td>
						</tr>
						<tr>
							<th scope="row"><label for="qa_secret"><input type="checkbox" name="qa_secret" id="qa_secret"><span>비밀글</span></label></th>
							<td class="secret_tf"><form:input path="qa_secret_key" maxlength="4" value="${clubqa.qa_secret_key}" placeholder="비밀번호 4자리를 입력해주세요"/></td>
						</tr> 
						<tr>
							<th scope="row"><label for="file">파일 업로드</label></th>
							<td class="file"><input type="file" name="file">
							<c:if test="${!empty clubqa.qa_filename}">
							<br>
							<span>(${clubqa.qa_filename})파일이 등록되어 있습니다.
							다시 업로드하면 기존 파일은 삭제됩니다.</span>
							</c:if>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btnSet">
					<button type="submit" class="btnSubmit btn">수정 완료</button>
					<button type="button" class="btnBack btn" onclick="location.href='${pageContext.request.contextPath}/ClubQA/QAlist/QAlist.do'">목록</button>
				</div>
			</form:form>
		</div>
	
	
<script>

/*
$(document).ready(function(){
	$("#qa_secret").change(function(){
		if($("#qa_secret").is(":checked")){
			
		} else {
			
		}
		
		$('#secret_tf').append(secret_tf);
		
	});
}); 
*/
</script>

	