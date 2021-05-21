<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<jsp:include page="../layout/header.jsp"/>
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
	
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>

		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>마이페이지</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li>CarefinTour</li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<div class="row">
					<!-- 마이페이지 사이드바 -->
					<jsp:include page="sidemypage.jsp"/>
					
					<div class="col-md-8">
						<div class="jumbotron mx-4">
							<div class="d-flex">
								<div class="mx-auto">
									<p>${member.getName() }님 안녕하세요!</p>
								</div>
								<div class="mx-auto">
									<p>마일리지 : ${member.getMileage() }M</p>
								</div>
							</div>
							<div class="d-flex">
								<div class="mx-auto">
									<p>연락처 : ${member.getPhone() }</p>
								</div>
								<div class="mx-auto">
									<p>이메일 : ${member.getEmail() }</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>