<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<body>
	<!-- Navbar -->
	<div class="w3-top">
		<ul class="w3-navbar w3-black w3-card-2 w3-left-align">
			<li class="w3-hide-medium w3-hide-large w3-opennav w3-right"><a
				class="w3-padding-large" href="javascript:void(0)"
				onclick="myFunction()" title="Toggle Navigation Menu"><i
					class="fa fa-bars"></i></a></li>
			<c:choose>
				<c:when test="${ confirm == 'company' }">
					<li><a href="/business/main"
						class="w3-hover-none w3-hover-text-red w3-padding-large">Home</a></li>
				</c:when>
				<c:when test="${ confirm == 'work'}">
					<li><a href="/work/main"
						class="w3-hover-none w3-hover-text-red w3-padding-large">Home</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="#"
						class="w3-hover-none w3-hover-text-red w3-padding-large">Home</a></li>
				</c:otherwise>
			</c:choose>
			<li class="w3-hide-small"><a href="#band"
				class="w3-padding-large">구인</a></li>
			<li class="w3-hide-small"><a href="/find"
				class="w3-padding-large">구직</a></li>
			<li class="w3-hide-small"><a href="#contact"
				class="w3-padding-large">리뷰</a></li>
			<li class="w3-hide-small w3-dropdown-hover"><a
				href="javascript:void(0)" class="w3-hover-none w3-padding-large"
				title="More">☰ </a>
				<div class="w3-dropdown-content w3-white w3-card-4">
					<c:choose>
						<c:when test="${ confirm == 'company' }">
							<a href="/business/my">마이 페이지</a>
							<a href="/business/logout">로그아웃</a>
						</c:when>
						<c:when test="${ confirm == 'work'}">
							<a href="/my/history">마이 페이지</a>
							<a href="/business/logout">로그아웃</a>
						</c:when>
						<c:otherwise>
							<a href="/my/history">마이 페이지</a>
							<a href="#">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div></li>


			<li class="w3-hide-small w3-right"><a href="javascript:void(0)"
				class="w3-padding-large w3-hover-red" id="opensearch"><i
					class="fa fa-search"></i></a></li>
			<li class="w3-hide-small w3-right" id="search" style="display: none;">


				<!-- 3. 검색창에서 엔터를 치면 action에 지정된 경로로 간다. 경로는 Controller가 받는다. -->

				<form action="/searchall" style="display: inline;">
					<input class="w3-input w3-border w3-left" type="text"
						placeholder="기업, 채용공고를 검색해보세요." name="word" required
						style="width: 350px; vertical-align: middle; padding: 11px;">
				</form>
			</li>
		</ul>
	</div>
	<script>
		$("#opensearch").click(function() {
			$("#search").toggle("slide", {
				"direction" : "right"
			});
		});
	</script>
</body>
