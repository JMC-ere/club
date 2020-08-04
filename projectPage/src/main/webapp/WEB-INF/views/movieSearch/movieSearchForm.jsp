<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
div.search {
	width: 300px;
	margin: 0 auto;
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
</style>
<form action="movieSearch.do" method="GET">
	<div class="search">
		<input id="search_form" type="search" name="query" placeholder="영화 검색어 입력" autocomplete="off" maxlength="16" size="16">
		<button class="btn waves-effect waves-light" type="submit">
	    	<i class="material-icons">search</i>
		</button>
	</div>
</form>