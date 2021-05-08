<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 PageError</title>
<link href="https://fonts.googleapis.com/css?family=Cabin:400,700" rel="stylesheet">
<link href='<c:url value="/resources/css/error.css"/>' rel="stylesheet">
<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
	<div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
				<div></div>
				<h1>500</h1>
			</div>
			<h2>Internal Server Error</h2>
			<p>The requested result cannot be displayed<br>Please try again in a few minutes.</p>
			<a href="main">home page</a>
		</div>
	</div>
	<script src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
	
		gtag('config', 'UA-23581568-13');
	</script>
</body>
</html>