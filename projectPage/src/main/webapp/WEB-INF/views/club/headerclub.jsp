<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <nav class="nav-extended">
    <div class="nav-wrapper light-green">
      <a href="${pageContext.request.contextPath }/main/main.do" class="brand-logo center" >++ CLUB</a>
      <a href="#" data-target="dropdown1" class="sidenav-trigger dropdown-trigger btn light-green" id="mobile-demo"><i class="material-icons">menu</i></a>
	
	  <!-- Dropdown Structure -->
	  <ul id='dropdown1' class='dropdown-content'>
	    <li><a href="#!">Login</a></li>
	    <li><a href="#!">LogOut</a></li>
	    <li><a href="#!">MyPage</a></li>
	  </ul>

      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li><a href="sass.html">LOGIN</a></li>
        <li><a href="badges.html">LOGOUT</a></li>
        <li><a href="collapsible.html">MY PAGE</a></li>
      </ul>
    </div>
    <div class="nav-content light-green darken-2 center">
      <ul class="tabs tabs-transparent"> 
        <li class="tab"><a href="viewclub.do">전체 클럽</a></li>
        <li class="tab"><a href="#test2">장르별 클럽</a></li>
        <li class="tab"><a href="#">요일별 클럽</a></li>
        <li class="tab"><a href="#test4">파이트클럽 크루</a></li>
        <c:if test="${user_auth >=3}"><li class="tab"><a href="boardclub.do">클럽 개설 제안</a></li></c:if>
      </ul>
    </div>
  </nav>
  <script
  src="https://code.jquery.com/jquery-3.5.1.js"
  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>  
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('select').formSelect();
  });
</script>