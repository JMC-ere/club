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
						href="">질문 게시판</a></li>
				</ul>
			</div>

		</div>
	</div>
	<p></p>
	<div class="collapse_main">
		<div class="collapse_header_search">
		자주하는 질문 TOP5
		</div>
		<button type="button" class="collapsible">비밀번호 변경은 어떻게 하나요?</button>
		<div class="collapse_content" style="text-align: left;">
			<p>마이페이지 -> 비밀번호 변경 클릭한 뒤 사용자 인증 후 바꾸실 수 있습니다.
			
줄바꿈 테스트
			</p>
		</div>
		<button type="button" class="collapsible">회원 별명은 어디서 바꾸나요?</button>
		<div class="collapse_content">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat.</p>
		</div>
		<button type="button" class="collapsible">클럽 개설은 어떻게 하나요?</button>
		<div class="collapse_content">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat.</p>
		</div>
		<button type="button" class="collapsible">등급은 어떻게 나뉘나요?</button>
		<div class="collapse_content">
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat.</p>
		</div>
		<button type="button" class="collapsible">자주하는 질문</button>
		<div class="collapse_content">
			<p>자
			주
			하
			는
			질
			문</p>
		</div>
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