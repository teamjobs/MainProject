<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer -->

<html>
<footer 
	class="w3-center"
	style="font-family: Georgia; background-color:  #FFFFFF;">	
	<p style="font-size: 45px; margin: -4px;">
	<img src="\img\logo.png" width="111">
	<a class="w3-text-black" href="#myHead"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up w3-hover-text-red""></i></span></a>
	</p>
	<i class="fa w3-small w3-hover-text-red " onclick="location.href='/index/introduction'"><b>회사소개</b></i>&nbsp&nbsp|&nbsp
	<i class="fa w3-small w3-hover-text-red" onclick="document.getElementById('id02').style.display='block'"><b>이용약관</b></i>&nbsp&nbsp|&nbsp
	<i class="fa w3-small w3-hover-text-red" onclick="document.getElementById('id03').style.display='block'"><b>개인정보처리방침</b></i>&nbsp&nbsp|&nbsp
	<i class="fa w3-small w3-hover-text-red" onclick="document.getElementById('id01').style.display='block'"><b>고객문의</b></i>
	
 
</footer>

<!-- Modal that pops up when you click on "New Message" -->
<form action="/sendMessage">
<div id="id01" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-black">
       <span onclick="document.getElementById('id01').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
      <h2><b>Send Message</b></h2>
    </div>
    <div class="w3-panel">
      <label>To</label>
      <input class="w3-input w3-border w3-hover-shadow w3-margin-bottom" value="문의 접수처" readonly>
      <label>From</label>
      <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text" name="email" id="email" placeholder="이메일을 입력해주세요.  (주소 형식이 맞지 않을 시 답변이 어려울 수 있습니다.)" required/>
      <label>Subject</label>
      <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text" name="subject" id="subject" required/>
      <textarea class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" style="height:150px; resize:none;" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="content" id="content" required></textarea>
      <div class="w3-section">
        <a class="w3-btn w3-light-grey" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-btn w3-right w3-black" id="send">Send  <i class="fa fa-paper-plane"></i></a>
      </div>
    </div>
  </div>
</div>
</form>
</html>


<script>
	$("#send").click(function(){
		var email = $("#email").val();
		var subject = $("#subject").val();
		var content = $("#content").val();
		$.ajax({
			"method" : "get",
			"url" : "/sendMessage?email="+email+"&subject="+subject+"&content="+content,
			"async" : false
		}).done(function(txt){
			if(txt==true){
				alert("문의가 접수되었습니다.");
			} else {
				alert("메세지 전송에 실패하였습니다.");
			}
			document.getElementById('id01').style.display='none'
		});
	});
	
	
	
</script>




<!-- Modal that pops up when you click on "Rules" -->
<div id="id02" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-black">
       <span onclick="document.getElementById('id02').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
      <h2><b>Rules</b></h2>
    </div>
    <div class="w3-panel">
    <textarea class="w3-input w3-border w3-margin-bottom" style="height:400px; resize:none;" readonly>
    ［이용 약관］
    		JOBS 제품 및 서비스(‘서비스’)를 이용해 주셔서 감사합니다.
		본 서비스는 1600 Amphitheatre Parkway, Mountain View, CA 94043, United States에 소재한 JOBS Inc.(‘JOBS’)에서
		제공합니다. 서비스를 이용함으로써 귀하는 본 약관에 동의하게 되므로 본 약관을 주의 깊게 읽어보시기 바랍니다.
		JOBS 서비스는 매우 다양하므로 때로 추가약관 또는 제품 요구사항(연령 요건 포함)이 적용될 수 있습니다.
		추가약관은 관련 서비스에 대하여 제공되며, 귀하가 해당 서비스를 이용하는 경우 이 추가약관은 귀하와 JOBS 간
		계약의 일부가 됩니다.
		
 	［서비스 이용］
		귀하는 서비스 내에서 적용되는 모든 정책을 준수해야 합니다. JOBS 서비스의 오용을 삼가시기 바랍니다.
		예를 들어 서비스를 방해하거나 JOBS이 제공하는 인터페이스 및 안내사항 이외의 다른 방법을 사용하여
		액세스를 시도하지 않아야 합니다. 귀하는 관련 수출 및 재수출 통제 법규 및 규정 등 오직 법률상 허용되는
		범위에서만 JOBS 서비스를 이용할 수 있습니다. 귀하가 JOBS 약관이나 정책을 준수하지 않거나
		JOBS가 부정행위 혐의를 조사하고 있는 경우, JOBS 서비스 제공이 일시 중지 또는 중단될 수 있습니다.
		JOBS 서비스를 사용한다고 해서 JOBS 서비스 또는 액세스하는 콘텐츠의 지적재산권을 소유하게 되는 것은 아닙니다.
		콘텐츠 소유자로부터 허가를 받거나 달리 법률에 따라 허용되는 경우를 제외하고, JOBS 서비스의 콘텐츠를
		사용할 수 없습니다. 본 약관은 귀하에게 JOBS 서비스에 사용된 브랜드나 로고를 사용할 권리를 부여하지 않습니다.
		JOBS 서비스에 또는 JOBS 서비스와 함께 게재된 어떠한 법적 고지도 삭제하거나 감추거나 변경하지 마십시오.
		
	［개인정보 보호 및 저작권 보호］
		JOBS 개인정보취급방침은 귀하가 JOBS 서비스를 사용할 때 JOBS가 개인정보를 어떻게 취급하고 보호하는지에 대해
		설명합니다. JOBS 서비스를 사용함으로써 귀하는 JOBS이 개인정보취급방침에 따라 귀하의 개인정보를 사용할 수
		있음에 동의하게 됩니다. JOBS는 저작권법에 규정된 절차에 따라 저작권침해를 주장하는 신고에 대응하고,
		반복 침해자의 계정을 해지합니다. JOBS은 저작권자가 온라인상에서 자신의 지적 재산을 관리할 수 있도록
		정보를 제공합니다. 누군가 귀하의 저작권을 침해하고 있다고 생각되어 JOBS에 통지하고자 하는 경우,
		홈페이지 하단의《고객문의》를 이용하여 신고서 제출 방법 및 저작권 침해 신고에 대한 JOBS 대응 내용을 접수
		확인할 수 있습니다.
    </textarea>
    </div>
  </div>
