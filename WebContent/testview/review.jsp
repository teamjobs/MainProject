<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<style>
div.best {  
    width:1200px; 
    height:500px;
    margin: auto;
    border: 3px solid #73AD21;
}

body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
.w3-sidenav a {padding:20px}
</style>
<body>
<br/>
  <div align="center">
	<img src="/img/logoB.png" style="height: 80"/> &nbsp;<img src="/img/top5.png" style="height: 100"/>
	</div>

<!-- Sidenav (hidden by default) -->
<nav class="w3-sidenav w3-card-2 w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:40%;min-width:300px" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-closenav">Close Menu</a>
  
</nav>


<!-- !PAGE CONTENT! -->
<div class="w3-main w3-content w3-padding" style="max-width:1200px;margin-top:100px">
  	<!-- 차트 -->
  <div class="w3-row-padding w3-padding-16 w3-center" id="food">
    
    <div class="w3-quarter">
    	<h3>복지및 급여</h3>
      <!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
      <div id="pay" align="center" style="width: 250px; height: 100px;">
     </div>
    </div> 
    
     <div class="w3-quarter">
    	<h3>업무와 삶의 균형</h3>
      <!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
      <div id="work" align="center" style="width: 250px; height: 100px;">
     </div>
    </div> 
    
     <div class="w3-quarter">
    	<h3>사내문화</h3>
      <!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
      <div id="pay" align="center" style="width: 250px; height: 100px;">
     </div>
    </div> 
    
    <div class="w3-quarter">
    	<h3>승진 기회 및 창출</h3>
      <!-- <img src="/img/logoB.png" alt="Sandwich" style="width:100%"> -->
      <div id="pay" align="center" style="width: 250px; height: 100px;">
     </div>
    </div> 
    
  </div>
  
  </div>
  <br/> <br/> <br/><br/><br/><br/><br/><br/><br/>
        
        
	 <div style="margin-left: 200">
	 	<h2> <b>베스트 기업 연봉</b>   </h2>  
	 	 <p> 계약서 속 연봉이 아닌, 100% 리얼 실제 연봉</p>
     </div>
  <div class="best w3-row" >
	 <div class="w3-quarter" align="center"> 
	  	<br/>
	  	<img src="/img/logoB.png" style="height: 50px" />  <br/>
	  	
	  		<h3>JOBs</h3> 
	  			취업 컨설팅 <br/><br/>
	  			평균   &nbsp; <b style="font-size: 40">5,850</b>  만원 
	  	
	  </div>
  
  </div>
  
  
  
  
 <br/> 
<hr/>
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <ul class="w3-pagination">
      <li><a class="w3-black" href="#">1</a></li>
      <li><a class="w3-hover-black" href="#">2</a></li>
      <li><a class="w3-hover-black" href="#">3</a></li>
      <li><a class="w3-hover-black" href="#">4</a></li>
      <li><a class="w3-hover-black" href="#">»</a></li>
    </ul>
  </div>
  
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
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var paydata = google.visualization.arrayToDataTable([
        ["Element", "Density", { role: "style" } ],
        ["JOBs", 8.94, "gray"],
        ["삼성", 6, "gray"],
        ["현대", 5.30, "gray"],
        ["lg", 4, "gray"]
        
      ]);
      
      // 업무량
      var workdata = google.visualization.arrayToDataTable([
          ["Element", "Density", { role: "style" } ],
          ["Copper", 1, "gray"],
          ["Silver", 2, "gray"],
          ["Gold", 3, "gray"],
          ["Platinum", 4, "gray"]
        ]);
       
      
      var payview = new google.visualization.DataView(paydata);
      payview.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);
      
      var workview = new google.visualization.DataView(workdata);
      workview.setColumns([0, 1,
                       { calc: "stringify",
                         sourceColumn: 1,
                         type: "string",
                         role: "annotation" },
                       2]);

      var options = {
        
        width: 300,
        height: 200,
        bar: {groupWidth: "90%"},
        legend: { position: "none" },
      };
      var chart = new google.visualization.BarChart(document.getElementById("pay"));
      chart.draw(payview, options);
      
      var chart2 = new google.visualization.BarChart(document.getElementById("work"));
      chart2.draw(workview, options);
      
    }
    
    
      
      
      
      
      
  </script>


</body>
</html>

