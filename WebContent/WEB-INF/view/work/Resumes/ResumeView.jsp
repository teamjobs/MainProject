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
	<div class="w3-row section"
		style="min-height: 500px; margin-top: 30px;" align="center">
		<table class="table table-hover" style="width: 60%; height: 100%;">
			<thead>
				<tr>
					<th style="width: 15%">No.</th>
					<th>회사</th>
					<th style="width: 12%">제목</th>
					<th style="width: 12%">지원자수</th>
					<th style="width: 12%">마감일</th>
					<th style="width: 12%">지원일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${list}">
					<tr>
						<td><b>${i.NUM_1 }</b>
						</td>
						<td><b>${i.COMPANY }</b></td>
						<td>${i.TITLE }</td>
						<td>${i.VOL }<br />
						</td>
						<td>${i.ENDDATE }
						</td>
						<td>${i.UPDAY } 
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>