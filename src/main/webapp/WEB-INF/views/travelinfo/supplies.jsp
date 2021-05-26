<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="apple-touch-icon" sizes="180x180" href='<c:url value="/resources/favicons/apple-touch-icon.png"/>'>
<link rel="icon" type="image/png" sizes="32x32" href='<c:url value="/resources/images/favicons/favicon-32x32.png"/>'>
<link rel="icon" type="image/png" sizes="16x16" href='<c:url value="/resources/images/favicons/favicon-16x16.png"/>'>
<link rel="manifest" href='<c:url value="/resources/images/favicons/site.webmanifest"/>'>
<title>CarefinTour</title>
</head>
<body>
	<!-- 페이지 로딩 이미지 -->
	<div class="preloader">
		<img src='<c:url value="/resources/images/loader.png"/>' class="preloader__image" alt="">
	</div>
	<!-- 페이지 로딩 이미지 -->
	
	<!-- 메인 영역 -->
	<div class="page-wrapper">
		<jsp:include page="../layout/header.jsp" />
	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>여행준비물</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="weatherinfo">날씨</a></li>
					<li><a href="exchangeinfo">환율</a></li>
					<li><a href="timedifferenceinfo">시차</a></li>
					<li><a href="visainfo">비자</a></li>
					<li><a href="supplies">여행준비</a></li>
				</ul>
			</div>
		</section>
	
		<section class="tour-one">
			<div class="container">
				<h5>여행 출발하기 전 각종 정보를 꼭 확인하시고</h5>
				<h5>더욱 편안한 여행되시길 바랍니다.</h5>
				<hr>
				<div class="container">
					<c:out escapeXml="false" value="${fn:replace(fn:replace(SuppliesInfo.getSuppliesContent(), '&lt;', '<'), '&gt;', '>')}"/>
				</div>
			</div>
		</section>
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>