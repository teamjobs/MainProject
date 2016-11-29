<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

  <div class="w3-center w3-padding-64" id="contact">
    <i class="fa w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16 w3-hover-text-red" onclick="document.getElementById('id08').style.display='block'"><b>Write Review</b></i>
  </div>
  
  
<!-- Modal that pops up when you click on "New Message" -->
<form action="/next">
<div id="id08" class="w3-modal" style="z-index:4; min-height:500px;">
  <div class="w3-modal-content">
    <div class="w3-container w3-padding w3-black">
       <span onclick="document.getElementById('id08').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
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
      <label for="positive"><b>기업의 장점</b></label><br/>
      <textarea class="w3-input w3-border w3-hover-black  w3-margin-bottom" style="height:150px; resize:none;" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="onereview" id="onereview" required></textarea>
      <br/>
      <label for="negative"><b>기업의 단점</b></label><br/>
      <textarea class="w3-input w3-border w3-hover-black  w3-margin-bottom" style="height:150px; resize:none;" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="onereview" id="onereview" required></textarea>
      <br/>
       <label for="wish"><b>경영진에 바라는 점</b></label><br/>
      <textarea class="w3-input w3-border w3-hover-black  w3-margin-bottom" style="height:150px; resize:none;" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="onereview" id="onereview" required></textarea>
      <br/>
      
       <div class="w3-section">
        <a class="w3-btn w3-light-grey" onclick="document.getElementById('id07').style.display='none'">Previous  <i class="fa fa-remove"></i></a>
        <a class="w3-btn w3-right w3-black" id="next">Next ≫  </a>
      </div>
      <label for="totalScore"><b>승진기회 및 가능성</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>
	<label for="totalScore"><b>복지 및 급여</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>
	<label for="totalScore"><b>업무와 삶의 균형</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>
	<label for="totalScore"><b>사내 문화</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>
	<label for="totalScore"><b>경영진</b></label><br/>
		<button class="button button1"><i class="fa fa-star"></i></button>
		<button class="button button2"><i class="fa fa-star"></i></button>
		<button class="button button3"><i class="fa fa-star"></i></button>
		<button class="button button4"><i class="fa fa-star"></i></button>
		<button class="button button5"><i class="fa fa-star"></i></button>		
		
      </div>
    </div>
  </div>
</div>    

     

