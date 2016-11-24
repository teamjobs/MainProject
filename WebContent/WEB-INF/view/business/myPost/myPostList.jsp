<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">


<div class="w3-container">
<table class="w3-table w3-striped w3-bordered">
<thead>
<tr class="w3-red">
  <th>제목</th>
  <th>종료일자</th>
  <th>직무</th>
  <th>조회수</th>
  <th>지원자수</th>
  <th>&nbsp;</th>
</tr>
</thead>
<tbody>
<c:forEach var="t" items="${ postlist}">
<tr>
  <td><a href = "/business/my/post/${t.NUM }">${t.TITLE }</a></td>
  <td>${t.ENDDATE }</td>
  <td>${t.JOB }</td>
  <td>${t.HITS }</td>
  <td>${t.VOL }</td>
  <td><a href = "/business/my/post/${t.NUM }/adj">수정</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<div class="w3-right">
<p><a class="w3-btn w3-hover-red" href="/business/my/post/upload" >구인공고 올리기</a>&nbsp;&nbsp;</p>
</div>
</div>