<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

	<div class="w3-panel w3-green" hidden="hidden" id="checkOK">
    비밀번호가 일치합니다.
  	</div>
  	
  	<div class="w3-panel w3-red" hidden="hidden" id="checkFail">
    비밀번호가 일치하지 않습니다.
  	</div>


<div class="w3-container">
<div class="w3-left">
	<h2>회사명 : ${cd.NAME }(${id })</h2>
	<p>사업자등록번호: ${cd.CONUMBER }</p>
</div>
</div>
<form action="/business/my/rev/rst" method="post">
<div class="w3-container">
	<div class="w3-half">
	<div class="w3-left">
		<input type="hidden" id="id" name="paramid" value="${id }">
 		<p><input class="w3-input" type="password" name="pass" required="required" id="pass">
		<label>Password</label></p>
		<p><input class="w3-input" type="text" name="callnum" value="${cd.CALLNUM }"/>
		<label>대표번호</label></p>
		<p><input class="w3-input" type="text" name="addr" value="${cd.ADDR }"/>
		<label>주소</label></p>
		<p><input class="w3-input" type="text" name="employee_num" value="${cd.EMPLOYEE_NUM }" >
		<label>사원수</label></p>
		<p><input class="w3-input" type="text" name="salesaccount" value="${cd.SALESACCOUNT }" >
		<label>매출액</label></p>
		<p><input type="date" name="inco" ><br>
		<label>설립일</label>
		</p>
	</div>
	</div>
	<div class="w3-half">
	<div class="w3-left">
		<p><input class="w3-input" type="text" name="boss" value="${cd.BOSS }" >
		<label>대표</label></p>
		<p><input class="w3-input" type="email" name="email" value="${cd.EMAIL }"/>
		<label>대표번호</label></p>
		<p><input class="w3-input" type="text" name="website" value="${cd.WEBSITE }" >
		<label>공식사이트</label></p>
		<p><input class="w3-input" type="text" name="form" value="${cd.FORM }" >
		<label>기업형태</label></p>
		<p><select class="w3-select" name="ind" id="ind">
				<option selected="selected" id="ctg1-1">산업군 선택</option>
				<c:forEach var="it" items="${cotli }">
				<option>${it}</option>
				</c:forEach>
			</select>
			<select class="w3-select" name="ind2" id="ind2" style="display:none">
				<option selected="selected" id="ctg2">세부 선택</option>
			</select><br>
		<label>산업군</label></p>
	</div>
	</div>				
</div>
<hr/>
<div class="w3-container">
	<label for="pwd">기업소개: </label><br/>
	<textarea rows="10" cols="90" name="introduce" class="form-control" >${cd.INTRODUCE }</textarea>
	<br><br>	
	<div class="w3-left">
	<button type="submit" class="w3-btn w3-red" id="okbutton" >회원정보 수정</button>
	</div>
</div>
</form>

		    

	<script>
		
		$("#pass").blur(function() {
			$.ajax({
				"method" : "get",
				"url" : "/business/my/rev/passwordcheck/"+$("#id").val()+"/"+$("#pass").val()
			}).done(function(rst){
				if(rst=="y") {
					$("#submit").fadeIn(1000);
					$("#checkOK").fadeIn(1000);
					$("#checkFail").fadeOut(100);
				}else {
					$("#okbutton").attr("disabled","disabled");
					$("#submit").fadeOut(1000);
					$("#checkOK").fadeOut(100);
					$("#checkFail").fadeIn(1000);
				}
			});
			
		});
		

		var op = "";
		
		var cot1 = ${coli.cotype1};
		var cot2 = ${coli.cotype2};
		var cot3 = ${coli.cotype3};
		var cot4 = ${coli.cotype4};
		
		$("#ind").change(function(){
			if ($(this).val() != "산업군 선택"){
				setOption($(this).val());
			}else
				$("#ind2").hide();
		})
		
		function setOption(ct){
			if(ct == "서비스·교육·금융·유통"){
				$("#ind2").show();
				op = "";
				for(var t = 0 ; t < cot1.length ; t++){
					op +="<option>"+cot1[t]+"</option>";
				}
				$("#ind2").html(op);
			}else if(ct=="IT·정보통신"){
				$("#ind2").show();
				op = "";
				for(var t = 0 ; t < cot2.length ; t++){
				op +="<option>"+cot2[t]+"</option>";
			}
			$("#ind2").html(op);
			}else if(ct=="미디어·광고·문화·예술"){
				$("#ind2").show();
				op = "";
				for(var t = 0 ; t < cot3.length ; t++){
					op +="<option>"+cot3[t]+"</option>";
				}
				$("#ind2").html(op);
			}else if(ct=="제조 통신 화학 건설"){
				$("#ind2").show();
				op = "";
				for(var t = 0 ; t < cot4.length ; t++){
					op +="<option>"+cot4[t]+"</option>";
				}
				$("#ind2").html(op);
			}
		}
		
	</script>
