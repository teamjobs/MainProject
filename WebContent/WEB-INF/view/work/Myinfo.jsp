<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>




<!-- Header -->
<div class="" id="portfolio">

	<div class="w3-section w3-bottombar w3-padding-5">
		<h3>내 정보 수정</h3>
	</div>
	
</div>
<c:forEach var="t" items="${list }">
<div class="container">
  <p>내 정보를 수정하는 페이지 입니다.</p>
  <form action="/my/Myinfo/change">
   	Name : <input type="text" name="name" value="${t.NAME }"> <br/><br/>
   	Password : <input type="password" name="pass" value="${t.PASS }"> <br/><br/>
   	E-Mail : <input type="text" name="email" value="${t.EMAIL }"> <br/><br/>
    <input type="submit" value="수정" id="OK">
  </form>
</div>
</c:forEach>
<script>
	$("#OK").click(function(){
		window.confirm("정말 수정하시겠습니까?")
	})
	
</script>
