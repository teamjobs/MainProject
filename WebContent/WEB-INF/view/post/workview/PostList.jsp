<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Hover Rows</h2>
  <p>The .table-hover class enables a hover state on table rows:</p>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>기업</th>
        <th>제목</th>
        <th>경력, 학력</th>
        <th>고용형태, 위치, 급여</th>
        <th>마감일자</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="t" items="${list }">
      <tr>
        <td><a href="/company/introduction?com=${t.COMPANY }">${t.COMPANY }</a> </td>
        <td>${t.TITLE }</td>
        <td>${t.CAREER } / ${t.QUALIFICATION}</td>
        <td>${t.HIRETYPE } <br/> ${t.LOCAL } <br/> ${t.SALARY } ${t.PAY }</td>
        
        <td><fmt:formatDate value="${t.ENDDATE}" pattern="YYYY-MM-dd"/>   마감<fmt:formatNumber value=" ${t.MAGAM}" pattern=".#"/>일 전</td>
       
      </tr>
    </c:forEach>
      
    </tbody>
  </table>
</div>

</body>
</html>

