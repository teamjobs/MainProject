<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<a href="/work/main" class="btn btn-info btn-lg" style="padding: 10px 30px;" >
          <span class="glyphicon glyphicon-home" ></span> 홈 화면으로
        </a>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <ul class="w3-navbar w3-left-align w3-black">
    <li><a class="w3-padding-large" href="#band">BAND</a></li>
    <li><a class="w3-padding-large" href="#tour">TOUR</a></li>
    <li><a class="w3-padding-large" href="#contact">CONTACT</a></li>
    <li><a class="w3-padding-large" href="#">MERCH</a></li>
  </ul>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:0px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="/img/introduction.png" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      
    </div>
  </div>
  <br/> <br/>
  <div align="center">
  <img src="/img/logoB.png" >
  </div>

  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band" align="center">
    <!-- <h2 class="w3-wide">THE BAND</h2> -->
    
    <p class="w3-opacity"><i>취업, 리뷰, 구인의 모든 것!</i></p>
    
    <p class="w3-justify" align="center">
    	저희 JOB 인재를 구하고싶은 기업!, 좋은 일자리를 원하시는 구직자 분들! Contect 해주며 직접 기업을 다시신 
    	구직자 분들의 객관적인 평가
    	이 3가지 조합이 이루어지는 대한민국을 대표하는 구인, 구직 사이트 입니다. 
    </p>
    
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>취업</p>
        <img src="/img/cnldjq.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p>리뷰</p>
        <img src="/img/flqb.png" class="w3-round w3-margin-bottom" alt="Random Name" style="width:60%">
      </div>
      <div class="w3-third">
        <p>구인</p>
        <img src="/img/rndls.png" class="w3-round" alt="Random Name" style="width:60%">
      </div>
    </div>
  </div>

  

  <!-- Ticket Modal -->
  <div id="ticketModal" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-8">
      <header class="w3-container w3-teal w3-center w3-padding-32">
        <span onclick="document.getElementById('ticketModal').style.display='none'"
       class="w3-closebtn w3-padding-xlarge w3-xxlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="fa fa-suitcase w3-margin-right"></i>Tickets</h2>
      </header>
      <div class="w3-container">
        <p><label><i class="fa fa-shopping-cart"></i> Tickets, $15 per person</label></p>
        <input class="w3-input w3-border" type="text" placeholder="How many?">
        <p><label><i class="fa fa-user"></i> Send To</label></p>
        <input class="w3-input w3-border" type="text" placeholder="Enter email">
        <button class="w3-btn-block w3-teal w3-padding-12 w3-section w3-right">PAY <i class="fa fa-check"></i></button>
        <button class="w3-btn w3-red w3-section" onclick="document.getElementById('ticketModal').style.display='none'">Close <i class="fa fa-remove"></i></button>
        <p class="w3-right">Need <a href="#" class="w3-text-blue">help?</a></p>
      </div>
    </div>
  </div>

  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact" align="center">
    <h2 class="w3-wide w3-center">Q & A</h2>
    <p class="w3-opacity w3-center"><i>문의사항이 있으시면 언제든지 연락주세요!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom" align="justify">
        <i class="fa fa-map-marker" style="width:30px"></i> 서울특별시 강남구 역삼1동 역삼동 826-27 <br>
        <i class="fa fa-phone" style="width:30px"></i> Phone: 010-6677-5023<br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: fincessin@naver.com<br>
      </div>
     
      </div>
    </div>
  </div>
  
<!-- End Page Content -->
</div>

<!-- Add Google Maps -->
<div id="googleMap" style="height:400px;filter:grayscale(90%);-webkit-filter:grayscale(90%);"></div>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(37.496635, 127.029825);
    
function initialize() {
    var mapProp = {
    center: myCenter,
    zoom: 18,
    scrollwheel: false,
    draggable: false,
    mapTypeId: google.maps.MapTypeId.ROADMAP
};
    
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    
var marker = new google.maps.Marker({
    position: myCenter,
});
    
marker.setMap(map);
}
    
google.maps.event.addDomListener(window, 'load', initialize);
</script>



<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 4000);
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>



