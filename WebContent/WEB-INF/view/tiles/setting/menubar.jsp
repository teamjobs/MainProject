<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<style>
body {
	font-family: "Lato", sans-serif
}

.mySlides {
	display: none
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

<body>
	<!-- Navbar -->
	<div class="w3-top">
		<ul class="w3-navbar w3-black w3-card-2 w3-left-align">
			<li class="w3-hide-medium w3-hide-large w3-opennav w3-right"><a
				class="w3-padding-large" href="javascript:void(0)"
				onclick="myFunction()" title="Toggle Navigation Menu"><i
					class="fa fa-bars"></i></a></li>
			<li><a href="#"
				class="w3-hover-none w3-hover-text-red w3-padding-large">Home</a></li>
			<li class="w3-hide-small"><a href="#band"
				class="w3-padding-large">구인</a></li>
			<li class="w3-hide-small"><a href="#tour"
				class="w3-padding-large">구직</a></li>
			<li class="w3-hide-small"><a href="#contact"
				class="w3-padding-large">면접</a></li>
			<li class="w3-hide-small w3-dropdown-hover"><a
				href="javascript:void(0)" class="w3-hover-none w3-padding-large"
				title="More">☰ </a>
				<div class="w3-dropdown-content w3-white w3-card-4">
					<a href="#">스마트 서치</a> <a href="#">내 정보</a> <a href="#">로그아웃</a>
				</div></li>
			<li class="w3-hide-small w3-right"><a href="javascript:void(0)"
				class="w3-padding-large w3-hover-red" id="opensearch"><i
					class="fa fa-search"></i></a></li>
		</ul>
	</div>
	<div>
		<header class="w3-row-padding w3-center"
			style="margin-top: 40px; padding: 1em; display: none" id="search">
			<div align="center">
				<div class="centeringContainer" style="width: 300px; height: 120px;">
					<form action="form.asp" target="_blank">
						<br /> <input class="w3-input w3-border w3-left" type="text"
							placeholder="기업, 채용공고를 검색해보세요." name="Message" required>
						<button type="submit" class="w3-btn-block w3-padding w3-black">검&nbsp;&nbsp;&nbsp;&nbsp;색</button>
					</form>
				</div>
			</div>
		</header>
	</div>
	<script>
		$("#opensearch").click(function() {
			console.log("?");
			$("#search").slideToggle();
		});
	</script>
</body>
</html>
