<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>

<div class="w3-container">
  <h2>기업정보</h2>
  <p>복지·연봉·근무환경·취업자료 등이 담겨있는 상세한 기업정보도 확인하세요.</p>
</div>

<ul class="w3-navbar w3-black">
  <li><a href="javascript:void(0)" onclick="openCity('1')">기업명</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('2')">대표자 명, 번호</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('3')">업종</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('4')">사업내용</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('5')">기업형태</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('6')">설립일, 채용현황</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('7')">사원수, 매출액</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('8')">홈페이지, 기업주소</a></li>
</ul>
<c:forEach var="t" items="${list }"> 
<div id="1" class="w3-container city">
  <h2>기업명</h2>
  <p>${t.NAME }</p>
</div>

<div id="2" class="w3-container city">
  <h2>대표자 명</h2>
  <p>${t.BOSS }</p>
  <h2>대표 번호</h2>
  <p>${t.CALLNUM }</p>
</div>

<div id="3" class="w3-container city">
  <h2>업종</h2>
  <p>${t.INDUSTRY }</p>
</div>

<div id="4" class="w3-container city">
  <h2>사업내용</h2>
  <p>${t.INTRODUCE }</p>
</div>

<div id="5" class="w3-container city">
  <h2>기업형태</h2>
  <p>${t.FORM }</p>
</div>

<div id="6" class="w3-container city">
  <h2>설립일, 채용현황</h2>
  <p><fmt:formatDate value="${t.INCO }" pattern="YYYY-MM-dd"/></p>
</div>

<div id="7" class="w3-container city">
  <h2>사원수</h2>
  <p>${t.EMPLOYEE_NUM }</p>
  <h2>매출액</h2>
  <p>${t.SALESACCOUNT }</p>
</div>

<div id="8" class="w3-container city">
  <h2>홈페이지</h2>
  <p>${t.WEBSITE }</p>
   <h2>기업주소</h2>
  <p>${t.ADDR }</p>
</div>


</c:forEach>
<script>
openCity("1")
function openCity(cityName) {
    var i;
    var x = document.getElementsByClassName("city");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    document.getElementById(cityName).style.display = "block";
}
</script>

</body>
</html>



