<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.lang.String" %>
 <style>
 	#cardImg{
		max-width:400px;
		max-height:220px;
	}
p {
	margin: 20px 0px;
}

@media ( min-width : 768px) {
	#kakao-talk-channel-chat-button {
		position: fixed;
		z-index: 999;
		right: 30px; /* 화면 오른쪽으로부터의 거리 */
		bottom: 30px; /* 화면 아래쪽으로부터의 거리 */
	}
}
/* 모바일 화면 */
@media ( max-width :767px) {
	#kakao-talk-channel-chat-button {
		position: fixed;
		z-index: 999;
		right: 15px; /* 화면 오른쪽으로부터의 거리 */
		bottom: 30px; /* 화면 아래쪽으로부터의 거리 */
	}
}
</style>
<div class="slider">
	<ul class="slides">
		<li><img src="https://cdn.pixabay.com/photo/2017/08/29/12/07/adult-2693054_960_720.jpg"> <!-- random image -->
			<div class="caption center-align">
				<h3><span class="white-text text-darken-2">Hellow, We Are ++CLUB!</span></h3>
				<h5 class="white-text text-darken-2">++CLUB 에 오신것을 환영합니다!!</h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2017/08/14/22/06/passport-2642172_960_720.jpg"> <!-- random image -->
			<div class="caption right-align">
				<h3>현재 진행중인 다양한 모임에 참석하세요!</h3>
				<h5 class="light grey-text text-lighten-3"><a href="${pageContext.request.contextPath}/main/viewclub.do">참여하러가기</a></h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2017/01/17/10/39/bournemouth-1986419_960_720.jpg"> <!-- random image -->
			<div class="caption right-align">
				<h3>포인트를 쌓아 우수회원이 되어 나만의 모임을 만들수 있습니다!</h3>
				<h5 class="light grey-text text-lighten-3"><a href="${pageContext.request.contextPath}/main/introduce/membership.do">회원 멤버십보러가기</a></h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2016/03/30/02/57/camping-1289930_960_720.jpg"> <!-- random image -->
			<div class="caption center-align">
				<h4><span class="white-text text-darken-2">지금 바로!</span></h4>
				<h4 class="light grey-text text-lighten-3">++CLUB에서 다양한 사람들과 모임을 가져보세요 :-)</h4>
			</div></li>
	</ul>
</div>
<div id="kakao-talk-channel-chat-button"></div>
<div class="container">
	<br>
	<h4>현재 진행중인 클럽</h4>
	<div class="row">
		
		<c:forEach var="club" items="${list}">
		<div class="col-sm-6 col-lg-4">
			<p></p>
			<c:if test="${count == 0 }">
				<div>등록된 게시물이 없습니다.</div>
			</c:if>
			<c:if test="${count > 0 }">
			
			<div class="card">
			
				<div class="card-header" id="hope">${club.club_genre}</div>
				<img src="imageView.do?club_num=${club.club_num }" id="cardImg" class="responsive-img center"/>
				<div class="card-body center">
					<h5 class="card-title" style="text-align:center">${club.club_name}</h5>
					<p class="card-text" style="text-align:center">모임주기 : ${club.club_interval}</p>
					<a href="viewclubdetail.do?club_num=${club.club_num}" class="btn #8bc34a light-green">More</a>
				</div>
			</div>
			
			</c:if>
		</div>
		</c:forEach>
	</div>
</div>
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.slider');
    var instances = M.Slider.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('.slider').slider();
  });
//<![CDATA[
  // 사용할 앱의 JavaScript 키를 설정해 주세요.
  Kakao.init('633cd4c97bac13201ce2cd74ba836409'); //개발자에게 주는 자바스크립트 코드 입력
  // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
  Kakao.Channel.createChatButton({
    container: '#kakao-talk-channel-chat-button',
    channelPublicId: '_cxbxixoxb' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다. (채널 고유 아이디 적용)
  });
//]]>
	
</script>