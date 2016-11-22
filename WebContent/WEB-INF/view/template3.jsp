<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
	<div class="container" style="min-height: 600px;">
		<nav>
			<tiles:insertAttribute name="menubar" />
		</nav>
		<header>
			<tiles:insertAttribute name="head" />
		</header>
		<article>
			<tiles:insertAttribute name="body" />
		</article>
	</div>
		<footer>
			<tiles:insertAttribute name="foot" />
		</footer>
</html>