</div>

<!-- Modal that pops up when you click on "Rules" -->
<div id="id03" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-black">
       <span onclick="document.getElementById('id03').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
      <h2><b>Personal Data Processing Policy</b></h2>
    </div>
    <div class="w3-panel">
    <textarea class="w3-input w3-border w3-margin-bottom" style="height:400px; resize:none;" readonly>
    ［개인정보 처리방침］
    		JOBS 관련 제반 서비스의 이용과 관련하여 필요한 사항을 규정합니다.
		"회사"는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보 보호법, 통신비밀보호법, 전기통신사업법 등
		정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한
		개인정보처리방침을 정하여 이용자의 권익 보호에 최선을 다하고 있습니다.
		
		1. 개인정보의 수집 및 이용목적
		기업정보 공유 사이트인 JOBS(이하 "사이트"라 한다)는 효과적인 정보 공유에 적합한 서비스를 제공하기 위하여
		개인정보를 수집하고 있으며 수집된 정보를 아래와 같이 이용하고 있습니다. 이용자가 제공한 모든 정보는
		하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다.
		
			1) 회원관리
			2) 서비스 개발 및 마케팅ᆞ광고에의 활용
			3) 고용 및 취업동향 파악을 위한 통계학적 분석
		
		2. 수집하는 개인정보 항목 및 수집방법
		"사이트"에서는 회원 가입 절차를 거쳐야 대부분의 컨텐츠에 자유롭게 접근할 수 있으며, 일부 개인정보 항목을
		입력하지 않은 경우 서비스 이용에 제한이 있을 수 있습니다. 아래 중 일부 개인정보 항목은 현재에는 수집되고 있지
		않으나 서비스 확장 과정에서 편의성 증대를 위해 수집될 예정입니다.
		
		가. 수집하는 개인정보의 항목
			1) 회원가입 시 수집하는 항목(이하 "필수항목, 선택항목" 동일)
			2) 이력서(프로필) 등록 시 수집하는 항목
			3) 기업인증 시 수집하는 항목
			4) 채용공고 등록 시 수집하는 항목
			5) 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
				- IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록
				
		나. 개인정보 수집방법
				- 홈페이지, 서비스 이용, 이벤트 응모, 팩스, 우편, 전화, 고객센터 문의하기		
				
		3. 개인정보의 제공 및 처리위탁
		"회사"는 개인정보를 1. 개인정보의 수집 및 이용목적에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이
		동 범위를 초과하여 제공하지 않습니다.
		
		4. 개인정보의 보유 및 이용기간
		"사이트"는 회원가입일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용하게 됩니다.
		회원탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나
		이용기간이 종료한 경우 개인정보를 지체 없이 파기합니다.

		5. 개인정보 파기절차 및 파기방법
		이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.
		"회사"의 개인정보 파기절차 및 방법은 다음과 같습니다.
				- 서버 내 데이터 삭제
    </textarea>
    </div>
  </div>
</div>
</html>
