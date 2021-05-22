<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/page-header-contact.jpg"/>);">
			<div class="container">
				<h2>여행 포토</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>

		<section class="tour-one">
			<div class="container">
				<div class="comment-form">
					<form action="TravelPhotoWrite" role="form" method="POST" name="add" id="add" enctype="multipart/form-data" class="contact-one__form">
						<div class="row low-gutters">
							<div class="col-md-12">
								<div class="input-group">
									<label for="title" class="form-label"><strong>제목</strong></label>
									<input type="text" id="Title" name="Title">
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="userId" class="form-label"><strong>작성자</strong></label>
									<input type="text" id="userId" name="userId" value="${sessionScope.member.getUserID()}" required readonly>
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="content" class="form-label"><strong>내용</strong></label>
									<textarea id="Content" name="Content" rows="5"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<label for="file" class="form-label"><strong>첨부 파일</strong></label>
								<div class="form-group" style="border: 1px solid #dbdbdb;">								
									<div id="fileIndex">
										<div>
											<input type="file" name="file">
											<button id="fileDel" type="button" style='float:right;'>삭제</button>
										</div>
									</div>
								</div>
							</div>
				   	 	  	<input type="hidden" id="good" name="good" value="0">
				    	   	<input type="hidden" id="bad" name="bad" value="0">
						</div>
			        	<div class="row">
				    		<div class="col-auto mr-auto"></div>
							<div class="col-auto">
								<input class="thm-btn-psd" id="fileAdd_btn" value="파일추가" style="width:135px;">
								<input class="thm-btn-psd" type="button" onclick="Write()" value="등록">
								<input class="thm-btn-psd" type="button" value="목록" onclick="location.href='travelphoto'">
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>
		
	<jsp:include page="../layout/footer.jsp" />
	<script src='<c:url value="resources/js/file-add-delete.js"/>'></script>
	<script src='<c:url value="resources/js/TravelPhoto.js"/>'></script>	
	</div>
	<!-- 메인 영역 -->
</body>
</html>