<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<div class="w3-container">
<div class="w3-panel w3-card-2">
	<a href="" class="w3-btn w3-tiny">${com.NAME }</a>&nbsp;
	<c:if test=" ${ confirm == 'work'}">
	<a href="" class="w3-btn w3-tiny">공고 스크랩</a>
	</c:if>
	<div class="w3-container w3-center">
	<h3>${pd.TITLE}</h3>	
	</div>
	<hr/>
	<p><b>${com.NAME }</b></p>
	<div class="w3-third">
	<p>대표 : ${com.BOSS }</p>
	<p>매출액 : ${com.SALESACCOUNT }</p>
	</div>
	<div class="w3-third">
	<p>기업형태 : ${com.FORM }</p>
	<p>산업군 : ${com.INDUSTRY }</p>
	</div>
	<div class="w3-third">
	<p>직원수 : ${com.EMPLOYEE_NUM }</p>
	<p>홈페이지 : ${com.WEBSITE }</p>
	</div>
</div>
</div>

<div class="w3-container">
<div class="w3-container">
	<div class="w3-third">
	<h3>지원자격</h3>
	<p>업무경력 : ${pd.CAREER }</p>
	<p>학력조건 : ${pd.EDUCATION }</p>
	</div>
	<div class="w3-third">
	<h3>근무조건</h3>
	<p>직무 : ${pd.JOB }</p>
	<p>지역 : ${pd.LOCAL }</p>
	<p>급여 : (${pd.SALARY })${pd.PAY }</p>
	</div>
	<div class="w3-third">
	<h3>고용형태</h3>
	<p>고용형태 : ${pd.HIRETYPE }</p>
	<p>채용직급 : ${pd.RANK }</p>
	</div>
</div>
<hr/>
<div class="w3-container">
	<a href="/work/file/download/${pd.NUM }" class="w3-btn w3-large" style="width: 100%;">이력서 양식 다운로드</a>
</div>
<hr/>
<div class="w3-container">
	<h3>업무내용</h3>
	<p>${pd.BUSINESS }</p>
	<br>
	<h3>상세요강</h3>
	<p>${pd.QUALIFICATION }</p>
</div>
</div>

<div class="w3-container">
<div class="w3-panel w3-card-2">
	<div class="w3-row">
	<div class="w3-half">
	<p>지원방법 : <br>${pd.WAY }</p>
	<p>채용절차 : <br>${pd.PROCESS }</p>
	</div>
	<div class="w3-half">
	<p><b>${pd.COMPANY }</b></p> 
	<p>담당자 : ${pd.INCHARGE }</p>
	<p>연락처 : ${pd.CALLNUMBER }</p>
	</div>
	</div>
	</div>
</div>
<c:choose>
<c:when test="${ confirm == 'work'}">
<p><a href="/" class="w3-btn w3-large" style="width: 100%;">입사지원</a></p>
</c:when>
<c:when test="${ comfirm == 'company' && id == com.ID}">
<p><a href="/business/post/${pd.NUM }/adj" class="w3-btn w3-large" style="width: 100%;">공고 수정</a></p>
</c:when>
</c:choose>