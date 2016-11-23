<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
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
		<div class="w3-display-topleft w3-padding-large w3-xlarge">Logo
		</div>
		<div class="w3-display-middle" align="center">
			<h3>잘못된 접근입니다.</h3> <br/>
			<h1 class="w3-jumbo w3-animate-top">다시 시도해 주세요!
			<hr class="w3-border-grey" style="margin: auto; width: 40%"> <br/>
			<button type="button" class="btn btn-default"
					style="padding: 10px 60px;" id="login" 
					onclick="location.href='/'">홈으로</button>
			
			<br />
			

			


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
	</script>
	<

</body>
</html>

