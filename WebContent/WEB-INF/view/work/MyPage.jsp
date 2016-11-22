<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Raleway", sans-serif
}

.w3-sidenav a, .w3-sidenav h4 {
	font-weight: bold
}
</style>
<body class="w3-light-grey w3-content" style="max-width: 1600px">

	<!-- Sidenav/menu -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left"
		style="z-index: 3; width: 300px;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()"
				class="w3-hide-large w3-right w3-jumbo w3-padding"
				title="close menu"> <i class="fa fa-remove"></i>
			</a>


			<h4 class="w3-padding-0">
				<b>'${id}' 님!</b>
			</h4>

			<p class="w3-text-grey">
				자신의 대표 이력서 및 <br />지원 하신 기업들을 확인하세요.
			</p>
		</div>
		<a href="#portfolio" onclick="w3_close()"
			class="w3-padding w3-text-teal"><i
			class="fa fa-th-large fa-fw w3-margin-right"></i>PORTFOLIO</a> <a
			href="#about" onclick="w3_close()" class="w3-padding"><i
			class="fa fa-home fa-fw w3-margin-right"></i>홈으로</a> <a href="#contact"
			onclick="w3_close()" class="w3-padding"><i
			class="fa fa-envelope fa-fw w3-margin-right"></i>CONTACT</a>

		<div class="w3-section w3-padding-top w3-large">
			<a href="#"
				class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i
				class="fa fa-facebook-official"></i></a> <a href="#"
				class="w3-hover-white w3-hover-text-purple w3-show-inline-block"><i
				class="fa fa-instagram"></i></a> <a href="#"
				class="w3-hover-white w3-hover-text-yellow w3-show-inline-block"><i
				class="fa fa-snapchat"></i></a> <a href="#"
				class="w3-hover-white w3-hover-text-red w3-show-inline-block"><i
				class="fa fa-pinterest-p"></i></a> <a href="#"
				class="w3-hover-white w3-hover-text-light-blue w3-show-inline-block"><i
				class="fa fa-twitter"></i></a> <a href="#"
				class="w3-hover-white w3-hover-text-indigo w3-show-inline-block"><i
				class="fa fa-linkedin"></i></a>
		</div>
	</nav>

	<!-- Overlay effect when opening sidenav on small screens -->
	<div class="w3-overlay w3-hide-large w3-animate-opacity"
		onclick="w3_close()" style="cursor: pointer" title="close side menu"
		id="myOverlay"></div>

	<!-- !PAGE CONTENT! -->
	<div class="w3-main" style="margin-left: 300px">



		<!-- Header -->
		<header class="w3-container" id="portfolio">
			<span class="w3-opennav w3-hide-large w3-xxlarge w3-hover-text-grey"
				onclick="w3_open()"><i class="fa fa-bars"></i></span>
			<h1>
				<b>${UPLOAD}</b>
			</h1>

			<div class="w3-section w3-bottombar w3-padding-5">
				<span class="w3-margin-right"><h3>
						<b>내 이력서</b>
					</h3></span>
			</div>




			<div class="w3-section w3-bottombar w3-padding-5">
				<span class="w3-margin-right"><h3>
						<b>지원 현황</b>
					</h3></span>
			</div>
		</header>
		<form id="cancel" action="/my/cancel" method="post"
			style="display: hidden">
			<input id="cn" type="hidden" name="n" value="" />
		</form>
		<!-- First Photo Grid-->
		<div class="w3-row-padding">
			<c:forEach var="t" items="${list }">
				<div class="w3-third w3-container w3-margin-bottom">
					<div class="w3-container w3-white">
						<p>
							<b>${t.COMPANY }</b>
						</p>
						<p>
							제목 : ${t.TITLE } <br /> 지원일자 :
							<fmt:formatDate value="${t.UPDAY}" pattern="YYYY-MM-dd" />
						</p>
						<a href="javascript:gocancel(${t.NUM })"
							class="glyphicon glyphicon-remove" id="${t.NUM }">지원취소</a>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>
	<script>
		function gocancel(num) {
			if (window.confirm("지원취소를 하시겠습니까?")) {
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
	
		for (var i = 0; i < 100000; i++) {
			$(i).click(function() {
				window.alert(message);
			});
		}
	</script>
</body>
</html>

