<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link data-turbolinks-track="true" href="/css/gf_bar.css" media="all"
	rel="stylesheet" />


<title>WorkLoad</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

<div style="margin: 30px">
	<h3>${size } 개의 검색 결과</h3>
</div>

<div align="right">
	<form action="/rank">
		<select id="ListSelect">
			<option ${option == 'Welfare' ? 'selected' : '' } value="Welfare">복지 및 급여 순</option>
			<option ${option == 'RankUp' ? 'selected' : '' } value="RankUp">승진 기회 및 가능성 순</option>
			<option ${option == 'WorkLoad' ? 'selected' : '' } value="WorkLoad">업무와 삶의 균형 순</option>
			<option ${option == 'Culture' ? 'selected' : '' } value="Culture">사내문화 순</option>
		</select>
	</form>
</div>

<div class="w3-container">
	<h2>업무와 삶의 균형 순</h2>
</div>

<div class="w3-row w3-border">
	<c:forEach var="t" items="${list }">

		<div class="w3-third w3-container ">
			<div align="center">
				<h1>
					${t.RANK } . <img src="/img/logoB.png" / height="30px"
						style="margin-top: 5px">
				</h1>
			</div>
		</div>
		<div class="w3-third w3-container" align="center"
			style="height: auto; margin-top: 5px">
			<b>${t.NAME } <br />
				<p>${t.INDUSTRY }</p>
		</div>
		<div class="w3-third w3-container">
			<dl class="content_col2_4">
				<dt>총 만족도</dt>총 리뷰 : ${t.WLCOUNT }
				<dd class="gf_row">
					<div class="us_star_m">
						<div class="star_score" style="width: ${t.WLAVG*20} ">평점</div>
					</div>
					<span class="gfvalue">${t.WLAVG}</span>
				</dd>
				<dd>
					<a
						href="/companies/90364/salaries/%ED%8E%98%EC%9D%B4%EC%8A%A4%EB%B6%81%EC%BD%94%EB%A6%AC%EC%95%84?"
						class="us_stxt_1">평균 
						<strong class='notranslate'>
						<fmt:formatNumber value="${t.PYAVG }" pattern=".#"/>	
						</strong>
						만원
					</a>
				</dd>
			</dl>
		</div> 
		<hr style="border: solid 0.5px #EAEAEA;">
	</c:forEach>
</div>





<script>


$("#ListSelect").change(function(){
	var option = $("#ListSelect option:selected").val();
	location.href = "/rank/"+option
});



</script>

