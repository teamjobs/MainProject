<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%--

		사용하시기 전에 읽어주세요. 
		co > 해당 회사의 CompanyData를 사용합니다. 
		CdataReadService.getIntrodunction(String companyName)
		을 이용해서 해당 정보를 넣어주셔야 제대로 떠요. 


 --%>


<!DOCTYPE html>
<html>
<title>${co.NAME }</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body>

<nav>
	<tiles:insertAttribute name="menubar" />
</nav>

<article>
<div class="w3-container w3-margin">
</div>
<div class="w3-display-container w3-margin-top">
  <img src="/img/company_header.jpg" alt="Lights" style="width:100%">
  <div class="w3-padding w3-display-bottomleft w3-text-white" ><h2>${co.NAME}</h2><p>${co.INTRODUCE }</p></div>
</div>

<ul class="w3-navbar w3-Lightgray">
  <li><a href="javascript:void(0)" onclick="openCity('tab-1')">기업정보</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('tab-2')">리뷰</a></li>
  <li><a href="javascript:void(0)" onclick="openCity('tab-3')">Q&A</a></li>
</ul>
<div id="tab-1" class="w3-container city">
	<div class="w3-container">
  <tiles:insertAttribute name="CVData" />
  </div>
</div>

<div id="tab-2" class="w3-container city">
<div class="w3-container">
 <tiles:insertAttribute name="CVReview" />
</div>
</div>

<div id="tab-3" class="w3-container city">
<div class="w3-container">
  <tiles:insertAttribute name="CVQnA" />
</div>
</div>

</article>
<footer>
	<tiles:insertAttribute name="foot" />
</footer>
<script>
	openCity("tab-1")
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



