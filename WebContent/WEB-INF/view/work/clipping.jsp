<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



<!-- Header -->
<div class="" id="portfolio">
	<span class="w3-opennav w3-hide-large w3-xxlarge w3-hover-text-grey"
		onclick="w3_open()"><i class="fa fa-bars"></i></span>
	<h1>
		<b>${UPLOAD}</b>
	</h1>
	<div class="w3-section w3-bottombar w3-padding-5">
		<h3>내 스크랩 공고</h3>
	</div>

</div>
<form id="cancel" action="/my/cancel" method="post"
	style="display: hidden">
	<input id="cn" type="hidden" name="n" value="" />
</form>
<!-- First Photo Grid-->
<div class="w3-row-padding">
	<c:forEach var="t" items="${clipping }">
		<div class="w3-third w3-container w3-margin-bottom">
			<div class="w3-container w3-white">
				<p>
					<b>${t.COMPANY }</b>
				</p>
				<p>
					제목 : ${t.TITLE } <br/> 마감일자 :
					<fmt:formatDate value="${t.ENDDATE}" pattern="YYYY-MM-dd" />
				</p>
				<a href="javascript:gocancel(${t.NUM })"
					class="fa fa-close" id="${t.NUM }">스크랩취소</a>
			</div>
		</div>

	</c:forEach>
</div>
<script>
	function gocancel(num) {
		if (window.confirm("스크랩 취소를 하시겠습니까?")) {
			$("#cn").val(num);
			$("#cancel").submit();
		}
	}

	// Script to open and close sidenav
	function w3_open() {
		document.getElementById("mySidenav").style.display = "block";
		document.getElementById("myOverlay").style.display = "block";
	}

	function w3_close() {
		document.getElementById("mySidenav").style.display = "none";
		document.getElementById("myOverlay").style.display = "none";
	}

	
</script>