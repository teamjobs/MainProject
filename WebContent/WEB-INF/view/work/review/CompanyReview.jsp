<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
div.best {
	width: 180px;
	height: 300px;
	margin: 30px;
	border: 1px solid #A6A6A6;
}
</style>
<body>

	<div style="margin: 30px">


		<p class="w3-large">
			<b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>전체
				리뷰 통계</b>
		</p>
		<p>복지 및 급여</p>
		<div class="w3-progress-container w3-round-xlarge w3-small">
			<c:set var="AWELFARE_VAL" value="${avg.AWELFARE.intValue() }" />
			<div class="w3-progressbar w3-round-xlarge w3-gray"
				style="width:<fmt:formatNumber value="${(AWELFARE_VAL/5)*100}" pattern=".#" />%">
				<div class="w3-center w3-text-white">
					<fmt:formatNumber value="${(AWELFARE_VAL/5)*100}" pattern=".#" />
					%
				</div>
			</div>
		</div>
		<p>승진 기회 및 가능성</p>
		<div class="w3-progress-container w3-round-xlarge w3-small">
			<c:set var="ACHANCE_VAL" value="${avg.ACHANCE.intValue() }" />
			<div class="w3-progressbar w3-round-xlarge w3-gray"
				style="width: <fmt:formatNumber value="${(ACHANCE_VAL/5)*100}" pattern=".#" />%">
				<div class="w3-center w3-text-white">
					<fmt:formatNumber value="${(ACHANCE_VAL/5)*100}" pattern=".#" />
					%
				</div>
			</div>
		</div>
		<p>업무와 삶의 균형</p>
		<div class="w3-progress-container w3-round-xlarge w3-small">
			<c:set var="AWORKLOAD_VAL" value="${avg.AWORKLOAD.intValue() }" />
			<div class="w3-progressbar w3-round-xlarge w3-gray"
				style="width: <fmt:formatNumber value="${(AWORKLOAD_VAL/5)*100}" pattern=".#" />%">
				<div class="w3-center w3-text-white">
					<fmt:formatNumber value="${(AWORKLOAD_VAL/5)*100}" pattern=".#" />
					%
				</div>
			</div>
		</div>
		<p>사내문화</p>

		<div class="w3-progress-container w3-round-xlarge w3-small">
			<c:set var="ACULTURE_VAL" value="${avg.ACULTURE.intValue() }" />
			<div class="w3-progressbar w3-round-xlarge w3-gray"
				style="width: <fmt:formatNumber value="${(ACULTURE_VAL/5)*100}" pattern=".#" />%">
				<div class="w3-center w3-text-white">
					<fmt:formatNumber value="${(ACULTURE_VAL/5)*100}" pattern=".#" />
					%
				</div>
			</div>
		</div>
		<br />
		<hr />
		<br />

		<div class="w3-row w3-border">
			<div class="w3-container w3-third" align="center">
				<br /> <b>직원의 기업 추천율</b>
				<div id="donutchart"></div>
			</div>
			<div class="w3-container w3-third" align="center">
				<br /> <b>직원이 전망하는 성장 가능성</b>
				<div id="donutchart2"></div>
			</div>
			<div class="w3-container w3-third" align="center">
				<br /> <b>이 기업의 CEO 지지율</b>
				<div id="donutchart3"></div>
			</div>
		</div>




		<br> <br />
		<hr style="border: solid 1px gray;">
		&nbsp; 전체 총 리뷰 ${all} 건 <br />
		<hr style="border: solid 1px gray;">

		<c:forEach var="t" items="${list }">
	&nbsp; ${t.TYPE } | ${t.EMPLOYMENT } | <fmt:formatDate value="${t.UPDAY}" pattern="YYYY-MM-dd" />
	
	<br />
			<br />

			<div class="w3-row">
				<div class="w3-third w3-container">
					<p>복지 및 급여</p>
					<div class="w3-progress-container w3-round-xlarge w3-small">
						<c:set var="WELFARE_VAL" value="${t.WELFARE.intValue() }" />
						<div class="w3-progressbar w3-round-xlarge w3-gray"
							style="width: ${(WELFARE_VAL/5) *100 }%">
							<div class="w3-center w3-text-white">${(WELFARE_VAL/5) *100 }%</div>
						</div>
					</div>
					<p>승진 기회 및 가능성</p>
					<div class="w3-progress-container w3-round-xlarge w3-small">
						<c:set var="CHANCE_VAL" value="${t.CHANCE.intValue() }" />
						<div class="w3-progressbar w3-round-xlarge w3-gray"
							style="width: ${(CHANCE_VAL/5) *100 }%">
							<div class="w3-center w3-text-white">${CHANCE_VAL/5 *100 }%</div>
						</div>
					</div>
					<p>업무와 삶의 균형</p>
					<div class="w3-progress-container w3-round-xlarge w3-small">
						<c:set var="WORKLOAD_VAL" value="${t.WORKLOAD.intValue() }" />
						<div class="w3-progressbar w3-round-xlarge w3-gray"
							style="width: ${(WORKLOAD_VAL/5) *100 }%">
							<div class="w3-center w3-text-white">${WORKLOAD_VAL/5 *100 }%</div>
						</div>
					</div>

					<p>사내문화</p>
					<div class="w3-progress-container w3-round-xlarge w3-small">
						<c:set var="CULTURE_VAL" value="${t.CULTURE.intValue() }" />
						<div class="w3-progressbar w3-round-xlarge w3-gray"
							style="width: ${CULTURE_VAL/5 *100 }%">
							<div class="w3-center w3-text-white">${CULTURE_VAL/5 *100 }%</div>
						</div>
					</div>
				</div>
				<br />
				<div class="w3-twothird w3-container">
					<div
						class="w3-container w3-section w3-border-left w3-pale-yellow w3-border-yellow">
						<b>한줄평</b> <br /> ${t.ONERIVEW }
					</div>

					<div
						class="w3-container w3-section w3-border-left w3-pale-blue w3-border-blue">
						<b>장점</b> <br /> ${t.POSITIVE }
					</div>
					<div
						class="w3-container w3-section w3-border-left w3-pale-red w3-border-red">
						<b>단점</b> <br /> ${t.NEGATIVE }

					</div>
				</div>

			</div>
			<br />
			<hr style="border: solid 1px gray;">
		</c:forEach>
	</div>
	<script type="text/javascript"
		src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
        	
          ['Task', 'Hours per Day'],
          ['긍정',    ${(avg.ARECOMAND*100)}],
          ['부정',     ${100-(avg.ARECOMAND*100)}],
        
        ]);

        var options = {
         
          pieHole: 0.4,
          legend: 'none'
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
        
        
        var data2 = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['긍정',     ${(avg.AFUTURE*100)}],
            ['부정',     ${100-(avg.AFUTURE*100)}],
          
          ]);

          var options2 = {
           
            pieHole: 0.4,
            legend: 'none'
          };

          var chart2 = new google.visualization.PieChart(document.getElementById('donutchart2'));
          chart2.draw(data2, options2);
          
          var data3 = google.visualization.arrayToDataTable([
              ['Task', 'Hours per Day'],
              ['긍정',     ${(avg.ATHINK*100)}],
              ['부정',     ${100-(avg.ATHINK*100)}],
            
            ]);

            var options3 = {
             
              pieHole: 0.4,
              legend: 'none'
            };

            var chart3 = new google.visualization.PieChart(document.getElementById('donutchart3'));
            chart3.draw(data3, options3);
      }
    </script>
</body>
</html>
