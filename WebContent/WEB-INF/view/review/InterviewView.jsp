<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>

<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>


<style>
.flex-container {
	display: -webkit-flex;
	display: flex;
	width: 800px;
	height: 400px;
	
	background-color: lightgrey;
}



.flex-item {
	background-color: white;
	width: 300px;
	height: 200px;
	margin: 2px;
}

body {
	background-color: lightgrey;
}
</style>



<h2>인터뷰 뷰페이지</h2>


<div class="flex-container">

	<div class="flex-item">
		<div style="width: 600; height: 200; margin:0 auto">
			<div id="container-rpm"
				style="width: 298; height: 221; float:inherit;"></div>
		</div>

	</div>




	<div class="flex-item">
	<div align="center">면접 경험</div>
		<div>
			<script type="text/javascript">
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
						title : ''
					};
			
					var chart = new google.visualization.PieChart(document.getElementById('piechart'));
			
					chart.draw(data, options);
				}
			</script>
			<div id="piechart" style="width: 298px; height: 200;"></div>

		</div>
	</div>


	${in.APPRALSAL}
	<div class="flex-item">
	<div align="center">면접 결과</div>
		<div>
			<script type="text/javascript">
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
			</script>
			<div id="piechart2" style="width: 298px; height: 200;"></div>
		</div>
	</div>
</div>


<script>
	$(function() {

		var gaugeOptions = {
			chart : {
				type : 'solidgauge'
			},

			title : null,

			pane : {
				center : [ '50%', '85%' ],
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

			// the value axis
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
					y : -70
				},
				labels : {
					y : 16
				}
			},

			plotOptions : {
				solidgauge : {
					dataLabels : {
						y : 5,
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
					text : '면접 난이도'
				}
			},

			series : [ {
				name : '난이도',
				data : [<fmt:formatNumber  value="${interLvmap.AVERAGE}" pattern=".#"/>],
				dataLabels : {
					format : '<div style="text-align:center"><span style="font-size:25px;color:' +
						((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'green') + '">{y:.1f}</span><br/>' +
						'<span style="font-size:12px;color:green"> < 쉬움 / 어려움 ></span></div>'
				},
				tooltip : {
					valueSuffix : ' revolutions/min'
				}
			} ]
		}));
	});
</script>
















