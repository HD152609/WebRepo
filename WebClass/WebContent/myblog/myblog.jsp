<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import = "org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
 
 <script src="/WebClass/js/menu.js">

 </script>
 
<title>김주찬 블로그</title>
 
 
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="myblog.html">블로그 소개</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link disabled" href="/WebClass/myblog/int.html">소개</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link disabled" href="/WebClass/myblog/dream.html">꿈</a>
      </li>
       <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link disabled" href="/WebClass/myblog/hobby.html">취미</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link disabled" href="/WebClass/myblog/list.html">버킷리스트</a>
      </li>
      
    </ul>
   <%
            UserVO user = (UserVO) session.getAttribute("user");
            if (user == null) {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item"><a class="nav-link" href = "/WebClass/bloglogin" style="color: white">Login</a></li>
            <li class="nav-item"><a class="nav-link" href = "/WebClass/myblog/sign.html" style="color: white">Register</a></li>
         </ul>
         <%
            } else {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item dropdown"><a
               class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
               id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false" style = "clolor : white"> <%=user.getName() + "님"%>
            </a>
            <div class="dropdown-menu dropdown-menu-right"
                  aria-labelledby="bd-versions">
                  <form action="/WebClass/bloglogout" method="post">
                     <button type="submit" class="dropdown-item">Sign out</button>
                  </form>
               </div></li>
         </ul>
         <%
            }
         %>
  </div>
</nav>

 <div class="modal" id="myModal">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title">로그인 결과</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <p></p>
         </div>
         <div class="modal-footer">
         
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         </div>
       </div>
     </div>
   </div>

  
  
  
  <nav id="navbar-example2" class="navbar navbar-dark bg-dark">
  <ul class="nav nav-pills">
    <li class="nav-item">
      <a class="nav-link" href="#fat">김주찬</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#mdo">아리아</a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">좋아하는 것</a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#one">농구</a>
        <a class="dropdown-item" href="#two">3D</a>
        <div role="separator" class="dropdown-divider"></div>
        <a class="dropdown-item" href="#three">게임</a>
      </div>
    </li>
  </ul>
</nav>
<div data-spy="scroll" data-target="#navbar-example2" data-offset="0">
  <h2 id="fat">김주찬</h2>
  <h4>안녕하세요 한국 디지털 미디어 고등학교 해킹 방어과 2학년 6반에 재학중인 김주찬의 블로그 입니다!!</h4>
  
 
  
  
  <h2 id="mdo">아리아</h2>
  <p>
  
  <img src = "/WebClass/image/aria.jpg" alt=" 아리아" width = "600" height = "800" title = "아리아">
<img src = "/WebClass/image/aria1.jpg"  alt=" 아리아 버스킹" width = "600" height = "800" title = "아리아 버스킹">
  
  
  
  </p>
  <h4 id="one">농구</h4>
  <p><img src = "/WebClass/image/ba.jpg"  alt=" 농구" width = "600" height = "800" title = "농구">
  </p>
  <h4 id="two">3D</h4>
  <p><img src = "/WebClass/image/3d.jpg"  alt=" 3d" width = "600" height = "800" title = "3D">
  </p>
  <h4 id="three">게임</h4>
  <p><img src = "/WebClass/image/game.jpg"  alt=" 게임" width = "600" height = "800" title = "게임">
  </p>
</div>
  
  
  
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  </body>
</html>