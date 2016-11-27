<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


<div class="w3-container">

<c:choose>
<c:when test="${ qlistsize == 0 }">
<h3> 질문 목록이 없습니다. </h3>
</c:when>
<c:otherwise>

<table class="w3-table w3-striped w3-bordered">
<thead>
<tr class="w3-red">
  <th>&nbsp;</th>
  <c:choose>
  <c:when test="${ confirm == 'work'}">
    <th>회사명</th>
  </c:when>
  <c:otherwise>
    <th>작성자</th>
  </c:otherwise>
  </c:choose>
  <th>제목</th>
  <th>작성일자</th>
  <th>답변여부</th>
</tr>
</thead>
<tbody>

			<c:forEach var="i" begin="0" end="${qlistsize }" step="1">
				<tr>
					<td>${i+1 }</td>
					<c:choose>
						<c:when test="${ confirm == 'work'}">
							<td>${qlist[i].ANSCO }</td>
						</c:when>
						<c:otherwise>
							<td>${qlist[i].QUEID }</td>
						</c:otherwise>
					</c:choose>
					<td><a href="/work/qna/${qlist[i].NUM }" target="_blank">${qlist[i].QTITLE }</a></td>
					<td>${qlist[i].UPDAY }</td>
					<c:choose>
					<c:when test="${ confirm == 'company' && qlist[i].ANSCO == myCo && qlist[i].CHE != 'check'}">
						<td><a href="/business/qna/${qlist[i].NUM }/ans"><i class="fa fa-check"></i></a></td>
					</c:when>
					<c:when test="${ qlist[i].CHE != 'check'}">
						<td></td>
					</c:when>
					<c:otherwise>
						<td><i class="fa fa-check"></i></td>
					</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
</tbody>
</table>


</c:otherwise>
</c:choose>
</div>
<div class="w3-container">
<c:if test="${ confirm == 'work'}">
<p><a href="/work/qna/${co.NAME }/write" target="_blank" class="w3-btn w3-large" style="width: 100%;">질문 작성</a></p>
</c:if>
</div>
	