<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<head>
<style>
.filebox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

/* named upload */
.filebox .upload-name {
	display: inline-block;
	padding: .5em .75em; /* label의 패딩값과 일치 */
	font-size: inherit;
	font-family: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #f5f5f5;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	-webkit-appearance: none; /* 네이티브 외형 감추기 */
	-moz-appearance: none;
	appearance: none;
}
</style>


<div class="" id="portfolio">
	<div class="w3-section w3-bottombar w3-padding-5">
		<h3>내 이력서 등록</h3>
		<form action="/my/resume/upload" method="post" enctype="multipart/form-data">
		<div class="filebox" id="portfolio">
			<input class="upload-name" value="파일선택" disabled="disabled" id="OK">
			<label class="btn btn-success" for="ex_filename">파일 선택</label> <input
				type="file" name="file" id="ex_filename" class="upload-hidden">
			<input class="w3-btn w3-white w3-border w3-round-large" type="submit" value="등록" id="add" style="display: none"/>
		</div>
		</form>
	</div>
</div>
<br/>
<!-- First Photo Grid-->
<div class="w3-row-padding"></div>
</head>

<body>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>


<h2>내 이력서 목록</h2>

<form action="/my/resume/delete" id="listform" method="post">
<div style="overflow-x:auto;">
  <table style="min-width:1000px; width: auto;  height: auto;">
    <tr>
      <th>NO.</th>
      <th>파일이름</th>
      <th>용량</th>
      <th>업로드 날짜</th>
      <th>수정</th>
      <th>마지막 수정 날짜</th>
      <th>업로더</th>
      <th>삭제</th>
    </tr>
    
    <c:forEach items="${mrlist}" var="mr">
    <tr>
      <td>${mr.NUM}</td>
      <td><a href="/my/resume/down/${mr.FILEUUID}">${mr.FILENAME}</a></td>
      <td>${mr.FILESIZE}</td>
      <td>${mr.UPDAY}</td>
      <td><input type="button" value="수정" class="revise_bt" target="${mr.NUM}"/></td>
      <td>${mr.LISTUPDATE}</td>
      <td>${mr.UPLOADER}</td>
      <td><input type="button" value="삭제" class="delete_bt" target="${mr.NUM}"/></td>
    </tr>
    </c:forEach>
  </table>
</div>
</form>
</body>


<script>
	$(document).ready(function() {
		var fileTarget = $('.filebox .upload-hidden');

		fileTarget.on('change', function() { // 값이 변경되면
			if (window.FileReader) { // modern browser
				var filename = $(this)[0].files[0].name;
				$("#add").fadeIn(1000);
			} else { // old IE
				var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
			}

			// 추출한 파일명 삽입
			$(this).siblings('.upload-name').val(filename);
		});
	});
	
	$(".revise_bt").click(function(){
		if (window.confirm("파일을 수정 하시겠습니까?")) {
			location.href = "/my/resume/revise?num="+$(this).attr("target");
		}
	});
	
	$(".delete_bt").click(function(){
		if (window.confirm("파일을 삭제 하시겠습니까?")) {
			location.href = "/my/resume/delete?num="+$(this).attr("target");
		}
	});

	 $("#OK").change(function(){
		
	}) 
	

	
</script>













