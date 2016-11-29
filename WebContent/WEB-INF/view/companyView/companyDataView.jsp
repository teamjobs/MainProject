<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<div class="w3-panel w3-card-4" style="width: 100%;">
	<header class="w3-container w3-red">
		<p>
			<b>${co.NAME }</b>
		</p>
	</header>
	<div class="w3-third">
		<p>대표 : ${co.BOSS }</p>
		<p>매출액 : ${co.SALESACCOUNT }</p>
	</div>
	<div class="w3-third">
		<p>기업형태 : ${co.FORM }</p>
		<p>산업군 : ${co.INDUSTRY }</p>
	</div>
	<div class="w3-third">
		<p>직원수 : ${co.EMPLOYEE_NUM }</p>
		<p>홈페이지 : ${co.WEBSITE }</p>
	</div>
	<hr />
	<div class="w3-left">
		<p>주소 : ${co.ADDR }</p>
		<p>대표번호 : ${co.CALLNUM }</p>
	</div>
</div>
