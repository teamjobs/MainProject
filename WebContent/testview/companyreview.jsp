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
		<div class="w3-progressbar w3-round-xlarge w3-teal" style="width: 90%">
			<div class="w3-center w3-text-white">90%</div>
		</div>
	</div>
	<p>승진 기회 및 가능성</p>
	<div class="w3-progress-container w3-round-xlarge w3-small">
		<div class="w3-progressbar w3-round-xlarge w3-teal" style="width: 80%">
			<div class="w3-center w3-text-white">80%</div>
		</div>
	</div>
	<p>업무와 삶의 균형</p>
	<div class="w3-progress-container w3-round-xlarge w3-small">
		<div class="w3-progressbar w3-round-xlarge w3-teal" style="width: 75%">
			<div class="w3-center w3-text-white">75%</div>
		</div>
	</div>
	<p>사내문화</p>
	
	<div class="w3-progress-container w3-round-xlarge w3-small">
		<div class="w3-progressbar w3-round-xlarge w3-teal" style="width: 50%">
			<div class="w3-center w3-text-white">50%</div>
		</div>
	</div>
	<br/>
	<hr/>
	<br/>
	
	<div class="w3-row w3-border">
	  <div class="w3-container w3-third" align="center">
	  	<b>직원의 기업 추천율</b>
	   	<div id="donutchart"></div>
	  </div>
	  <div class="w3-container w3-third" align="center">
	    <b>직원이 전망하는 성장 가능성</b>
	   	<div id="donutchart2"></div>
	  </div>
	  <div class="w3-container w3-third" align="center">
	    <b>이 기업의 CEO 지지율</b>
	   	<div id="donutchart3"></div>
	  </div>
	</div>
	
	 
	
	
	<br>
	<br />
	<hr />
	&nbsp; 전체 총 리뷰 * 건
	<br />
	<hr />

	&nbsp; 영업 / 지원 | 현직원 | 2016.12.5

	<!-- 개개인 리뷰-->
	<div class="best w3-row" align="left">
		<div style="margin: 5px; float: left; ">
			<p>복지 및 급여</p>
			<div class="w3-progress-container w3-round-xlarge w3-small">
				<div class="w3-progressbar w3-round-xlarge w3-teal"
					style="width: 90%">
					<div class="w3-center w3-text-white">90%</div>
				</div>
			</div>
			<p>승진 기회 및 가능성</p>
			<div class="w3-progress-container w3-round-xlarge w3-small">
				<div class="w3-progressbar w3-round-xlarge w3-teal"
					style="width: 80%">
					<div class="w3-center w3-text-white">80%</div>
				</div>
			</div>
			<p>업무와 삶의 균형</p>
			<div class="w3-progress-container w3-round-xlarge w3-small">
				<div class="w3-progressbar w3-round-xlarge w3-teal"
					style="width: 75%">
					<div class="w3-center w3-text-white">75%</div>
				</div>
			</div>
			<p>사내문화</p>
			<div class="w3-progress-container w3-round-xlarge w3-small">
				<div class="w3-progressbar w3-round-xlarge w3-teal"
					style="width: 50%">
					<div class="w3-center w3-text-white">50%</div>
				</div>
			</div>

			</div>
			<div style="margin-left: 250px;width:600px;">
				<h3>한줄평</h3>
				
				<div class="w3-container w3-section w3-border-left w3-pale-blue w3-border-blue">
				   <b>장점</b> <br/>
				</div>
				<div class="w3-container w3-section w3-border-left w3-pale-red w3-border-red">
				   <b>단점</b> <br/>
				   
				</div>
			</div>
		</div>
	</div>
	
	</div>
	
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['긍정',     90],
          ['부정',     10],
        
        ]);

        var options = {
         
          pieHole: 0.4,
          legend: 'none'
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
        
        
        var data2 = google.visualization.arrayToDataTable([
            ['Task', 'Hours per Day'],
            ['긍정',     50],
            ['부정',     50],
          
          ]);

          var options2 = {
           
            pieHole: 0.4,
            legend: 'none'
          };

          var chart2 = new google.visualization.PieChart(document.getElementById('donutchart2'));
          chart2.draw(data2, options2);
          
          var data3 = google.visualization.arrayToDataTable([
              ['Task', 'Hours per Day'],
              ['긍정',     20],
              ['부정',     80],
            
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
