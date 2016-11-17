<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>JOBs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
body, h1 {
	font-family: "Raleway", sans-serif
}

body, html {
	height: 100%
}

.bgimg {
	background-image: url('/img/${img}.jpg');
	/* background-image: url('/img/index.jpg'); */
	min-height: 100%;
	background-position: center;
	background-size: cover;
}
</style>
<body>

	
	<c:if test="${error != null }">
	<div class="alert alert-danger" id="checkFail">
		<strong>Fail!</strong> 유효하지 않는 아이디(패스워드) 입니다.
	</div>
	</c:if>
	<div
		class="bgimg w3-display-container w3-animate-opacity w3-text-white">
		<div class="w3-display-topleft w3-padding-large w3-xlarge">
		<p>
        
          <span class="glyphicon glyphicon-exclamation-sign" onclick="location.href='/index/introduction'" style="padding: 50px 50px;" />  사이트소개
        </a>
      </p>
		</div>
		<div class="w3-display-middle" align="center">
			<!-- <h1 class="w3-jumbo w3-animate-top">JOBs</h1> -->
			<img src="/img/logoW.png" class="w3-jumbo w3-animate-top"/> 
			<br/><br/>
			<hr class="w3-border-grey" style="margin: auto; width: 40%">
			<br />
			<!-- main  -->
			<div class="container" id="button">
				<button type="button" class="btn btn-default"
					style="padding: 10px 60px;" id="login">로그인</button>
				<br /> <br />
				<button type="button" class="btn btn-primary"
					style="padding: 10px 55px;" id="join">회원가입</button>
			</div>

			<!-- login -->
			<form action="/index/login" method="get">
				<div class="container" hidden="hidden" id="loginForm">
					ID <br /> <input type="text" name="id" style="color: black;" required="required"/> <br />
					<br /> PassWord <br /> <input type="password" name="pass"
						style="color: black;" required="required"/><br /> <br /> <input type="submit"
						class="btn btn-info" value="Login">
				</div>
			</form>

			<!-- join  -->
			<div class="container" id="joinForm" hidden="hidden">
				<button type="button" class="btn btn-default"
					style="padding: 10px 60px;" id="login"
					onclick="location.href='/index/agree'">구직 회원</button>

				<button type="button" class="btn btn-primary"
					style="padding: 10px 55px;" id="login"
					onclick="location.href='/business/join/'">기업 회원</button>
			</div>


			<div class="container" hidden="hidden" id="loginForm">
				<h2>Form control: input</h2>
				<p>The form below contains two input elements; one of type text
					and one of type password:</p>
				<form>
					<div class="form-group">
						<label for="usr">Name:</label> <input type="text"
							class="form-control" id="usr">
					</div>
					<div class="form-group">
						<label for="pwd">Password:</label> <input type="password"
							class="form-control" id="pwd">
					</div>
				</form>
			</div>
		</div>
		<div class="w3-display-bottomleft w3-padding-large">
			Powered by <a href="http://www.w3schools.com/w3css/default.asp"
				target="_blank">w3.css</a>
		</div>
	</div>
	<script>
		$("#login").click(function() {
			$("#loginForm").prop("hidden", null);
			$("#button").prop("hidden", "hidden");
		});

		$("#join").click(function() {
			$("#joinForm").prop("hidden", null);
			$("#button").prop("hidden", "hidden");
		});
		
		$("#icon").click(function(){
			location
		})
		
	</script>
	

</body>
</html>

