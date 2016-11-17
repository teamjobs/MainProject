<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="t" items="${list }">
	${t.BOSS }

</c:forEach>

<h2>기업정보</h2>
<hr style="border-width: 5px;"/>