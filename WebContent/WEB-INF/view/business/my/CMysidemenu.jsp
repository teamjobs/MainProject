<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<br/>
<nav class="w3-sidenav w3-collapse w3-white" style=width:300px;" id="mySidenav"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
     &nbsp;&nbsp;<img src="/files/${id}.jpg" style="width:80px">
    </div>
    <div class="w3-col s8">
    <br/>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>${id }</strong>&nbsp;님</span><br>
      <a href="#" class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <br/>
  <div class="w3-container">
  </div>
  <a href="/business/my" class="w3-padding"><i class="fa fa-bell fa-fw"></i> 질문 게시판</a>
  <a href="/business/my/post" class="w3-padding"><i class="fa fa-bullseye fa-fw"></i> 구인공고 관리 </a>
  <a href="/business/file" class="w3-padding"><i class="fa fa-eye fa-fw"></i> 파일 관리 </a>
  <!-- <a href="#" class="w3-padding"><i class="fa fa-diamond fa-fw"></i>  스크랩</a> -->
  <a href="/business/my/rev" class="w3-padding"><i class="fa fa-cog fa-fw"></i> 회원정보 관리</a>
  <br/>
  <br/>
  <a href="#" class="w3-padding"><i class="fa fa-users fa-fw"></i>  Traffic</a>
  <a href="#" class="w3-padding"><i class="fa fa-bell fa-fw"></i>  News</a>
  <a href="#" class="w3-padding"><i class="fa fa-bank fa-fw"></i>  General</a>
  <a href="#" class="w3-padding"><i class="fa fa-history fa-fw"></i>  History</a>

</nav>
