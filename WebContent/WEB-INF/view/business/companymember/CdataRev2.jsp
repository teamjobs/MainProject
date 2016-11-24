<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="alert alert-success" hidden="hidden" id="checkOK">
    비밀번호가 일치합니다.
  	</div>
  	
  	<div class="alert alert-danger" hidden="hidden" id="checkFail">
    비밀번호가 일치하지 않습니다.
  	</div>

	<div class="container">
	  <h2>회원정보수정 (기업회원)</h2>
	  <p>기업회원 정보 수정</p><hr/>
		<form action="/business/my/rev/rst" method="post">
			<div class="form-group">
		      <label for="pwd">회사명 : ${cd.NAME }</label>
		    </div>
		    <div class="form-group">
		      <label for="pwd">사업자등록번호: ${cd.CONUMBER }</label>
		    </div>
			<div class="form-group">
				<label for="pwd">${ID }</label> <input type="hidden" name="id" id="id" value="${cd.ID }"/>
			</div>
			<hr />
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="pass" required="required" id="pass">
			</div>
		     <div class="form-group">
		      <label for="pwd">대표번호: </label>
		      <input type="text" class="form-control" name="callnum" value="${cd.CALLNUM }" >
		    </div>
		     <div class="form-group">
		      <label for="pwd">회사 E-mail:</label>
		      <input type="email" class="form-control" name="email" value="${cd.EMAIL }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">대표:</label>
		      <input type="text" class="form-control" name="boss" value="${cd.BOSS }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">주소:</label>
		      <input type="text" class="form-control" name="addr" value="${cd.ADDR }" >
		    </div>
			<div class="form-group">
		      <label for="pwd">공식사이트: </label>
		      <input type="text" class="form-control" name="website" value="${cd.WEBSITE }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">사원수: </label>
		      <input type="text" class="form-control" name="employee_num" value="${cd.EMPLOYEE_NUM }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">설립일: </label>
		      <!-- DATE 들어갈 부분 -->
		      <input type="date" class="form-control" name="inco" value="${cd.INCO }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">기업형태: </label>
		      <input type="text" class="form-control" name="form" value="${cd.FORM }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">매출액: </label>
		      <input type="text" class="form-control" name="salesaccount" value="${cd.SALESACCOUNT }" >
		    </div>
		    <div class="form-group">
		      <label for="pwd">산업군: </label>
		      <input type="text" class="form-control" name="industry" value="${cd.SALESACCOUNT }" >
		      <!-- LIST 들어갈 부분 -->
		    </div>
		    <div class="form-group">
		      <label for="pwd">기업소개: </label><br/>
		    <textarea rows="10" cols="90" name="introduce" class="form-control" >${cd.INTRODUCE }</textarea>
		    </div>			
			<div id="submit" hidden="hidden">
			<button type="submit" class="btn btn-info">OK</button>
			</div>
		</form>
	</div>
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
					$("#submit").fadeOut(1000);
					$("#checkOK").fadeOut(100);
					$("#checkFail").fadeIn(1000);
				}
			});
			
		});
		
	</script>

</body>

</html>