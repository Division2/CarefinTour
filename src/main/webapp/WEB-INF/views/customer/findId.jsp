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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>아이디 찾기</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="findID">아이디 찾기</a></li>
					<li><a href="findPassword">비밀번호 찾기</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<div class="text-center">
					<h3>아이디 찾기</h3>
					<p class="desc">회원 로그인을 하시어 더욱 다양한 <b>서비스</b>를 이용하세요</p>
					<hr>
				</div>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div class="mx-auto">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">성　명</span>
								</div>
								<input type="text" name="Name" id="Name" class="form-control" required autofocus>
							</div>
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">이메일</span>
								</div>
								<input type="text" name="Email" id="Email" class="form-control" required>
							</div>
							<button id="FindID" class="thm-btn-psd btn-block btn-round" onclick="find_id()">아이디 찾기</button>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</section>

		<jsp:include page="../layout/footer.jsp" />
		<script src='<c:url value="/resources/js/Member2.js"/>'></script>
	</div>
</body>
</html>