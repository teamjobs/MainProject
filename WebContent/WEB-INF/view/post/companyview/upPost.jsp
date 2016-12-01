<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet"
	href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<c:if test="${pd.TITLE != null }">
		<label class="w3-label">공고 수정시 이력서 첨부파일 및 모집기간을 다시 업로드해주세요.</label><hr/>
</c:if>


<div class="w3-container">
<form action="/business/my/post/uploadrst" method="post" enctype="multipart/form-data"
	onsubmit="return existCheck()">
<c:choose>
	<c:when test="${pd.TITLE != null }">
	<input class="w3-input" type="text" name="title" style="size:10px;"required value="${pd.TITLE }">
	</c:when>
	<c:otherwise>
	<input class="w3-input" type="text" name="title" required>
	</c:otherwise>
</c:choose>
	 <label class="w3-label">제목</label>
	<hr/>
	<div class="w3-row-padding">
	<div class="w3-quarter">
		<h3>채용조건</h3>
		<select class="w3-select" name="job">
		<c:forEach var="it" items="${li.job }">
			<option ${pd.JOB == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select><br>
		<label class="w3-label">직무</label><br>
		<select class="w3-select" name="hiretype">
		<c:forEach var="it" items="${li.hiretype }">
			<option ${pd.HIRETYPE == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select>
		<label class="w3-label">고용형태</label><br>
	</div>
	
	<div class="w3-quarter">
		<h3>직급 및 지역</h3>
		<select class="w3-select" name="rank">
		<c:forEach var="it" items="${li.rank }">
			<option ${pd.RANK == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select><br>
		<label class="w3-label">직급</label><br>
		<c:choose>
			<c:when test="${pd.LOCAL != null }">
			<input class="w3-input" type="text" name="local" style="size:10px;"required value="${pd.LOCAL }">
			</c:when>
			<c:otherwise>
			<input class="w3-input" type="text" name="local" style="size:10px;"required >
			</c:otherwise>
		</c:choose>
		<label class="w3-label">근무지</label><br>
	</div>
	
	<div class="w3-quarter">
		<h3>지원자격</h3>
		<select class="w3-select" name="education">
		<c:forEach var="it" items="${li.education }">
			<option ${pd.EDUCATION == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select><br>
		<label class="w3-label">학력</label><br>
		<select class="w3-select" name="career">
			<c:forEach var="it" items="${li.career }">
			<option ${pd.CAREER == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select>
		<label class="w3-label">경력</label><br>
	</div>
	
	<div class="w3-quarter">
		<h3>근무조건</h3>
		<select class="w3-select" name="salary">
			<c:forEach var="it" items="${li.salary }">
			<option ${pd.SALARY == it ? 'selected':''}>${it}</option>
		</c:forEach>
		</select><br>
		<label class="w3-label">지급방식</label><br>
		<c:choose>
			<c:when test="${pd.PAY != null }">
			<input class="w3-input" type="text" name="pay" style="size:10px;"required value="${pd.PAY }">
			</c:when>
			<c:otherwise>
			<input class="w3-input" type="text" name="pay" style="size:10px;"required>&nbsp;
			</c:otherwise>
		</c:choose>
		<label class="w3-label">급여</label><br>
	</div>
	</div>
	<br><br>
	
	<div class="w3-container">
	<div class="w3-left">
	<c:choose>
		<c:when test="${pd.BUSINESS != null }">
			<textarea name="business" style="width: 300%;">${pd.BUSINESS }</textarea><br>
		</c:when>
		<c:otherwise>
			<textarea name="business" style="width: 300%;">입사 후 업무에 대해 상세하게 적어주세요.</textarea><br>
		</c:otherwise>
	</c:choose>
	<label class="w3-label">업무내용</label><br>
	</div>
	</div>
	<br>
	<div class="w3-container">
	<div class="w3-left">
	<c:choose>
		<c:when test="${pd.QUALIFICATION != null }">
			<textarea name="qualification" style="width: 300%;">${pd.QUALIFICATION }</textarea><br>
		</c:when>
		<c:otherwise>
			<textarea name="qualification" style="width: 300%;"></textarea><br>
		</c:otherwise>
	</c:choose>
	<label class="w3-label">상세자격요건</label><br>
	</div>
	</div>

	<hr/>
	<c:choose>
		<c:when test="${pd.WAY != null }">
			<input class="w3-input" type="text" name="way" required value="${pd.WAY}" > 
		</c:when>
		<c:otherwise>
			<input class="w3-input" type="text" name="way" required> 
		</c:otherwise>
	</c:choose>	
	<label class="w3-label">지원방법</label>
	<br>
	<c:choose>
		<c:when test="${pd.PROCESS != null }">
			<input class="w3-input" type="text" name="process" required value="${pd.PROCESS}"> 
		</c:when>
		<c:otherwise>
			<input class="w3-input" type="text" name="process" required> 
		</c:otherwise>
	</c:choose>		
	<label class="w3-label">채용절차</label>
	<br>
	<br>
	<div class="w3-row-padding">
	<div class="w3-half">
		<input type="date" name="startdate"/>
		<label class="w3-label">지원시작일</label>
	</div>
	<div class="w3-half">
		<input type="date" name="enddate"/>
		<label class="w3-label">지원마감일</label>
	</div>
	</div>
	<hr/>

	<div class="w3-row-padding">
	<div class="w3-half">
		<c:choose>
		<c:when test="${pd.INCHARGE != null }">
			<input class="w3-input" type="text" name="incharge" required value="${pd.INCHARGE}"> 
		</c:when>
		<c:otherwise>
			<input class="w3-input" type="text" name="incharge" required> 
		</c:otherwise>
		</c:choose>
		<label class="w3-label">담당자</label>
	</div>
	<div class="w3-half">
		<c:choose>
		<c:when test="${pd.CALLNUMBER != null }">
			<input class="w3-input" type="text" name="callnumber" required value="${pd.CALLNUMBER}"> 
		</c:when>
		<c:otherwise>
			<input class="w3-input" type="text" name="callnumber" required> 
		</c:otherwise>
		</c:choose>
		<label class="w3-label">연락처</label>
	</div>
	</div>
	<br>
	<div class="alert alert-danger" hidden="hidden" id="checkFail">
		<strong>잠깐!</strong> 이력서 양식을 업로드해주세요.
	</div>
	<hr/>
	<c:if test="${pd.TITLE != null }">
		<label class="w3-label" id="adjlabel">&nbsp;이력서 첨부파일을 다시 올려주세요.</label>&nbsp;
	</c:if>
	<span id="filename" style="width: auto;"></span>&nbsp;
	<input type="file" name="file" id="fileup" style="display: none;" />
	<button class="w3-btn w3-left" type="button" id="fileup_bt">이력서 양식 첨부</button>
	<input class="w3-btn w3-theme" type="submit" id="subbutton" value="올리기"/>
	<c:choose>
		<c:when test="${pd.TITLE != null }">
			<input type="hidden" name="adjSort" value="${pd.NUM }"/>
		</c:when>
		<c:otherwise>
			<input type="hidden" name="adjSort" value="0"/>
		</c:otherwise>
	</c:choose>
	</form>
</div>
	
<script>
	$("#fileup_bt").click(function() {
		$("#fileup").trigger("click");
		
	});
	$("#fileup").change(function(){
		var t=$(this)[0].files[0].name;
		$("#filename").html(t+"&nbsp;");
		$("#adjlabel").html(""+"&nbsp;");
	});
	
	function existCheck(){
		if($("#filename").text()==""){
			$("#checkFail").fadeIn(1000).delay(1000).fadeOut(1000);
			return false;
		}
	}
	
</script>