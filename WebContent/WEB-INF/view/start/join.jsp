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
		<strong>Success!</strong> 사용 가능한 아이디 입니다.
	</div>

	<div class="alert alert-danger" hidden="hidden" id="checkFail">
		<strong>Fail!</strong> 중복된 아이디 입니다.
	</div>
	<div class="container">
		<b><h2>회원가입 (구직자)</h2></b>
		<p>취업을 위한 구직자 분들의 회원가입 입니다!</p>
		<form action="/member/joinOK" method="post">
			<div class="form-group">
				<label for="usr">ID:</label> (5자 이상 입력해주세요) <input type="text"
					class="form-control" name="id" required="required" id="id">
				<br />
				<button type="button" class="btn btn-info" id="check"
					disabled="disabled">아이디 중복확인</button>
			</div>

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

			<!-- email 인증 -->

			<div class="form-group">
				<label for="pwd">E-mail:</label> <input type="email"
					class="form-control" name="email" required="required" id="email">
			</div>


			<div class="container" align="left">
				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg"
					data-toggle="modal" id="confirm" data-target="#myModal"
					style="padding: 5px 20px;">이메일 인증</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">E-mail 인증</h4>
							</div>
							<div class="modal-body">
								<p>귀하의 이메일로 인증코드를 보냈습니다.</p>
								<input type="text" id="mailAuth" /> 
								<button type="button" class="btn btn-default" id="mailcheck">인증하기</button>
								<div id="no" hidden="hidden">
									<a>일치하지 않는 인증코드입니다.</a> <br />
								</div>
								<div id="mailyes" hidden="hidden">
									<a>코드가 일치합니다.</a> <br />
								</div>
								<p>인증코드를 입력해 주세요</p>
								
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" >인증완료</button>
							</div>
						</div>

					</div>
				</div>

			</div>


			<br /> <input type="radio" name="gender" value="man"
				required="required">남성 <input type="radio" name="gender"
				value="women" required="required">여성
			<hr />


			<div id="submit" hidden="hidden">
				<button type="submit" class="btn btn-info">OK</button>
			</div>

		</form>
	</div>
	<script>
		$("#id").keyup(function() {
			if ($(this).val().length > 4) {
				$("#check").prop("disabled", false);
			} else {
				$("#check").prop("disabled", true);
			}
		});

		// 아이디 중복 확인
		$("#check").click(function() {
			$.ajax({
				"method" : "get",
				"url" : "/member/check?id=" + $("#id").val()
			}).done(function(rst) {
				if (rst == "YYYYY") {
					$("#submit").fadeIn(1000);

					$("#checkOK").fadeIn(1000);
					$("#checkFail").fadeOut(100);

				} else {

					$("#submit").fadeOut(1000);

					$("#checkOK").fadeOut(100);
					$("#checkFail").fadeIn(1000);
				}

			});

		});

		$("#id").keyup(function() {
			$("#submit").fadeOut(1000);
		});

		
		//이메일 양식 확인
	
		$("#email").keyup(function() {
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			var tt = regExp.test($("#email").val());
			consol.log(tt);
		})

		var mailAuth = 'no';
		// 이메일 인증번호 전송

		$("#confirm").click(function() {
			$.ajax({
				"method" : "post",
				"url" : "/join/mail/" + $("#email").val()
			}).done(function(rst) {
				mailAuth = rst;
				console.log(auth);
			});
		});

		$("#mailcheck").click(function() {
			if (mailAuth == $("#mailAuth").val()) {
				$("#mailyes").fadeIn(100);
			} else {
				$("#no").fadeIn(100);
			}
		});
	</script>

</body>

</html>

