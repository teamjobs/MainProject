<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<h2>이력서 업로드 페이지</h2>
<div style="line-height: 40px;">
<form action="/my/resume/upload" method="post" enctype="multipart/form-data">

	<div class="filebox bs3-primary">
		<input class="upload-name" value="파일선택" disabled="disabled"/>
		 <label for="ex_filename">업로드</label> 
		 <input type="file" id="ex_filename" name="file" class="upload-hidden"/>
		 <input type="submit" value="등록"/>
	</div>
</form>
</div>
