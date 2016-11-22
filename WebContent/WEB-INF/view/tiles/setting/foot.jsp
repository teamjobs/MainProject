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
	<i class="fa w3-small w3-hover-text-red "><b>회사소개</b></i>&nbsp&nbsp|&nbsp
	<i class="fa w3-small w3-hover-text-red"><b>이용약관</b></i>&nbsp&nbsp|&nbsp
	<i class="fa w3-small w3-hover-text-red"><b>개인정보처리방침</b></i>&nbsp&nbsp|&nbsp
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
      <textarea class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" style="height:150px" placeholder="무엇이 궁금하신가요?  (500자 이내)" name="content" id="content" required></textarea>
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

