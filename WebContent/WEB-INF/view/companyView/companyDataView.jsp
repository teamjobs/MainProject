<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<div class="w3-panel w3-card-4" style="width:100%;">
 	<header class="w3-container w3-red">
	<p><b>${co.NAME }</b></p>
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
	<hr/>
	<div class="w3-left">
	<p>주소 : ${co.ADDR }</p>
	<p>대표번호 : ${co.CALLNUM }</p>
	</div>
</div>

<!-- 평균 연봉 -->
<style>
.flex-container {
	display: -webkit-flex;
	display: flex;
	-webkit-justify-content: space-between;
	justify-content: space-between;
	width: 800px;
	height: 200px;
	background-color: lightgrey;
}

.flex-item {
	background-color: white;
	width: 200px;
	height: 150px;
}

body{
background-color: lightgrey;
}
</style>

<h3>${icmap.COMPANY}</h3>
<div class="flex-container" align="center">
	<div class="flex-item" style="width: 350">
		<div align="center">평균연봉</div>
		<hr />
		<br/>
		<div align="center" style="font-size: 30px;">
			${icmap.AVERAGE}
			만원
		</div>
	</div>

	<div class="flex-item">
		전체 순위
		<hr />
		<br />
		<div align="center" style="font-size: 30px;">
			 ${icmap.RANK } 위
		</div>
	</div>
	<div class="flex-item">
		산업군 순위
		<hr />
		<br/>
		<div align="center" style="font-size: 30px;">${icmap.RANK } 위</div>
	</div>
</div>



<script>
$(document).ready(function(){
	
});
</script>

























