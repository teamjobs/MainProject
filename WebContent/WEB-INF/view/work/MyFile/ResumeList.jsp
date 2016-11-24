<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>NO.</th>
      <th>파일이름</th>
      <th>용량</th>
      <th>업로드 날짜</th>
      <th>마지막 수정 날짜</th>
      <th>업로더</th>
    </tr>
    
    <c:forEach items="${mrlist}" var="mr">
    <tr>
      <td>${mr.NUM}</td>
      <td><a href="/my/resume/down/${mr.FILEUUID}">${mr.FILENAME}</a></td>
      <td>${mr.FILESIZE}</td>
      <td>${mr.UPDAY}</td>
      <td>${mr.LISTUPDATE}</td>
      <td>${mr.UPLOADER}</td>
    </tr>
    </c:forEach>
  </table>
</div>