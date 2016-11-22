<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- 1. 원하는 부분에 어떻게 띄워줄지 '뷰페이지'를 먼저 만든다.-->
<%-- 2. ${??} 으로 불러온다.--%>

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
	<div class="w3-row section"  style="min-height: 500px; margin-top: 30px;" align="center">
		<table class="table table-hover" style="width: 60%; height: 100%;">
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
					<c:when test="${searchall.size() != 0}">
						<c:forEach var="i" items="${searchall }">
							<tr>
								<td><a href="/company/introduction?com=${i.COMPANY }"><b>${i.COMPANY }</b></a>
								</td>
								<td><b>${i.TITLE }</b></td>
								<td>${i.EDUCATION }</td>
								<td>${i.CAREER }<br />${i.QUALIFICATION }
								</td>
								<td>${i.HIRETYPE }<br />${i.LOCAL }<br />${i.SALARY }
								</td>
								<td>마감 <b><fmt:formatNumber value=" ${i.MAGAM}"
											pattern="#" />일</b> 전<br /> <fmt:formatDate value="${i.ENDDATE}"
										pattern="YYYY-MM-dd" />

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