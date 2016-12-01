<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<title>JOBS - ${id }</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">


<body>


	<!-- 비주얼 부분입니다 -->

	<header class="w3-display-container w3-wide" id="home">
		<img class="w3-image" src="/img/businessMain/main1.jpg"
			alt="Fashion Blog" width="1600" height="300">
		<div class="w3-display-middle w3-text-white w3-center">
			<h3 class="w3-text-white">JOBS</h3>
			<h1 class="w3-jumbo w3-text-white w3-hide-small">
				<img src="/img/businessMain/logo_white2.png">
			</h1>

			<a href="/my/history">
				<button
					class="w3-btn w3-white w3-padding-large w3-large w3-opacity w3-hover-opacity-off"
					onclick="document.getElementById('subscribe').style.display='block'">
					마이페이지</button>
			</a>
			</h6>
		</div>
	</header>
	<div class="w3-row-padding w3-center w3-margin-top">
		<div class="w3-third">
			<div class="w3-card-2 w3-padding-top" style="min-height: 300px">
				<h4>내가 지원한 공고 확인하기</h4>
				<br/> <a href="/my/history/board"><i
					class="fa fa-desktop w3-margin-bottom w3-text-theme"
					style="font-size: 120px"></i></a>
				<p>
					내가 지원한 이력을 <br />확인할 수 있습니다.
				</p>
			</div>
		</div>
		<div class="w3-third">
			<div class="w3-card-2 w3-padding-top" style="min-height: 300px">
				<h4>회사 리뷰 확인하기</h4>
				<br/> <a href="/rank/main"> <i
					class="fa fa-css3 w3-margin-bottom w3-text-theme"
					style="font-size: 120px"></i></a>
					<p>
						직원이 작성한 리뷰를 <br />확인할 수 있습니다.
					</p>
			</div>
		</div>

		<div class="w3-third">
			<div class="w3-card-2 w3-padding-top" style="min-height: 300px">
				<h4>기업 찾기</h4>
				<br/>
				<a href="/find"> <i
					class="fa fa-diamond w3-margin-bottom w3-text-theme"
					style="font-size: 120px"></i></a>
				<p>
					입사지원 가능한 기업을 <br />열람할 수 있습니다.
				</p>
			</div>
		</div>
	</div>



	<div class="w3-container">
		<hr>
		<div class="w3-center">
			<h2>회사</h2>
			<p w3-class="w3-large">최신 공고 현황</p>
		</div>
		<div class="w3-responsive w3-card-4">
			<table class="w3-table w3-striped w3-bordered">
				<thead>
					<tr class="w3-theme">
						<th>기업</th>
						<th>제목</th>
						<th>경력, 학력</th>
						<th>고용형태, 위치, 급여</th>
						<th>마감일자</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="t" items="${list}" begin="1" end="5" step="1">
						<tr>
							<b><td><a href="/companydata/${t.COMPANY }">${t.COMPANY }</a>
									<br>${t.JOB }</td></b>
							<td><a href="/work/post/${t.NUM}">${t.TITLE }</a></td>

							<td>${t.CAREER }/${t.EDUCATION }</td>


							<td>${t.HIRETYPE }<br /> ${t.LOCAL } <br /> ${t.SALARY }
								${t.PAY }
							</td>

							<td><fmt:formatDate value="${t.ENDDATE}"
									pattern="YYYY-MM-dd" /><br> 마감<fmt:formatNumber
									value=" ${t.MAGAM}" pattern=".#" />일 전</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	<hr>




	<br />
	<br />
	<br />
 
 




	<!-- Script for Sidenav, Tabs, Accordions, Progress bars and slideshows -->
	<script>
// Side navigation
function w3_open() {
    var x = document.getElementById("mySidenav");
    x.style.width = "100%";
    x.style.textAlign = "center";
    x.style.fontSize = "50px";
    x.style.paddingTop = "10%";
    x.style.display = "block";
}
function w3_close() {
    document.getElementById("mySidenav").style.display = "none";
}

// Tabs
function openCity(evt, cityName) {
  var i;
  var x = document.getElementsByClassName("question");
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  var activebtn = document.getElementsByClassName("testbtn");
  for (i = 0; i < x.length; i++) {
      activebtn[i].className = activebtn[i].className.replace(" w3-dark-grey", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " w3-dark-grey";
}

var mybtn = document.getElementsByClassName("testbtn")[0];
mybtn.click();

// Accordions
function myAccFunc(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-dark-grey";
    } else {
        x.className = x.className.replace(" w3-show", "");
        x.previousElementSibling.className =
        x.previousElementSibling.className.replace(" w3-dark-grey", "");
    }
}

// Slideshows
var slideIndex = 1;

function plusDivs(n) {
slideIndex = slideIndex + n;
showDivs(slideIndex);
}

function showDivs(n) {
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length} ;
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";
}

showDivs(1);

// Progress Bars
function move() {
  var elem = document.getElementById("myBar");
  var width = 1;
  var id = setInterval(frame, 10);
  function frame() {
    if (width == 100) {
      clearInterval(id);
    } else {
      width++;
      elem.style.width = width + '%';
      document.getElementById("demoprgr").innerHTML = width * 1  + '%';
    }
  }
}

 
</script>

</body>
</html>

