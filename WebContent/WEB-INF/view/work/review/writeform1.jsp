<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ★버튼 스타일 -->
<style>
.button {
	background-color: white; /* Green */
	border: none;
	color: #e7e7e7;
	text-align: center;
	display: inline-block;
	font-size: 20px;
	margin: 2px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
}

.button:hover {
	background-color: white;
	color: #f44336;
}
</style>



<!-- 팝업 뜨게하는 버튼 -->
<div class="w3-center w3-padding-64" id="contact">
	<i
		class="fa w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16 w3-hover-text-red"
		onclick="document.getElementById('id07').style.display='block'"><b>Write
			Review</b></i>
</div>

<!-- id값 받아서 뜨는 팝업창 (리뷰 첫번째 페이지) -->
<form action="/review" method="post" id="review">
	<div id="id07" class="w3-modal" style="z-index: 4; min-height: 500px;">
		<div class="w3-modal-content">
			<div class="w3-container w3-padding w3-black">
				<span onclick="document.getElementById('id07').style.display='none'"
					class="w3-right w3-xxlarge w3-closebtn"><i
					class="fa fa-remove"></i></span>
				<h2>
					<b>Write Review</b>
				</h2>
			</div>
			<div class="w3-panel">
				<!-- value="기업명" -> ${company } -->
				<label><b>기업명</b></label> <input type="text"
					class="w3-input w3-margin-bottom"
					style="width: 500px; padding: 10px;" name="company" value="기업명"
					readonly> <label for="type"><b>직종</b></label><br /> <select
					name="type"
					style="width: 500px; padding: 10px; margin-bottom: 20px;"
					required="required">
					<option value="" selected>직종 선택</option>
					<option value="IT_컴퓨터">IT/컴퓨터</option>
					<option value="사무직">사무직</option>
					<option value="미디어">미디어</option>
					<option value="디자인">디자인</option>
					<option value="교육_강사">교육/강사</option>
					<option value="고객상담_리서치_영업">고객상담/리서치/영업</option>
					<option value="무역_유통_판매">무역/유통/판매</option>
					<option value="서비스">서비스</option>
					<option value="기타">기타</option>
				</select><br /> <label for="employment"><b>고용 형태</b></label><br /> <select
					name="employment"
					style="width: 500px; padding: 10px; margin-bottom: 20px;"
					required="required">
					<option value="" selected>고용 형태 선택</option>
					<option value="정규직">정규직</option>
					<option value="계약직">계약직</option>
					<option value="인턴">인턴</option>
					<option value="파견직">파견직</option>
					<option value="프리랜서">프리랜서</option>
					<option value="아르바이트">아르바이트</option>
					<option value="연수생_교육생">연수생/교육생</option>
					<option value="개인사업자">개인 사업자</option>
					<option value="기타">기타</option>
				</select><br /> <label for="career"><b>총 경력</b></label><br /> <select
					name="career"
					style="width: 500px; padding: 10px; margin-bottom: 20px;"
					required="required">
					<option value="" selected>총 경력 선택</option>
					<option value="1년이상">1년 이상</option>
					<option value="2년이상">2년 이상</option>
					<option value="3년이상">3년 이상</option>
					<option value="4년이상">4년 이상</option>
					<option value="5년이상">5년 이상</option>
					<option value="6년이상">6년 이상</option>
					<option value="7년이상">7년 이상</option>
					<option value="8년이상">8년 이상</option>
					<option value="9년이상">9년 이상</option>
					<option value="10년이상">10년 이상</option>
				</select><br />
				<div class="w3-section">
					<a class="w3-btn w3-light-grey"
						onclick="document.getElementById('id07').style.display='none'">Cancel
						 <i class="fa fa-remove"></i>
					</a> <i class="w3-btn w3-right w3-black"
						onclick="document.getElementById('id08').style.display='block'; document.getElementById('id07').style.display='none'">Next
						≫ </i>
				</div>
			</div>
		</div>
	</div>
	<!-- id값 받아서 뜨는 팝업창 (리뷰 두번째 페이지) -->
	<div id="id08" class="w3-modal" style="z-index: 4; min-height: 500px;">
		<div class="w3-modal-content">
			<div class="w3-container w3-padding w3-black">
				<span onclick="document.getElementById('id08').style.display='none'"
					class="w3-right w3-xxlarge w3-closebtn"><i
					class="fa fa-remove"></i></span>
				<h2>
					<b>Write Review</b>
				</h2>
			</div>
			<div class="w3-panel">
				<label><b>기업명</b></label> <input
					class="w3-input w3-border w3-hover-border-black"
					style="width: 500px; padding: 10px; margin-bottom: 20px;"
					value="해당 기업명" readonly> <label for="averagesocre"><b>총
						평점</b></label>&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="averagescore" value="" id="averagescore"/>
				<button class="button averagescore" type="button" value="1" >
					<i class="fa fa-star"></i>
				</button>
				<button class="button averagescore" type="button" value="2">
					<i class="fa fa-star"></i>
				</button>
				<button class="button averagescore" type="button" value="3">
					<i class="fa fa-star"></i>
				</button>
				<button class="button averagescore" type="button" value="4">
					<i class="fa fa-star"></i>
				</button>
				<button class="button averagescore" type="button" value="5" style="margin-bottom: 15px;">
					<i class="fa fa-star"></i>
				</button>
				<script>
					$(".averagescore").click(function(){
						//window.alert("1");
						//
						var score = $(this).val();
						$("#averagescore").val(score);
						$(".averagescore").each(function(){
							$(this).css("color", "#e7e7e7");
							if($(this).val() <=score) {
								$(this).css("color", "#f44336");	
							}
						});
					});
				</script>
				<br /> <label for="onereview"><b>기업 한줄평</b></label><br />
				<textarea
					class="w3-input w3-border w3-hover-border-black  w3-margin-bottom"
					style="width: 500px; height: 100px; resize: none;"
					placeholder="예) 개발자가 대우받으며 보람차게 일할 수 있는 곳. 다양한 개발 환경을 경험하고, 서버와 클라이언트 양쪽에서 커리어를 쌓고 싶은 사람에게 추천."
					name="onereview" id="onereview" required></textarea>
				<label for="positive"><b>기업의 장점</b></label><br />
				<textarea
					class="w3-input w3-border w3-hover-border-black  w3-margin-bottom"
					style="width: 500px; height: 100px; resize: none;"
					placeholder="예) 연차를 윗사람 눈치 안보고 쓸 수 있다. 도서구입비, 학원 수강료 등 자기개발 비용을 지원해준다."
					name="positive" id="positive" required></textarea>
				<label for="negative"><b>기업의 단점</b></label><br />
				<textarea
					class="w3-input w3-border w3-hover-border-black  w3-margin-bottom"
					style="width: 500px; height: 100px; resize: none;"
					placeholder="예) 출근 시간은 있는데 퇴근 시간이 없음... 야근 식대도 없음." name="negative"
					id="negative" required></textarea>

				<br /> <label for="chance"><b>승진기회 및 가능성</b></label>&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="chance" value="" id="chance"/>
				<button class="button chance" type="button" value="1">
					<i class="fa fa-star"></i>
				</button>
				<button class="button chance" type="button" value="2">
					<i class="fa fa-star"></i>
				</button>
				<button class="button chance" type="button" value="3">
					<i class="fa fa-star"></i>
				</button>
				<button class="button chance" type="button" value="4">
					<i class="fa fa-star"></i>
				</button>
				<button class="button chance" type="button" value="5" style="margin-bottom: 15px;">
					<i class="fa fa-star"></i>
				</button>
						<script>
					$(".chance").click(function(){
						//window.alert("1");
						//
						var score = $(this).val();
						$("#chance").val(score);
						$(".chance").each(function(){
							$(this).css("color", "#e7e7e7");
							if($(this).val() <=score) {
								$(this).css("color", "#f44336");	
							}
						});
					});
				</script>
						
				<br /> <label for="welfare"><b>복지 및 급여</b></label>&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="welfare" value="" id="welfare"/>
				<button class="button welfare" type="button" value="1">
					<i class="fa fa-star"></i>
				</button>
				<button class="button welfare" type="button" value="2">
					<i class="fa fa-star"></i>
				</button>
				<button class="button welfare" type="button" value="3">
					<i class="fa fa-star"></i>
				</button>
				<button class="button welfare" type="button" value="4">
					<i class="fa fa-star"></i>
				</button>
				<button class="button welfare" type="button" value="5" style="margin-bottom: 15px;">
					<i class="fa fa-star"></i>
				</button>
				<script>
					$(".welfare").click(function(){
						//window.alert("1");
						//
						var score = $(this).val();
						$("#welfare").val(score);
						$(".welfare").each(function(){
							$(this).css("color", "#e7e7e7");
							if($(this).val() <=score) {
								$(this).css("color", "#f44336");	
							}
						});
					});
				</script>
				<br /> <label for="workload"><b>업무와 삶의 균형</b></label>&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="workload" value="" id="workload"/>
				<button class="button workload" type="button" value="1">
					<i class="fa fa-star"></i>
				</button>
				<button class="button workload" type="button" value="2">
					<i class="fa fa-star"></i>
				</button>
				<button class="button workload" type="button" value="3">
					<i class="fa fa-star"></i>
				</button>
				<button class="button workload" type="button" value="4">
					<i class="fa fa-star"></i>
				</button>
				<button class="button workload" type="button" value="5" style="margin-bottom: 15px;">
					<i class="fa fa-star"></i>
				</button>
				<script>
					$(".workload").click(function(){
						//window.alert("1");
						//
						var score = $(this).val();
						$("#workload").val(score);
						$(".workload").each(function(){
							$(this).css("color", "#e7e7e7");
							if($(this).val() <=score) {
								$(this).css("color", "#f44336");	
							}
						});
					});
				</script>
				<br /> <label for="culture"><b>사내 문화</b></label>&nbsp;&nbsp;&nbsp;
				<input type="hidden" name="culture" value="" id="culture"/>
				<button class="button culture" type="button" value="1">
					<i class="fa fa-star"></i>
				</button>
				<button class="button culture" type="button" value="2">
					<i class="fa fa-star"></i>
				</button>
				<button class="button culture" type="button" value="3">
					<i class="fa fa-star"></i>
				</button>
				<button class="button culture" type="button" value="4">
					<i class="fa fa-star"></i>
				</button>
				<button class="button culture" type="button" value="5" style="margin-bottom: 15px;">
					<i class="fa fa-star"></i>
				</button>
				<script>
					$(".culture").click(function(){
						//window.alert("1");
						//
						var score = $(this).val();
						$("#culture").val(score);
						$(".culture").each(function(){
							$(this).css("color", "#e7e7e7");
							if($(this).val() <=score) {
								$(this).css("color", "#f44336");	
							}
						});
					});
				</script>
				<br />

				<hr />

				<label for="think" style="margin-bottom: 15px;"><b>CEO에
						대한 견해</b></label>&nbsp;&nbsp;&nbsp;<input type="radio" name="think"
					value="1">지지한다.&nbsp;&nbsp;&nbsp;<input type="radio"
					name="think" value="0">지지하지 않는다.<br /> <label
					for="recomand" style="margin-bottom: 15px;"><b>이 기업을
						친구에게 추천하시겠습니까?</b></label>&nbsp;&nbsp;&nbsp;<input type="radio"
					name="recomand" value="1">예&nbsp;&nbsp;&nbsp;<input
					type="radio" name="recomand" value="0">아니요<br /> <label
					for="future" style="margin-bottom: 15px;"><b>이 기업의 1년후
						미래에 관하여 어떻게 생각하십니까?</b></label>&nbsp;&nbsp;&nbsp;<input type="radio"
					name="future" value="1">상승&nbsp;&nbsp;&nbsp;<input
					type="radio" name="future" value="0">하락<br />

				<hr />
				<div class="w3-section">
					<a class="w3-btn w3-light-grey" id="previous"
						onclick="document.getElementById('id07').style.display='block'; document.getElementById('id08').style.display='none'">
						≪ Previous</a> <button class="w3-btn w3-right w3-black" id="submit">Submit</button>
				</div>
			</div>
		</div>
	</div>
</form>
<script>
	$("#submit").click(function() {
		$("#review").submit();
	});
</script>


