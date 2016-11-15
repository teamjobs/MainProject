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
		<h2>회원가입 (구직자)</h2>
		<p>취업을 위한 구직자 분들의 회원가입 입니다!</p>
		<form action="/member/joinOK" method="post">
			<div class="form-group">
				<label for="usr">ID:</label> <input type="text" class="form-control"
					name="id" required="required" id="id">
			</div>
			<input type="button" id="check" value="아이디 중복확인">
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" name="pass" required="required">
			</div>
			<div class="form-group">
				<label for="pwd">이름:</label> <input type="text" class="form-control"
					name="name" required="required">
			</div>
			<div class="form-group">
				<label for="pwd">전화번호 (phone):</label> <input type="text"
					class="form-control" name="phone" required="required">
			</div>
			<div class="form-group">
				<label for="pwd">E-mail:</label> <input type="email"
					class="form-control" name="email" required="required">
			</div>
			<input type="radio" name="gender" value="man" required="required">남성
			<input type="radio" name="gender" value="women" required="required">여성
			<hr />

			<input type="submit" value="OK">
		</form>
	</div>
	<script>
		$("#check").click(function() {
			$.ajax({
				"method" : "get",
				"url" : "/member/check?id=" + $("#id").val()
			}).done(function(rst){
				window.alert(rst);
			});
			
		});
	</script>

</body>

</html>

