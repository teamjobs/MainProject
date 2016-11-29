<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<div class="w3-container">
<div class="w3-container">
<h2><label class="w3-label">${qdata.QTITLE }</label></h2>
<label class="w3-label">작성자 : </label> <label class="w3-label">${qdata.QUEID }</label><hr/>
${qdata.QUES }
</div>
<br><br>
<div class="w3-card-4">
	<div class="w3-container w3-lightgray">
		<br>
		<form action="/business/qna/${qdata.NUM }/ans/rst" method="post" enctype="multipart/form-data" id="inputform">
		<label class="w3-label">답변 : </label> <label class="w3-label">${id }</label>
		<input type="hidden" name="id" value="${id }" />
		<textarea name="answ" style="width: 100%;"></textarea><br>
		<br><hr/>
		<input class="w3-btn w3-theme" id="sub" type="submit" value="작성하기"/>
		</form>
	</div>
</div>
</div>	
	