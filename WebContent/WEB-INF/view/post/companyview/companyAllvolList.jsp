<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<br>
<br><br>
<br>
<div class="w3-container">
<table class="w3-table w3-striped w3-bordered">
<thead>
<tr class="w3-red">
  <th>&nbsp;</th>
  <th>제목</th>
  <th>지원자</th>
  <th>지원일자</th>
  <th>바로가기</th>
</tr>
</thead>
<tbody>
<c:forEach var="i" begin="0" end="${volsize-1 }" step="1">
<tr>
  <td>${i+1 }</td>
  <td><a href = "/business/post/${vollist[i].POST }/vol/${vollist[i].NUM }/download">${vollist[i].TITLE }</a></td>
  <td>${vollist[i].UPLOADER }</td>
  <td><fmt:formatDate value="${vollist[i].UPDAY }" pattern="YYYY-MM-dd" /></td>
  <td><a href="/business/post/${vollist[i].POST }" target="_blank">보기</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<div class="w3-right">
<p><a class="w3-btn w3-hover-red" href="/business/my/post/upload" >구인공고 올리기</a>&nbsp;&nbsp;</p>
</div>
</div>