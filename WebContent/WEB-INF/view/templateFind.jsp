<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<style>
nav {
	background-color: #D1E2E2;
}

body {
	text-align: center;
}

article {
	height: 100%;
	padding-bottom: 100px;
	text-align: center;
}

footer {
	bottom: 0;
	width: 100%;
	height: 100px;
	color: #383838;
}
</style>


</head>

<body>
	<div class="container" style="min-height: 600px;">
		<nav>
			<tiles:insertAttribute name="menubar" />
		</nav>
		<article>
			<tiles:insertAttribute name="body1" />
			<tiles:insertAttribute name="body2" />
		</article>
		<footer>
			<tiles:insertAttribute name="foot" />
		</footer>
	</div>
</body>
</html>

