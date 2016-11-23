<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h2>내 이력서 목록</h2>

<c:forEach items="${mrlist}" var="mr">
${mr.NUM}<br/>
${mr.TITLE}<br/>
<a href="/my/resume/down/${mr.FILEUUID}">${mr.FILENAME}</a><br/>
${mr.FILEUUID}<br/>
${mr.UPLOADER}<br/>
${mr.UPDAY}<br/>
${mr.LISTUPDATE}<br/>
${mr.FILESIZE}<br/>
</c:forEach>