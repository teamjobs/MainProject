<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



<div class="w3-panel w3-green" hidden="hidden" id="checkOK">
인증메일이 전송되었습니다.
</div>
<div class="w3-panel w3-green" hidden="hidden" id="authokrst">
인증이 완료되었습니다.
</div>
  	
  	
<div class="w3-container">
<label>인증 메일을 전송합니다.</label>
<hr>
<input type="text" id="joinmail"/>
<label>인증받을 메일</label>
<p><button class="w3-btn w3-large" style="width: 100%;" id="mailsend">메일 전송</button></p>
</div>
<hr>
<div>
<p><button class="w3-btn w3-large" style="width: 100%;" id="authok">인증완료</button></p>
</div>

<script>
	$("#mailsend").click(function(){
		console.log("!");
		$.ajax({
			"method" : "post",
			"url" : "/join/mail/"+$("#joinmail").val()
		}).done(function(rst){
			if(rst=="y") {
				$("#checkOK").fadeIn(1000);
				$("#authok").fadeIn(1000);
			}
		});
	});
</script>