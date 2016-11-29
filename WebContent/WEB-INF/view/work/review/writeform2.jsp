<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

  <div class="w3-center w3-padding-64" id="contact">
    <i class="fa w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16 w3-hover-text-red" onclick="document.getElementById('id07').style.display='block'"><b>Write Review</b></i>
  </div>
  
  
<!-- Modal that pops up when you click on "New Message" -->
<form action="/sendMessage">
<div id="id07" class="w3-modal" style="z-index:4; min-height:500px;">
  <div class="w3-modal-content">
    <div class="w3-container w3-padding w3-black">
       <span onclick="document.getElementById('id07').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
      <h2><b>Write Review</b></h2>
    </div>
    <div class="w3-panel">
      <label><b>기업명</b></label>
      <input class="w3-input w3-border w3-hover-border-black" style="width:500px; padding:10px; margin-bottom: 20px;" value="해당 기업명" readonly>
      <label for="totalScore"><b>총 평점</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>
       <label for="onereview"><b>기업 한줄평</b></label><br/>
      <textarea class="w3-input w3-border w3-hover-black  w3-margin-bottom" style="height:150px; resize:none;" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="onereview" id="onereview" required></textarea>
      <br/>
      <label for="employment"><b>고용 형태</b></label><br/>
      <select id="employment" style="width:500px; padding:10px; margin-bottom: 20px;">
      	<option selected>고용 형태 선택</option>
      	<option>정규직</option>
      	<option>계약직</option>
      	<option>인턴</option>
      	<option>파견직</option>
      	<option>프리랜서</option>
      	<option>아르바이트</option>
      	<option>연수생/교육생</option>
      	<option>개인 사업자</option>
      	<option>기타</option>
      </select><br/>
        <label for="career"><b>총 경력</b></label><br/>
      <select id="career" style="width:500px; padding:10px; margin-bottom: 20px;">
      	<option selected>총 경력 선택</option>
      	<option>1년 이상</option>
      	<option>2년 이상</option>
      	<option>3년 이상</option>
      	<option>4년 이상</option>
      	<option>5년 이상</option>
      	<option>6년 이상</option>
      	<option>7년 이상</option>
      	<option>8년 이상</option>
      	<option>9년 이상</option>
      	<option>10년 이상</option>
      </select><br/>
      <label for="local"><b>근무 지역</b></label><br/>
      <select id="local" style="width:500px; padding:10px; margin-bottom: 20px;">
      	<option selected>근무 지역 선택</option>
      	<option>서울</option>
      	<option>경기</option>
      	<option>인천</option>
      	<option>강원</option>
      	<option>대전</option>
      	<option>세종</option>
      	<option>충남</option>
      	<option>충북</option>
      	<option>부산</option>
      	<option>울산</option>
      	<option>경남</option>
      	<option>경북</option>
      	<option>대구</option>
      	<option>광주</option>
      	<option>전남</option>
      	<option>전북</option>
      	<option>제주</option>
      </select><br/>
       <div class="w3-section">
        <a class="w3-btn w3-light-grey" onclick="document.getElementById('id07').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-btn w3-right w3-black" id="next">Next ≫  </a>
      </div>
      </div>
    </div>
  </div>
</div>    

     

