<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style type="text/css">
table {
	font-family: "Lato", "sans-serif";
}

table.one {
	margin-bottom: 3em;
	border-collapse: collapse;
}

td {
	text-align: center;
	width: 10em;
	padding: 1em;
}

th {
	text-align: center;
	padding: 1em;
	background-color: #e8503a;
	color: white;
}

tr {
	height: 1em;
}

table tr:nth-child(even) {
	background-color: #eee;
}

table tr:nth-child(odd) {
	background-color: #fff;
}
</style>

<html>
<body>
<hr/>
	<div class="w3-row section"  style="min-height: 500px; margin-top: 30px;" align="center">
		<table class="table table-hover" style="width: 60%; height: 100%; table-layout: fixed;">
			<thead>
				<tr>
					<th style="width: 15%">회사명</th>
					<th>제목</th>
					<th style="width: 12%">학력</th>
					<th style="width: 15%">자격요건</th>
					<th style="width: 12%">근무조건</th>
					<th style="width: 12%">마감일</th>
				</tr>
			</thead>
			<tbody>
			<c:choose>
				<c:when test="${wlist.size() != 0}">
						<c:forEach var="w" items="${wlist}">
							<tr>
								<td><a href="/company/introduction/${w.COMPANY }"><b>${w.COMPANY }</b></a>
								</td>
								<td><a href="/work/post/${w.NUM }"><b>${w.TITLE }</b></a></td>
								<td>${w.EDUCATION }</td>
								<td>${w.CAREER }<br />
								</td>
								<td>
								${w.HIRETYPE }<br />${w.LOCAL }<br />${w.SALARY }
								</td>
								<td>
								<fmt:formatDate value="${w.ENDDATE}"
									pattern="YYYY-MM-dd" /><br/> 마감<fmt:formatNumber
									value=" ${w.MAGAM}" pattern=" " />일 전 
								</td>
							</tr>
						</c:forEach>

					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="6">검색 결과가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>

			</tbody>
		</table>
	</div>
</body>
</html>