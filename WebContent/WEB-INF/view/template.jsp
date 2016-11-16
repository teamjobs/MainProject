<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<style>
nav {
	background-color: #FFFACD;
}

article {
	height: 100%;
	padding-bottom: 100px;
	
}

footer {
	position: absolute;
	bottom: 0;
	width: 100%;
	height: 100px;
	color: #2D2D25;
}
</style>


</head>
<body>
	<div class="container">
		<nav>
			<tiles:insertAttribute name="menubar" />
		</nav>
		<article>
			<tiles:insertAttribute name="body" />
		</article>
		<footer>
			<tiles:insertAttribute name="foot" />
		</footer>
	</div>
</body>
</html>

