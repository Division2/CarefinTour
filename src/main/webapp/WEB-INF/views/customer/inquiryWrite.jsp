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
		<script src='<c:url value="resources/js/Board.js"/>'></script>
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
		
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/page-header-contact.png"/>);">
			<div class="container">
				<h2>1:1 문의</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="notice">공지사항</a></li>
					<li><a href="inquiry">1:1문의</a></li>
					<li><a href="support">자주찾는질문</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<h1>1:1 문의 작성</h1>
				<hr>
				<div class="comment-form">
					<form id="InquiryBoardWrite" name="InquiryBoardWrite" action="inquiryWrite" method="POST" class="contact-one__form">
						<div class="row low-gutters">
							<div class="col-md-12">
								<label for="Category" class="form-label"><strong>문의 유형</strong></label>
								<div class="input-group">
									<select class="selectpicker" id="Category" name="Category" data-width="100%">
										<option>문의 유형 선택</option>
										<option value="패키지문의">패키지 문의</option>
										<option value="여행문의">여행 문의</option>
										<option value="결제문의">결제 문의</option>
										<option value="호텔문의">호텔 문의</option>
										<option value="예약문의">예약 문의</option>
									</select>
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="title" class="form-label"><strong>문의 제목</strong></label>
									<input type="text" id="Title" name="Title">
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="content" class="form-label"><strong>문의 내용</strong></label>
									<textarea id="Content" name="Content" rows="5"></textarea>
								</div>
							</div>
							<input type="hidden" id="UserID" name="UserID" value="${member.getUserID()}">
							<input type="hidden" id="UserName" name="Name" value="${member.getName()}">
							<input type="hidden" id="UserPhone" name="Phone" value="${member.getPhone()}">
				    		<div class="col-auto mr-auto"></div>
							<div class="col-auto">
								<button type="button" class="thm-btn-psd" onclick="InquiryWrite()">등록</button>
								<button type="reset" class="thm-btn-psd">취소</button>
								<button type="button" class="thm-btn-psd" onclick="location.href='inquiry'">목록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>