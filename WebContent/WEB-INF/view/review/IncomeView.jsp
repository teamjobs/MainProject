<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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


<h2>평균연봉 페이지</h2>
<h3>${icmap.COMPANY}</h3>
<div class="flex-container" align="center">
	<div class="flex-item" style="width: 350">
		<div align="center">평균연봉</div>
		<hr />
		<br/>
		<div align="center" style="font-size: 30px;">
			<fmt:formatNumber value=" ${icmap.AVERAGE}" pattern=".#" />
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

연봉평균통계


























