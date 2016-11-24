<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<div align="center">
	<h3>기업 채용 정보</h3>
</div>


	<div class="w3-container">
		<hr>
		<div class="w3-center">
			<h2>회사</h2>
			<h3><p w3-class="w3-large">최신 공고 현황</p></h3>
		</div>
		<div class="w3-responsive w3-card-4">
			<table class="w3-table w3-striped w3-bordered">
				<thead>
					<tr class="w3-theme">
						<th style="text-align: center;">NO.</th>
						<th style="text-align: center;">지역</th>
						<th style="text-align: center;">회사명</th>
						<th style="text-align: center;">제목</th>
						<th style="text-align: center;">직무</th>
						<th style="text-align: center;">학력</th>
						<th style="text-align: center;">자격 요건</th>
						<th style="text-align: center;">경력</th>
						<th style="text-align: center;">고용형태,직급,급여</th>
						<th style="text-align: center;">마감일자</th>
						<th style="text-align: center;">등록 일자</th>
						<th style="text-align: center;">확인 Y/N</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="w" items="${wlist }">
					<tr>
							<td style="text-align: center;">${w.NUM}</td>
							<td style="text-align: center;">${w.LOCAL}</td>
							<td style="text-align: center;">${w.COMPANY}</td>
							<td style="text-align: center;">${w.TITLE}</td>
							<td style="text-align: center;">${w.JOB}</td>
							<td style="text-align: center;">${w.EDUCATION}</td>
							<td style="text-align: center;">${w.QUALIFICATION}</td>
							<td style="text-align: center;">${w.CAREER}</td>
							<td style="text-align: center;">${w.HIRETYPE}</td>
							<td style="text-align: center;">${w.ENDDATE}</td>
							<td style="text-align: center;">${w.STARTDATE}</td>
							<td style="text-align: center;">Y</td>
					</tr>
						</c:forEach>

				</tbody>
			</table>
		</div>
	</div>

