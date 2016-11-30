<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<title>Jobs</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<body>
	<div class="alert alert-success" hidden="hidden" id="checkOK">
    <strong>Success!</strong> 사용 가능한 아이디 입니다.
  	</div>
  	
  	<div class="alert alert-danger" hidden="hidden" id="checkFail">
    <strong>Fail!</strong> 중복된 아이디 입니다.
  	</div>

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
		      <label for="pwd">주소:</label>
		      <input type="text" class="form-control" name="addr" required="required">
		    </div>
		    <div class="form-group">
		      <label for="pwd">대표:</label>
		      <input type="text" class="form-control" name="boss" required="required">
		    </div>
				<!-- Trigger the modal with a button -->
				<button type="button" class="btn btn-info btn-lg"
					data-toggle="modal" id="confirm" data-target="#myModal"
					style="padding: 5px 20px;">이메일 인증</button>
			<hr />
			<div id="submit" hidden="hidden">
			<button type="submit" class="btn btn-info">OK</button>
			</div>
		</form>
	</div>


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
								<p>인증받을 이메일을 입력해주세요.</p>
								<input type="text" id="joinmail"/>
								<button type="button" class="btn btn-info" id="mailsend">메일 발송</button>
								<div id="sendcheck" hidden="hidden">
									<a>해당 계정으로 이메일을 발송했습니다.</a> <br />
								</div>
								<input type="text" id="mailauth" />
								<div id="mailno" hidden="hidden">
									<a>일치하지 않는 인증번호 입니다.</a> <br />
								</div>
								<div id="mailyes" hidden="hidden">
									<a>일치하지 않는 인증번호 입니다.</a> <br />
								</div>
								<p>인증번호를 입력해 주세요</p>
								<button type="button" class="btn btn-default"
								id="mailcheck">인증하기</button>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="closemodal">인증완료</button>
							</div>
						</div>
				</div>
	
	
	</div>
	
	<script>

		var auth = 'n';	
	
		$("#check").click(function() {
			$.ajax({
				"method" : "post",
				"url" : "/business/join/idcheck/"+$("#id").val()
			}).done(function(rst){
				if(rst=="y") {
					auth = 'y';
					$("#checkOK").fadeIn(1000);
					$("#checkFail").fadeOut(100);
				}else {
					$("#checkOK").fadeOut(100);
					$("#checkFail").fadeIn(1000);
				}
			});
		});
		
		
		$("#mailsend").click(function() {
			$.ajax({
				"method" : "post",
				"url" : "/join/mail/" + $("#joinmail").val()
			}).done(function(rst) {
				$("#sendcheck").fadeIn(1000);
				auth = rst;
			});
		});
		
		$("#mailcheck").click(function() {
			if(auth == $("#mailauth").val()){
				$("#submit").fadeIn(1000);
				$("#mailyes").fadeIn(1000);
			}else{
				$("#mailno").fadeIn(1000);
				$("#submit").fadeOut(1000);
			}
		});
		
	</script>

</body>

</html>

