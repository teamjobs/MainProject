<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<style>

header{
	padding: 3em;
	color: black;
	background-color: #F5F5F5;
	text-align: center;
}

</style>


</head>
<body>
	<div class="container">
		<header>
			<tiles:insertAttribute name="head"/>
		</header>
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

