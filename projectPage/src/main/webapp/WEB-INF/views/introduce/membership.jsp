<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/introduce.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


<title>회원 멤버십 소개 </title>
<style>

div.image_div{
width:80%;
display: block;
margin: 0px auto;

}



</style>
    <body>
   <div class="introduce_menu">
       <ul class="introduce_menu_list">
          <li><a href="${pageContext.request.contextPath}/main/introduce.do">++CLUB</a></li>
          <li><a href="${pageContext.request.contextPath}/main/introduce/fightclub.do">파이트클럽</a></li>
          <li><a href="${pageContext.request.contextPath}/main/introduce/membership.do">회원 멤버십</a></li>
       </ul>
   </div>
<br>
<p class="introduce_title">++CLUB의 회원 멤버십 소개 </p> 

<hr width="90%" color="green"><br>
 <div class="image_div" >
 

<img src="/club/resources/images/member1.png" style="width:30%;float:left;">
<img src="/club/resources/images/member2.png" style="width:30%;float:left;margin:0 0 0 10px;">
<img src="/club/resources/images/member3.png" style="width:30%;margin:0 0 0 200px;">
<!-- Modal Trigger -->
<div style="margin:0 auto;">
  <a class="waves-effect waves-light btn modal-trigger teal lighten-3" href="#modal3">[도움말] 포인트 획득 방법</a>
</div>
</div>


  <!-- Modal Structure -->
  <div id="modal3" class="modal">
    <div class="modal-content">
      <h4><b>[도움말]포인트 획득 방법</b></h4><br>
      <hr>
      <img src="/club/resources/images/help.jpeg" style="width:300px;text-align:center">
      <p> <i class="material-icons">add</i> 모임 참여하기 <a href="${pageContext.request.contextPath}/main/viewclub.do">[참여하러 가기]</a></p>
      <p> <i class="material-icons">add</i> 모임 참여 후 후기 남기기 <a href="${pageContext.request.contextPath}/post/post.do">[후기 남기러 가기]</a></p>
      <p> <i class="material-icons">add</i> 등등 </p>
      <p> <i class="material-icons">add</i> 등등</p>
     <p> <i class="material-icons">add</i> 등등</p>

      
    </div>
    <div class="modal-footer">
      <a href="#!" class="modal-close waves-effect waves-green btn-flat">확인</a>
    </div>
  </div>






<script>

document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.modal');
    var instances = M.Modal.init(elems, options);
  });

  // Or with jQuery

  $(document).ready(function(){
    $('.modal').modal();
  });
</script>
</body>
</html>