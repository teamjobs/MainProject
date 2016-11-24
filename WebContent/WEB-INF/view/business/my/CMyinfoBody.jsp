<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
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
<div id="1" class="w3-container city">
  <h2>기업명</h2>
  <p>${list.NAME }</p>
</div>

<div id="2" class="w3-container city">
  <h2>대표자 명</h2>
  <p>${list.BOSS }</p>
  <h2>대표 번호</h2>
  <p>${list.CALLNUM }</p>
</div>

<div id="3" class="w3-container city">
  <h2>업종</h2>
  <p>${list.INDUSTRY }</p>
</div>

<div id="4" class="w3-container city">
  <h2>사업내용</h2>
  <p>${list.INTRODUCE }</p>
</div>

<div id="5" class="w3-container city">
  <h2>기업형태</h2>
  <p>${list.FORM }</p>
</div>

<div id="6" class="w3-container city">
  <h2>설립일, 채용현황</h2>
  <p><fmt:formatDate value="${list.INCO }" pattern="YYYY-MM-dd"/></p>
</div>

<div id="7" class="w3-container city">
  <h2>사원수</h2>
  <p>${list.EMPLOYEE_NUM }</p>
  <h2>매출액</h2>
  <p>${list.SALESACCOUNT }</p>
</div>

<div id="8" class="w3-container city">
  <h2>홈페이지</h2>
  <p>${list.WEBSITE }</p>
   <h2>기업주소</h2>
  <p>${list.ADDR }</p>
</div>
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

</html>