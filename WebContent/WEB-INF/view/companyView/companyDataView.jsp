<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>





<div class="w3-panel w3-card-4" style="width: 100%;">
	<header class="w3-container w3-red">
		<p>
			<b>${co.NAME }</b>
		</p>
	</header>
	<div class="w3-third">
		<p>대표 : ${co.BOSS }</p>
		<p>매출액 : ${co.SALESACCOUNT }</p>
	</div>
	<div class="w3-third">
		<p>기업형태 : ${co.FORM }</p>
		<p>산업군 : ${co.INDUSTRY }</p>
	</div>
	<div class="w3-third">
		<p>직원수 : ${co.EMPLOYEE_NUM }</p>
		<p>홈페이지 : ${co.WEBSITE }</p>
	</div>
	<hr />
	<div class="w3-left">
		<p>주소 : ${co.ADDR }</p>
		<p>대표번호 : ${co.CALLNUM }</p>
	</div>
</div>

<!-- 평균 연봉 -->

<div class="w3-row-padding w3-center w3-margin-top">
	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 200px">
			<div align="center"><h4>평균연봉</h4></div>
			<hr />
			<br />
			<div align="center" style="font-size: 30px;">
				<fmt:formatNumber value="${icmap.AVERAGE }" pattern=".#" />
				<small>천만원</small>
			</div>
		</div>
	</div>
	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 200px">
			<h4>전체 순위</h4>
			<hr />
			<br />
			<div align="center" style="font-size: 30px;">${icmap.RANK } 위</div>
		</div>
	</div>

	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 200px">
			<h4>산업군 순위</h4>
			<hr />
			<br />
			<div align="center" style="font-size: 30px;">${icmap.RANK }위</div>
		</div>
	</div>
</div>

<!-- 면접 경험 -->
<div class="w3-row-padding w3-center w3-margin-top">

	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 300px">
			<div align="center"><h3>면접 경험</h3></div>
				<div id="piechart" style="width: auto; height: auto;" ></div>
		</div>
	</div>

	<!-- 면접난이도 -->
	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 300px;">
			<div style="width: auto; height: 280px; margin: 0 auto">
				<div id="container-rpm"
					style="width: 100%; height: 100%; float: left;"></div>
			</div>
		</div>
	</div>


	<!-- 면접결과 -->
	<div class="w3-third">
		<div class="w3-card-2 w3-padding-top" style="min-height: 300px">
			<div align="center"><h3>면접 결과</h3></div>
			<div style="width: auto; height: auto;">
				<div id="piechart2" style="width: auto; height: auto;"></div>
			</div>
		</div>
	</div>

</div>


<!-- 스크립트 -->
<script type="text/javascript">


	//면접 경험
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
			[ "면접경험", "수" ],
			<c:forEach items="${aplist }" var="ap" varStatus="status">
					          ["${ap.APPRAISAL}", ${ap.CNT}]
					          <c:if test="${status.last == false}">
					            ,
					            </c:if>
					</c:forEach>
		]);

		var options = {
			title : '',
		};

		var chart = new google.visualization.PieChart(document.getElementById('piechart'));

		chart.draw(data, options);
	}


	//면접 결과
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart2);
	function drawChart2() {
		var data2 = google.visualization.arrayToDataTable([

			[ "면접결과", "수" ],
			<c:forEach  items="${passlist }" var="pass" varStatus="status">
									            ["${pass.PASS}", ${pass.CNT}]
									            <c:if test="${status.last == false}">
									            ,
									            </c:if>
									            </c:forEach>
		]);

		var options = {
			title : ''
		};

		var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

		chart.draw(data2, options);
	}

	//면접 난이도
	$(function() {

		var gaugeOptions = {
			chart : {
				type : 'solidgauge'
			},

			title : null,

			//게이지크기
			pane : {
				center : [ '50%', '75%' ],
				size : '100%',
				startAngle : -90,
				endAngle : 90,
				background : {
					backgroundColor : (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
					innerRadius : '60%',
					outerRadius : '100%',
					shape : 'arc'
				}
			},

			tooltip : {
				enabled : false
			},

			// 게이지 상세
			yAxis : {
				stops : [
					[ 0.1, '#55BF3B' ], // green
					[ 0.5, '#DDDF0D' ], // yellow
					[ 0.9, '#DF5353' ] // red
				],
				lineWidth : 0,
				minorTickInterval : null,
				tickAmount : 2,
				title : {
					y : -100
				},
				labels : {
					y : 16
				}
			},

			//가운데 텍스트
			plotOptions : {
				solidgauge : {
					dataLabels : {
						y : -80,
						borderWidth : 0,
						useHTML : true
					}
				}
			}
		};


		var chartRpm = Highcharts.chart('container-rpm', Highcharts.merge(gaugeOptions, {
			yAxis : {
				min : 1,
				max : 5,
				title : {
					text : '<span style="font-size:23px; font-weight: lighter; color:black">면접 난이도</span>'
				}
			},

			series : [ {
				name : '난이도',
				data : [ <fmt:formatNumber  value="${interLvmap.AVERAGE}" pattern=".#"/> ],
				dataLabels : {
					format : '<div style="text-align:center"><span style="font-size:25px;color:' +
						((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y:.1f}</span><br/>' +
						'<span style="font-size:12px;color:black"> < 쉬움 / 어려움 ></span></div>'
				},
				tooltip : {
					valueSuffix : ' revolutions/min'
				}
			} ]
		}));
	});
</script>

























