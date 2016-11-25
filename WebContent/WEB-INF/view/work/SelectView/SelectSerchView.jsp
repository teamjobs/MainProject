<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 상세검색 페이지 -->

<h2 align="center">상세 검색</h2>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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


<form  action="/work/post/selectserch">
	<div align="center" class="container">
		<h3><p>설정하신 조건에 맞는 게시물 목록 입니다.</p></h3>
		<hr/>
		<div class="w3-responsive w3-card-4">
			<table class="table table-bordered table table-hover"
				style="max-width:1050; width: auto; height: auto; word-break: break-all; table-layout: fixed;">
				<thead valign="middle" style="font-size: 10pt;">
					<tr class="w3-theme">
						<th style="text-align: center;">NO.<br/></th>
						<th style="text-align: center">지역<br/></th>
						<th style="text-align: center">회사명<br/></th>
						<th style="text-align: center">제목<br/></th>
						<th style="text-align: center">직무<br/></th>
						<th style="text-align: center">학력<br/></th>
						<th style="text-align: center">자격 요건<br/></th>
						<th style="text-align: center">경력<br/></th>
						<th style="text-align: center">고용형태<br/>직급,급여</th>
						<th style="text-align: center">마감일자<br/></th>
						<th style="text-align: center">등록 일자<br/></th>
					</tr>
				</thead>
				<tbody align="center" style="font-size: 10pt; ">
						<c:forEach var="sd" items="${sslist}">
					<tr>
							<td style="text-align:center;">
							<div style="width: 30; height: 50">${sd.NUM}</div></td>
							<td style="text-align: center;">
							<div style="width: 50">${sd.LOCAL}</div></td>
							<td style="text-align: center;">
							<div style="width: 100">${sd.COMPANY}</div></td>
							<td style="text-align:center;">
							<div style="width: 180">${sd.TITLE}</div></td>
							<td style="text-align: center;">
							<div style="width: 100">${sd.JOB}</div></td>
							<td style="text-align: center;">
							<div style="width: 80">${sd.EDUCATION}</div></td>
							<td style="text-align: center;">
							<div style="width: 100; word-break: break-all;">${sd.QUALIFICATION}</div></td>
							<td style="text-align: center;">
							<div style="width: 60">${sd.CAREER}</div></td>
							<td style="text-align: center;">
							<div style="width: 100; word-break: break-all;">${sd.HIRETYPE},&nbsp;${sd.RANK}<br/>${sd.SALARY}</div></td>
							<td style="text-align: center;">
							<div style="width: 80"><fmt:formatDate value="${sd.ENDDATE}"
									pattern="YYYY-MM-dd" /><br/> 마감<fmt:formatNumber
									value=" ${sd.MAGAM}" pattern=" " />일 전</div></td>
							
							<td style="text-align: center;">
							<div style="width: 80">${sd.STARTDATE}</div></td>
					</tr>
						</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
</form>