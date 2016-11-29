<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">


<div class="w3-container">
<table class="w3-table w3-striped w3-bordered">
<thead>
<tr class="w3-red">
  <th>회사</th>
  <th>종료일자</th>
  <th>직무</th>
  <th>조회수</th>
  <th>지원자수</th>
  <th>&nbsp;</th>
</tr>
</thead>
<tbody>
<c:forEach var="postlist" items="${ postlist}">
<tr>
  <td><a href = "/work/post/${postlist.NUM }">${postlist.COMPANY }</a></td>
  <td>${fn:substringBefore(postlist.ENDDATE,' ') }</td>
  <td>${postlist.JOB }</td>
  <td>${postlist.HITS }</td>
  <td>${postlist.VOL }</td>
  <td><a href = "/business/my/post/${postlist.NUM }/vol">확인</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>