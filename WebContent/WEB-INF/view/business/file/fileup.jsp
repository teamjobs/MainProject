<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 
<h3>자료등록</h3>
<hr/>
<div style="line-height:30px;" style="font-size:10pt">
<form action="/work/file/upload" method="post" enctype="multipart/form-data">
	타입을 선택해주세요.#
	지원포스트<input type="number" name="post"/>
	지원회사#<input type="text" name="co" size="30"/><br/>
	첨부파일#<input type="file" name="file"/><br/>
	<input type="submit" value="등록"/>
</form>
</div>
 -->


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <div class="w3-row-padding">
		<form class="w3-container w3-card-4" action="/business/file/upload"
			method="post" enctype="multipart/form-data">
			<div class="w3-group">
				<input class="w3-input" type="text" name="title" required> <label
					class="w3-label">제목</label>
			</div>
			<div class="w3-row">
				<br>
				<div class="w3-half">
						<input type="file" name="file" id="fileup" style="display: none;" />
						<button class="w3-btn w3-left" type="button" id="fileup_bt">파일
							첨부</button>&nbsp;<span id="filename" style="width: auto;"></span> <br /> <br /> <input type="submit"
							class="w3-btn w3-left" value="올리기" />
							<br>
				</div>
				<div class="w3-half">
				<div class="w3-left">
						<input id="zip" class="w3-radio" type="radio" name="type"
							value="zip" checked> <label class="w3-validate">압축파일</label>
						<br> 
						<input id=image class="w3-radio" type="radio"
							name="type" value="image"> <label class="w3-validate">이미지</label>
						<br> 
						<input id="text" class="w3-radio" type="radio"
							name="type" value="text"> <label class="w3-validate">문서</label>
						<br>
						<br>
				</div>
				</div>
			</div>
		</form>
	</div>


<script>
	$("#fileup_bt").click(function() {
		$("#fileup").trigger("click");
		
	});
	$("#fileup").change(function(){
		var t=$(this)[0].files[0].name;
		$("#filename").html(t);
	});
	
	
</script>



