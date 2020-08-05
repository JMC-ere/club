<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
  
<style>
/*기본 레이아웃*/
*{
    margin:0;
    padding:0;
}
  
.page-main-style{
	margin:0 auto;
	font-family:"맑은 고딕";
}

.align-center{
	margin-top:2rem;
	text-align:center;
}
    
/*검색창 폼*/ 
form#search_form{
	border:none;
	text-align: center;
	margin-top:3rem;
}
form#search_form ul.search{
	list-style:none;
}
form#search_form ul.search li{
	margin:0 0 9px 0;
	padding:0;
	display:inline;
}
form#search_form ul.search li select{
    width:5rem;
	display:inline-block;
}
form#search_form ul.search li input[type="search"]{
    width:20rem;
	display:inline-block;
}

/*제목 일정 수 초과시 ...표시*/
.limit {
	width:250px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

/*사이드 메뉴 hover*/
.menu ul li:hover{
	background-color: #e0e0e0;
}
.menu ul li a:hover{
	color: #ff0000;
}


/*글쓰기 버튼 우측 정렬*/
.write_button{
	float:right;
}

/*float 종료*/
br.end{
	clear:both;
}

/*버튼*/
input[type="submit"], input[type="button"]{
	background-color:#33691e; 
	padding:5px 20px 5px 20px; 
	margin-bottom:20px;
	color:#fff; 
	border:none; 
	border-radius:5px;
}

/*검색결과가 없을경우*/
.result-display{
	text-align:center;
}

/* 작은 사이즈 */
@media (max-width:599px){
	/*폰트 크기*/
    :root{
        font-size:14px;
    }   
	
	/*사이드 메뉴*/
	.menu{
		height:15rem;
		border:1px solid #e0e0e0;
	}
	.menu p{
		text-align:center;
		height:3rem;
		margin:0;
		padding-top:10px;
		color:#fff;
		background-color:#33691e;
	}
	.menu ul li{
		padding:15px 20px 15px 20px;
	}
}

/* 중간 사이즈 */
@media (min-width:600px) and (max-width:1199px){
    :root{
        font-size:16px;
    }
    
    /*화면 너비*/
    .page-main-style{
		width:90%
	}
	
	/*사이드 메뉴*/
	.menu{
		height:15rem;
		border:1px solid #e0e0e0;
	}
	.menu p{
		height:3rem;
		margin:0;
		padding-top:10px;
		color:#fff;
		background-color:#33691e;
		text-align:center;
	}
	.menu ul li{
		padding:15px 20px 15px 20px;
	}
}

/* 큰 사이즈 */
@media (min-width:1200px){
    :root{
        font-size:18px;
    }
   
   	/*화면 너비*/
	.page-main-style{
		width:90%
	}
	
	/*사이드 메뉴*/
	.menu{
		width:20%;
		height:30rem;
		border:1px solid #e0e0e0;
		margin-right:47px;
		margin-top:40px;
		margin-bottom:40px;
		float:left;
	}
	.menu p{
		margin:0;
		padding:20px 20px 20px 20px;
		text-align:center;
		color:#fff;
		background-color:#33691e;
	}
	.menu ul li{
		padding:20px 20px 20px 20px;
	}
	
	.page-content{
	width:75%;
	float:left;
	}	
}
.card-text{
	font-size: 1em;
}
</style>
<div class="page-main-style">
	<div class="menu">
		<p>클럽 관리</p>
		<ul>
			<li class="tab"><a href="myClub.do">나의 참여 클럽</a></li>
			<li class="tab"><a href="leaderClub.do">내가 개설한 클럽</a></li>
	  	</ul>
	</div>
	<div class="page-content">
		<div class="container">
			<h6>현재 진행중인 클럽</h6>
				<c:if test="${empty myValidClub }">
				<div>현재 참여 중인 클럽이 없습니다.</div>
				</c:if>
			<div class="row">
			<c:if test="${!empty myValidClub }">
				<c:forEach var="validClub" items="${myValidClub}">
				<!-- 카드 하나 코드  -->
				<div class="col-sm-6 col-lg-6">
					<p></p>
					<div class="card">
						<div class="card-header">${validClub.club_title}</div>
						<c:if test="${
							 fn:endsWith(validClub.filename, '.jpg') ||			 
							 fn:endsWith(validClub.filename, '.JPG') ||			 
							 fn:endsWith(validClub.filename, '.gif') ||			 
							 fn:endsWith(validClub.filename, '.GIF') ||			 
							 fn:endsWith(validClub.filename, '.png') ||			 
							 fn:endsWith(validClub.filename, '.PNG')
			 				}">
						<img src="imageView.do?club_num=${validClub.club_num }" alt="" width="293px" height="172px" id="cardImg" />
						</c:if>
						<div class="card-body">
							<h5 class="card-title">${validClub.club_title}</h5>
							<p class="card-text">
							시작:${validClub.club_start} | 종료:${validClub.club_end}<br>
							주기:${validClub.club_interval } | 시간:${validClub.club_time }
							</p>
							<a href="#" class="btn #8bc34a light-green">More</a>
						</div>
					</div>
				</div>
				</c:forEach>
			</c:if>
			</div>
		</div>
	</div>	
	<br class="end">
</div>

<%-- <h6>현재 진행 중인 클럽</h6>
<c:if test="${empty myValidClub }">
<div>현재 참여 중인 클럽이 없습니다.</div>
</c:if>
<c:if test="${!empty myValidClub }">
<c:forEach var="validClub" items="${myValidClub}">
	<ul>
		<li>${validClub.club_num}</li>
		<li>${validClub.club_title}</li>
		<li>${validClub.club_start}</li>
		<li>${validClub.club_end}</li>
		<li>${validClub.club_interval }</li>
		<li>${validClub.club_time }</li>
	</ul>
</c:forEach>
</c:if>
<h6>종료된 클럽</h6>
<c:if test="${empty myPastClub }">
<div>활동이 종료된 클럽이 없습니다.</div>
</c:if>
<c:if test="${!empty myPastClub }">
<c:forEach var="pastClub" items="${myPastClub}">
	<ul>
		<li>${pastClub.club_num}</li>
		<li>${pastClub.club_title}</li>
		<li>${pastClub.club_start}</li>
		<li>${pastClub.club_end}</li>
		<li>${pastClub.club_interval }</li>
		<li>${pastClub.club_time }</li>
	</ul>
</c:forEach>
</c:if> --%>