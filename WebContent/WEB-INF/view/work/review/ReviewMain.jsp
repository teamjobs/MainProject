<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Karma">
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<meta name="msvalidate.01" content="C6731F07D45F619A26195CF4D3182432" />

<link data-turbolinks-track="true" href="/css/gf_bar.css" media="all" rel="stylesheet" />
     




<style>


div.best {
	width: 1200px;
	height: 400px;
	margin: auto;
	border: 3px solid #73AD21;
}



</style>
<body>
	<br />
	<div align="center" style=" margin-top: 20px">
		<img src="/img/logoB.png" style="height: 80px" /> &nbsp;<img
			src="/img/top5.png" style="height: 100px" />
	</div>

	<!-- Sidenav (hidden by default) -->
	<nav class="w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left"
		style="display: none; z-index: 2; width: 40%; min-width: 300px"
		id="mySidenav">
		<a href="javascript:void(0)" onclick="w3_close()" class="w3-closenav">Close
			Menu</a>

	</nav>


	<!-- !PAGE CONTENT! -->
	<div class="w3-main w3-content w3-padding"
		style="max-width: 1200px; margin-top: 100px">
		<!-- 차트 -->
		<div class="w3-row-padding w3-padding-16 w3-center" id="food">

			<div class="w3-quarter" align="center">
				<h3>복지및 급여</h3>
				<!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
				<div id="pay" align="center" style="width: 250px; height: 100px;">
				</div>
				<br/><br/><br/><br/><br/>
				
				<a href="">전체 보기</a>
			</div>

			<div class="w3-quarter">
				<h3>업무와 삶의 균형</h3>
				<!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
				<div id="work" align="center" style="width: 250px; height: 100px;">
				</div>
				<br/><br/><br/><br/><br/>
				
				<a href="">전체 보기</a>
			</div>

			<div class="w3-quarter">
				<h3>사내문화</h3>
				<!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
				<div id="CULTURE" align="center" style="width: 250px; height: 100px;">
				</div>
				<br/><br/><br/><br/><br/>
				
				<a href="">전체 보기</a>
			</div>

			<div class="w3-quarter">
				<h3>승진 기회 및 창출</h3>
				<!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
				<div id="CHANCE" align="center" style="width: 250px; height: 100px;">
				</div>
				<br/><br/><br/><br/><br/>
				
				<a href="">전체 보기</a>
			</div>

		</div>

	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	


	<div style="margin-left: 200px"> 
		<h1>
			<b>베스트 기업 연봉</b>
		</h1>
		<p>계약서 속 연봉이 아닌, 100% 리얼 실제 연봉</p>
		<br/>
	</div>
	<div class="best w3-row">
		<div class="w3-quarter" align="center">
			<br /> <img src="/img/logoB.png" style="height: 50px" /> <br />

			<h2>JOBs</h2>
			취업 컨설팅 / 커넥션<br /> <br /> 평균 &nbsp; <b style="font-size: 40">5,850</b>
			만원 <br /> <br />
			<li class="content_col_4">
				<div class="gf_bar">
					<span class="min_txt">최소</span> <span class="min_num"><strong>1,000</strong></span>
					<span class="gf_left"></span> <span class="gf_center"
						style="left: 71.16727272727273%;"></span> <span class="gf_right"></span>
					<span class="max_txt">최대</span> <span class="max_num"><strong>7,300</strong></span>
					<span class="gf_bg"></span>
				</div>
			</li>
		</div>
		
		<div class="w3-quarter" align="center">
			<br /> <img src="/img/lg.jpg" style="height: 50px" /> <br />

			<h2>LG 상사</h2>
			자원개발 <br /> <br /> 평균 &nbsp; <b style="font-size: 40">4,500</b>
			만원 <br /> <br />
			<li class="content_col_4">
				<div class="gf_bar">
					<span class="min_txt">최소</span> <span class="min_num"><strong>1,800</strong></span>
					<span class="gf_left"></span> <span class="gf_center"
						style="left: 61.16727272727273%;"></span> <span class="gf_right"></span>
					<span class="max_txt">최대</span> <span class="max_num"><strong>6,300</strong></span>
					<span class="gf_bg"></span>
				</div>
			</li>
		</div>
		
		<div class="w3-quarter" align="center">
			<br /> <img src="/img/samsung.jpg" style="height: 50px" /> <br />

			<h2>JOBs</h2>
			휴대폰 / 반도체<br /> <br /> 평균 &nbsp; <b style="font-size: 40">6,350</b>
			만원 <br /> <br />
			<li class="content_col_4">
				<div class="gf_bar">
					<span class="min_txt">최소</span> <span class="min_num"><strong>3,000</strong></span>
					<span class="gf_left"></span> <span class="gf_center"
						style="left: 58.16727272727273%;"></span> <span class="gf_right"></span>
					<span class="max_txt">최대</span> <span class="max_num"><strong>11,300</strong></span>
					<span class="gf_bg"></span>
				</div>
			</li>
		</div>
		
		<div class="w3-quarter" align="center">
			<br /> <img src="/img/hd.jpg" style="height: 50px" /> <br />

			<h2>현대 자동차</h2>
			자동차 개발<br /> <br /> 평균 &nbsp; <b style="font-size: 40">6,850</b>
			만원 <br /> <br />
			<li class="content_col_4">
				<div class="gf_bar">
					<span class="min_txt">최소</span> <span class="min_num"><strong>3,200</strong></span>
					<span class="gf_left"></span> <span class="gf_center"
						style="left: 83%;"></span> <span class="gf_right"></span>
					<span class="max_txt">최대</span> <span class="max_num"><strong>10,500</strong></span>
					<span class="gf_bg"></span>
				</div>
			</li>
		</div>

	</div>
	
	



	<br />
	<hr />
	<!-- Pagination -->
	<!-- <div class="w3-center w3-padding-32">
		<ul class="w3-pagination">
			<li><a class="w3-black" href="#">1</a></li>
			<li><a class="w3-hover-black" href="#">2</a></li>
			<li><a class="w3-hover-black" href="#">3</a></li>
			<li><a class="w3-hover-black" href="#">4</a></li>
			<li><a class="w3-hover-black" href="#">»</a></li>
		</ul>
	</div> -->

	<hr id="about">
	

	<script>
		// Script to open and close sidenav
		function w3_open() {
			document.getElementById("mySidenav").style.display = "block";
		}
	
		function w3_close() {
			document.getElementById("mySidenav").style.display = "none";
		}
	</script>

	<script type="text/javascript">
		//복지 및 급여
		google.charts.load("current", {
			packages : [ "corechart" ]
		});
		google.charts.setOnLoadCallback(drawChart);
		function drawChart() {
			var paydata = google.visualization.arrayToDataTable([
				[ "Element", "Density", {
					role : "style"
				} ],
				<c:forEach var="i" begin="0" end="3">
				[ "${WELFARE[i].COMPANY}", ${WELFARE[i].WELFARE}, "gray" ],
				
				</c:forEach>
	
			]);
	
			// 업무량
			var workdata = google.visualization.arrayToDataTable([
				[ "Element", "Density", {
					role : "style"
				} ],
				<c:forEach var="i" begin="0" end="3">
				[ "${WORKLOAD[i].COMPANY}", ${WORKLOAD[i].WORKLOAD}, "gray" ],
				
				</c:forEach>
			]);
			
			// 사내문화
			
			var culturedata = google.visualization.arrayToDataTable([
				[ "Element", "Density", {
					role : "style"
				} ],
				<c:forEach var="i" begin="0" end="3">
				[ "${CULTURE[i].COMPANY}", ${CULTURE[i].CULTURE}, "gray" ],
				
				</c:forEach>
			]);
			
			// 승진및 기회 창출
			
			var CHANCEdata = google.visualization.arrayToDataTable([
				[ "Element", "Density", {
					role : "style"
				} ],
				<c:forEach var="i" begin="0" end="3">
				[ "${CHANCE[i].COMPANY}", ${CHANCE[i].CHANCE}, "gray" ],
				
				</c:forEach>
			]);
	
	
			var payview = new google.visualization.DataView(paydata);
			payview.setColumns([ 0, 1,
				{
					calc : "stringify",
					sourceColumn : 1,
					type : "string",
					role : "annotation"
				},
				2 ]);
	
			var workview = new google.visualization.DataView(workdata);
			workview.setColumns([ 0, 1,
				{
					calc : "stringify",
					sourceColumn : 1,
					type : "string",
					role : "annotation"
				},
				2 ]);
			
			var cultureview = new google.visualization.DataView(culturedata);
			workview.setColumns([ 0, 1,
				{
					calc : "stringify",
					sourceColumn : 1,
					type : "string",
					role : "annotation"
				},
				2 ]);
			
			
			var CHANCEview = new google.visualization.DataView(CHANCEdata);
			workview.setColumns([ 0, 1,
				{
					calc : "stringify",
					sourceColumn : 1,
					type : "string",
					role : "annotation"
				},
				2 ]);
	
			var options = {
				width : 300,
				height : 200,
				bar : {
					groupWidth : "70%"
				},
				legend : {
					position : "none"
				},
			};
			var chart = new google.visualization.BarChart(document.getElementById("pay"));
			chart.draw(payview, options);
	
			var chart2 = new google.visualization.BarChart(document.getElementById("work"));
			chart2.draw(workview, options);
			
			var chart3 = new google.visualization.BarChart(document.getElementById("CULTURE"));
			chart3.draw(cultureview, options);
			
			var chart4 = new google.visualization.BarChart(document.getElementById("CHANCE"));
			chart4.draw(CHANCEview, options);
	
		}
		
	</script>


</body>
</html>

