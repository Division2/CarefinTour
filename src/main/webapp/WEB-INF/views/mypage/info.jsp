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
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
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
		<script src='<c:url value="resources/js/Member.js"/>'></script>
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
	
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
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
						<div class="d-flex">
							<h1>정보 수정</h1>
							<div class="ml-auto">
								<button type="button" class="thm-btn-psd" onclick="MyInfoUpdate()">수정하기</button>
							</div>
						</div>
						<hr>
						<form action="MyPageInfoUpdate" method="POST" id="MyPageUpdate" name="MyPageUpdate">
							<!-- 아이디 & 비밀번호 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">아이디</span>
										</div>
										<input type="text" id="MyInfoUserID" name="UserID" value="${member.getUserID()}" class="form-control" required readonly>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">비밀번호</span>
										</div>
										<input type="password" id="MyInfoPassword" name="Password" value="${member.getPassword()}" class="form-control">
									</div>
								</div>
							</div>
							<!-- 이름 & 생년월일 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">이름</span>
										</div>				
										<input type="text" id="Name" name="Name" value="${member.getName()}"class="form-control" required readonly>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">생년월일</span>
										</div>
										<input type="text" name="Birth" id="Birth" value="${member.getBirth() }" class="form-control" required readonly>
									</div>
								</div>
							</div>
							<!-- 이메일 & 휴대전화 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">이메일</span>
										</div>
										<input type="email" id="MyInfoEmail" name="Email" value="${member.getEmail()}" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">휴대전화</span>
										</div>
										<input type="tel" id="MyInfoPhone" name="Phone" value="${member.getPhone()}" class="form-control" required>
									</div>
								</div>
							</div>
							<!-- 주소 -->
							<div class="form-group row">
								<div class="col-xs-10 col-md-10">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">주소</span>
										</div>
										<input type="text" name="Address" id="Address" value="${member.getAddress()}" class="form-control" placeholder="주소" required readonly>
									</div>
								</div>
								<div class="col-xs-2 col-md-2">
									<div class="input-group my-2 mb-1">
										<button type="button" class="thm-btn-psd2" onclick="goPopup2()">주소 찾기</button>
									</div>
								</div>
							</div>
							<input type="hidden" id="Grade" name="Grade" value="${sessionScope.member.getGrade() }">
						</form>
					</div>
					<br>
				</div>
			</div>
		</section>

		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>