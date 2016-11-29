<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
.center {
    margin: auto;
    width: 57%;
    border: 2px solid #FFFFFF;
    padding-bottom: 10px;
}
</style>
<br/>
<div class="center">
 <div class="w3-row">
 	<c:forEach var="i" items="${list }">
 	<div class="w3-col w3-display-container" style="width:20%">
		  <img src="/img/tile.jpg" style="width:180px; height: 180px;">
		  <div class="w3-padding w3-display-bottomleft"><img src="/files/${i.COMPANY }.png" style="width: 100px;"><br/><a href="/work/post/${i.NUM }"><b>${i.COMPANY }</b></a><br/>${i.JOB }<br/>${i.CAREER }</div>
	</div>
	</c:forEach>

</div>
</div>