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
<div class="w3-responsive w3-card-4">
<table class="w3-table w3-striped w3-bordered">
<thead>
<tr class="w3-red">
  <th>파일 종류</th>
  <th>&nbsp;</th>
  <th>파일명</th>
  <th>파일 크기</th>
  <th>업로드일자</th>
  <th>링크</th>
</tr>
</thead>
<tbody>
<c:forEach var="t" items="${ filelist}">
<tr>
	<c:choose>
		<c:when test="${t.FILETYPE == 'image' }">
  		<td>이미지</td>
		</c:when>
		<c:when test="${t.FILETYPE == 'text' }">
		<td>문서</td>
		</c:when>
		<c:otherwise>
		<td>압축파일</td>
		</c:otherwise>
	</c:choose>
  <td><b>${t.TITLE }</b></td>
  <td><a href="/business/file/download/${t.NUM }">${t.FILENAME }</a></td>
  <td>
  		<c:choose>
			<c:when test="${t.FILESIZE < 1024*1024 }">
			<fmt:formatNumber value="${t.FILESIZE/1024 }" /> KB
		</c:when>
			<c:when test="${t.FILESIZE < 1024*1024*1024 }">
			<fmt:formatNumber value="${t.FILESIZE / (1024*1024) }" /> MB
		</c:when>
			<c:otherwise>
			<fmt:formatNumber value="${t.FILESIZE / (1024*1024*1024) }" /> GB
		</c:otherwise>
		</c:choose>
  </td>
  <td><fmt:formatDate value="${t.UPDAY }" pattern="yy/MM/dd"/></td>
  <c:choose   >
	  <c:when test="${t.POST != 0 }"><td><a href = "/business/my/post/${t.POST }">바로가기</a></td></c:when>
	  <c:otherwise><td>&nbsp;</td></c:otherwise>
  </c:choose>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<hr>
<div class="w3-right">
	<a class="w3-btn w3-hover-red" href="/business/file/fileup">파일 올리기</a>
</div>
</div>
