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
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>회사명</th>
					<th>채용제목</th>
					<th>자격요건</th>
					<th>근무조건</th>
					<th>마감일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${searchall }">
					<tr>
						<td><a href="/company/introduction?com=${i.COMPANY }">${i.COMPANY }</a>
						</td>
						<td>${i.TITLE }</td>
						<td>${i.CAREER }<br/>${i.QUALIFICATION }
						</td>
						<td>${i.HIRETYPE }<br/>${i.LOCAL }<br/>${i.SALARY }
						</td>
					</tr>
				</c:forEach>
					<c:forEach var="x" items="${searchtest }">
					<tr>

						<td>${x.COMPANY }</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>