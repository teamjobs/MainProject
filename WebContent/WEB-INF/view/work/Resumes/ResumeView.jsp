<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	background-color: #111111;
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
	<div class="w3-row section"
		style="min-height: 500px; margin-top: 20px;" align="center">
		<h2><b>내가 지원한 공고</b></h2><br/>
		<table class="table table-hover" style="width: 60%; height: 100%;">
			<thead>
				<tr>
					<th style="width: 8%">지역</th>
					<th style="width: 15%">회사</th>
					<th>제목</th>
					<th style="width: 10%">지원자</th>
					<th style="width: 15%">마감일</th>
					<th style="width: 15%">지원일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${list}">
					<tr>
						<td>${i.LOCAL }</td>
						<td><a href="/companydata/${i.COMPANY }"><b>${i.COMPANY }</b></td>
						<td><a href="/work/post/${i.NUM }"><b>${i.TITLE }</b></td>
						<td>${i.VOL }<br/></td>
						<td>${i.ENDDATE }</td>
						<td>${i.UPDAY }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>