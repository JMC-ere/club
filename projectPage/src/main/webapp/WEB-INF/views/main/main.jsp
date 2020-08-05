<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <style>
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
		<li><img src="https://cdn.pixabay.com/photo/2016/08/01/20/13/girl-1561989_960_720.jpg"> <!-- random image -->
			<div class="caption center-align">
				<h3>This is our big Tagline!</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small
					slogan.</h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2016/01/19/15/05/baseball-field-1149153_960_720.jpg"> <!-- random image -->
			<div class="caption left-align">
				<h3>Left Aligned Caption</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small
					slogan.</h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2016/11/29/03/53/athletes-1867185_960_720.jpg"> <!-- random image -->
			<div class="caption right-align">
				<h3>Right Aligned Caption</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small
					slogan.</h5>
			</div></li>
		<li><img src="https://cdn.pixabay.com/photo/2016/11/21/15/43/athletes-1846039_960_720.jpg"> <!-- random image -->
			<div class="caption center-align">
				<h3>This is our big Tagline!</h3>
				<h5 class="light grey-text text-lighten-3">Here's our small
					slogan.</h5>
			</div></li>
	</ul>
</div>
<div id="kakao-talk-channel-chat-button"></div>
<div class="container">
<h4>현재 진행중인 클럽</h4>
      <div class="row">
      <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt=""/>
            <div class="card-body">
              <h5 class="card-title">강아지 클럽</h5>
              <p class="card-text">강아지</p>
              <a href="#" class="btn #8bc34a light-green">More</a>
            </div>
          </div>
        </div>
        
        <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">고양이를 좋아하는 사람들의 모임</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
<h4>현재 진행중인 클럽</h4>
      <div class="row">
      <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://cdn.pixabay.com/photo/2017/04/13/14/15/mcdonalds-2227657_960_720.jpg" alt="" width="293px" height="172px" id="cardImg"/>
            <div class="card-body">
              <h5 class="card-title">강아지 클럽</h5>
              <p class="card-text">강아지</p>
              <a href="#" class="btn #8bc34a light-green">More</a>
            </div>
          </div>
        </div>
        
        <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">고양이를 좋아하는 사람들의 모임</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
<h4>현재 진행중인 클럽</h4>
      <div class="row">
      <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://cdn.pixabay.com/photo/2017/04/13/14/15/mcdonalds-2227657_960_720.jpg" alt="" width="293px" height="172px" id="cardImg"/>
            <div class="card-body">
              <h5 class="card-title">강아지 클럽</h5>
              <p class="card-text">강아지</p>
              <a href="#" class="btn #8bc34a light-green">More</a>
            </div>
          </div>
        </div>
        
        <!-- 카드 하나 코드  -->
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">고양이를 좋아하는 사람들의 모임</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
        <div class="col-sm-6 col-lg-4">
        <p></p>
          <div class="card">
            <div class="card-header">
              My Card
            </div>
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSiQ39rOAzd-5x8puQ3Ki10NAC8cqcoBml4ug&usqp=CAU" alt="" />
            <div class="card-body">
              <h5 class="card-title">고양이 클럽</h5>
              <p class="card-text">CAT Club</p>
              <a href="#" class="btn btn-primary">More</a>
            </div>
          </div>
        </div>
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