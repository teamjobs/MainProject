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

	<div class="container">
	  <h2>회원가입 (기업회원)</h2>
	  <p>기업회원 회원가입 입니다!</p>
		<form action="/business/join/CJoinAuth" method="post">
			<div class="form-group">
				<label for="usr">ID:</label> <input type="text" class="form-control"
					name="id" required="required" id="id"> <br/>
					
					<button type="button" class="btn btn-info" id="check">아이디 중복확인</button>
			</div>
			
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="pass" required="required">
			</div>
		     <div class="form-group">
		      <label for="pwd">회사명:</label>
		      <input type="text" class="form-control" name="name" required="required">
		    </div>
		     <div class="form-group">
		      <label for="pwd">대표번호:</label>
		      <input type="text" class="form-control" name="callnum" required="required">
		    </div>
		     <div class="form-group">
		      <label for="pwd">회사 E-mail:</label>
		      <input type="email" class="form-control" name="email" required="required">
		    </div>
		    <div class="form-group">
		      <label for="pwd">사업자등록번호:</label>
		      <input type="text" class="form-control" name="conumber" required="required">
		    </div>
		    <div class="form-group">
		      <label for="pwd">대표:</label>
		      <input type="text" class="form-control" name="boss" required="required">
		    </div>
			<hr />
			<div id="submit" hidden="hidden">
			<button type="submit" class="btn btn-info">OK</button>
			</div>
		</form>
	</div>
	<script>
		
		$("#check").click(function() {
			$.ajax({
				"method" : "get",
				"url" : "/business/join/idcheck/"+$("#id").val()
			}).done(function(rst){
				if(rst=="y") {
					$("#submit").fadeIn(1000);
					window.alert("사용가능합니다.");
				}else {
					window.alert("사용불가능합니다.");
					$("#submit").fadeOut(1000);
				}
			});
			
		});
		
	</script>

</body>

</html>

