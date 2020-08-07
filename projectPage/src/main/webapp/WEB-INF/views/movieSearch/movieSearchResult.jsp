<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style type="text/css">
li.item{
	display: inline-block;
   	vertical-align: middle;
  		padding: 6px 5px 6px 0px;
  		border-bottom: 1px solid #efefef;
  		width:100%;
}
.picture{
	float:left;
	height:100%;
	margin:0 5px;
}
div.detail{
	margin:auto 0;
	vertical-align: middle;
}
div.search {
	width: 300px;
	margin: 20px auto;
}
input::placeholder {
	color: #f0f4c3;
	font-style: italic;
}
input#search_form{
	width: 230px;
	float:left;
}
button {
    margin-top:10px;
	float: right;
}
p .material-icons {
	vertical-align:bottom;
	color: red;
}
.star-rating{
	width:100px;
}
.star-rating,.star-rating span {
	display:inline-block; 
	height:39px; 
	overflow:hidden;
	background-image:url(${pageContext.request.contextPath}/resources/images/star.png);
	background-repeat:no-repeat;
}
.star-rating span{
	background-position:left bottom;
	line-height:0;
	vertical-align:top;
}
</style>
<form action="movieSearch.do" method="GET">
	<div class="search">
		<input id="search_form" type="search" name="query" placeholder="영화 검색어 입력" autocomplete="off" maxlength="16" size="16">
		<button class="btn waves-effect waves-light" type="submit">
	    	<i class="material-icons" id="search">search</i>
		</button>
	</div>
</form>
<div id="search_result">

<ul class="search_result">
<c:if test="${empty list }">
<li class="item">
	검색된 영화가 없습니다
</li>
</c:if>
<c:if test="${!empty list }">
 	<c:forEach var="movie" items="${list}">
 	    <li class="item">
      <a href="${movie.link }">
      	<img src="${movie.image}" class="picture">
      </a>
      <div class="detail">
	      <span class="title">${movie.title} | ${movie.pubDate}</span>
	      <p><b>감독</b> ${movie.director} <br>
	      	<b>배우</b> ${movie.actor}<br>
	      	<b>평점</b> ${movie.userRating} /10
	      	<span class="star-rating">
	      		<span></span>
	      	</span>
	      	<%-- <c:if test="${movie.userRating>=8}">
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
	      	</c:if>
	      	<c:if test="${movie.userRating<8 && movie.userRating>=6}">
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
	      	</c:if>
	      	<c:if test="${movie.userRating<6 && movie.userRating>=4}">
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
	      	</c:if>
	      	<c:if test="${movie.userRating<4 && movie.userRating>=2}">
		      	<i class="material-icons grade">grade</i>
		      	<i class="material-icons grade">grade</i>
	      	</c:if>
	      	<c:if test="${movie.userRating<2}">
		      	<i class="material-icons grade">grade</i>
	      	</c:if> --%>
	      </p>
      </div>
    </li>
    </c:forEach>
</c:if>
</ul>
</div>
