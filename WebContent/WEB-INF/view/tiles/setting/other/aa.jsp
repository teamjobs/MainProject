<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!-- 1. 원하는 부분에 어떻게 띄워줄지 '뷰페이지'를 먼저 만든다.-->
<!-- 2. ${??} 으로 불러온다.-->

<html>
<div class="container">
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
    <c:forEach var="i" items="${search }">
      <tr>
        <td><a href="/company/introduction?com=${i.COMPANY }">${i.COMPANY }</a> </td>
        <td>${i.TITLE }</td>
        <td>${i.CAREER } / ${i.QUALIFICATION}</td>
        <td>${i.HIRETYPE } <br/> ${i.LOCAL } <br/> ${i.SALARY } ${i.PAY }</td>
        
        <td><fmt:formatDate value="${i.ENDDATE}" pattern="YYYY-MM-dd"/>   마감<fmt:formatNumber value=" ${i.MAGAM}" pattern=".#"/>일 전</td>
       
      </tr>
    </c:forEach>
      
    </tbody>
  </table>
</div>

</body>
</html>

