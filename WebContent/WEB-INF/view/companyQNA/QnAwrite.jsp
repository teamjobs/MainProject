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
<form action="/work/qna/${comp }/writerst" method="post" enctype="multipart/form-data" id="inputform">
<label class="w3-label">작성자 : </label> <label class="w3-label">${id }</label>
<input class="w3-input" type="text" name="title" required><label class="w3-label">제목</label><br>
 <br>
<input type="hidden" name="id" value="${id }" />
<textarea name="ques" style="width: 100%;"></textarea><br>
<label class="w3-label">문의사항</label><br><hr/>
<input class="w3-btn w3-theme" id="sub" type="submit" value="작성하기"/>
</form>
</div>
