<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<form:form action="QAmainForm.do" commandName="ClubQAVO">

	<div class="QA_main">
		<div class="QAmain_header">
			<div class="header">Q & A에 오신 것을 환영합니다</div>
			<div class="QAmain_header_select">
				<hr class="main_hr" width="85%">
				<ul class="QAmain_select">
					<li><a href="#">자주하는 질문</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ClubQA/QAlist/QAlist.do">건의 / 신고 
							게시판</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ClubQA/QA1_1/QA1_1_list.do">질문 게시판</a></li>
				</ul>
			</div>

		</div>
	</div>
	<p></p>
	<div class="collapse_main">
		<div class="collapse_header_search" style="font-family: 'Youth';">
		자주하는 질문 TOP5
		</div>
		<!-- collapse 시작 -->
		<button type="button" class="collapsible">회원 별명은 어디서 바꾸나요?</button>
		<div class="collapse_content">
			<p>오른쪽 상단의 <mark>'MY PAGE'</mark>를 누르신후 유저 정보의 <mark>'상세 메뉴 -> 정보수정'</mark>에서 비밀번호 인증을 통해서 자신의 닉네임, 전화번호, 프로필 사진을 수정 할 수 있습니다.
			
			<a style="font-size:0.7rem;" href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_cxbxixoxb%2Fchat%3Fapi_ver%3D1.1%26kakao_agent%3Dsdk%252F1.39.4%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Flocalhost%25253A8080%26app_key%3D633cd4c97bac13201ce2cd74ba836409%26referer%3Dhttp%253A%252F%252Flocalhost%253A8080%252Fclub%252FClubQA%252FQAmainForm.do">
			더 많은 정보나 1:1 상담이 필요하시면 오른쪽 하단의 <mark>"톡상담"</mark>을 이용해 주세요</a></p>
		</div>
		<!-- collapse 끝 -->
		<!-- collapse 시작 -->
		<button type="button" class="collapsible">클럽 개설은 어떻게 하나요?</button>
		<div class="collapse_content">
			<p>
			클럽 활동을 통해 <mark>우수회원</mark>이 되시면 클럽을 개설할 수 있는 권한이 생깁니다. 
			
			이때 자신이 원하는 클럽을 개설하여 사람들을 모집할 수 있으며 클럽장으로서 활동하게 됩니다. 
			
			<a style="font-size:0.7rem;" href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_cxbxixoxb%2Fchat%3Fapi_ver%3D1.1%26kakao_agent%3Dsdk%252F1.39.4%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Flocalhost%25253A8080%26app_key%3D633cd4c97bac13201ce2cd74ba836409%26referer%3Dhttp%253A%252F%252Flocalhost%253A8080%252Fclub%252FClubQA%252FQAmainForm.do">
			더 많은 정보나 1:1 상담이 필요하시면 오른쪽 하단의 <mark>"톡상담"</mark>을 이용해 주세요</a></p>
		</div>
		<!-- collapse 끝 -->
		<!-- collapse 시작 -->
		<button type="button" class="collapsible">등급은 어떻게 나뉘나요?</button>
		<div class="collapse_content">
			<p>
			등급은 크게 3가지로 분류되어 있으며 클럽 활동을 통해 후기글과 댓글을 작성하실 때마다 포인트를 얻으실 수 있습니다. 
			
			누적 포인트에 따라 일반회원, 우수회원으로 등급이 분류됩니다.
			<a style="font-size:0.7rem;" href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_cxbxixoxb%2Fchat%3Fapi_ver%3D1.1%26kakao_agent%3Dsdk%252F1.39.4%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Flocalhost%25253A8080%26app_key%3D633cd4c97bac13201ce2cd74ba836409%26referer%3Dhttp%253A%252F%252Flocalhost%253A8080%252Fclub%252FClubQA%252FQAmainForm.do">
			더 많은 정보나 1:1 상담이 필요하시면 오른쪽 하단의 <mark>"톡상담"</mark>을 이용해 주세요</a></p>
		</div>
		<!-- collapse 끝 -->
		<!-- collapse 시작 -->
		<button type="button" class="collapsible">이미 개설된 클럽 정보는 어디서 확인하나요?</button>
		<div class="collapse_content">
			<p>
			상단 카테고리에 <mark>클럽현황</mark>으로 가셔서 현재 개설중인 클럽들을 확인 하실 수 있습니다
			
			클럽 정보보기를 클릭해 클럽 상세 페이지를 확인 하실 수 있습니다. 
			
			<a style="font-size:0.7rem;" href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_cxbxixoxb%2Fchat%3Fapi_ver%3D1.1%26kakao_agent%3Dsdk%252F1.39.4%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Flocalhost%25253A8080%26app_key%3D633cd4c97bac13201ce2cd74ba836409%26referer%3Dhttp%253A%252F%252Flocalhost%253A8080%252Fclub%252FClubQA%252FQAmainForm.do">
			더 많은 정보나 1:1 상담이 필요하시면 오른쪽 하단의 <mark>"톡상담"</mark>을 이용해 주세요</a></p>
		</div>
		<!-- collapse 끝 -->
		<!-- collapse 시작 -->
		<button type="button" class="collapsible">클럽마다 공지사항은 어떻게 확인하나요?</button>
		<div class="collapse_content" style="text-align: left;">
			<p>상단의 <mark>공지사항</mark>에 들어가시면 클럽별 공지사항이나 자신이 참여중인 클럽의 공지사항도 같이 확인 할 수 있습니다.
			
			사이트에서의 공지사항이나 클럽별 공지사항을 모두 <mark>공지사항</mark>에서 확인하실 수 있습니다.
			
			<a style="font-size:0.7rem;" href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_cxbxixoxb%2Fchat%3Fapi_ver%3D1.1%26kakao_agent%3Dsdk%252F1.39.4%2520os%252Fjavascript%2520sdk_type%252Fjavascript%2520lang%252Fko-KR%2520device%252FWin32%2520origin%252Fhttp%25253A%25252F%25252Flocalhost%25253A8080%26app_key%3D633cd4c97bac13201ce2cd74ba836409%26referer%3Dhttp%253A%252F%252Flocalhost%253A8080%252Fclub%252FClubQA%252FQAmainForm.do">
			더 많은 정보나 1:1 상담이 필요하시면 오른쪽 하단의 <mark>"톡상담"</mark>을 이용해 주세요</a></p>
		</div>
		<!-- collapse 끝 -->
	</div>
	<h1>
		<br>
	</h1>
</form:form>

<script>
	var coll = document.getElementsByClassName("collapsible");
	var i;

	for (i = 0; i < coll.length; i++) {
		coll[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var content = this.nextElementSibling;
			if (content.style.maxHeight) {
				content.style.maxHeight = null;
			} else {
				content.style.maxHeight = content.scrollHeight + "px";
			}
		});
	}
</script>


<!-- 카카오톡 톡상담 API -->
<style>
/* pc 화면 */
@media (min-width: 768px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 30px; /* 화면 오른쪽으로부터의 거리 */
    bottom: 30px; /* 화면 아래쪽으로부터의 거리 */
    }
}
/* 모바일 화면 */
@media (max-width:767px) {
    #kakao-talk-channel-chat-button {
    position: fixed;
    z-index: 999;
    right: 15px; /* 화면 오른쪽으로부터의 거리 */
    bottom: 30px; /* 화면 아래쪽으로부터의 거리 */
    }
}
</style>

<div id="kakao-talk-channel-chat-button"></div>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('633cd4c97bac13201ce2cd74ba836409');
    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
      channelPublicId: '_cxbxixoxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
    });
  //]]>
</script>
<!-- 카카오톡 톡상담 API -->