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
		<script src='<c:url value="resources/js/file-add-delete.js"/>'></script>
		<script src='<c:url value="resources/js/PhotoWrite.js"/>'></script>	
		
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
				<form action="TravelPhotoWrite" role="form" method="POST" name="add" id="add" enctype="multipart/form-data">   
					<div class="form-group row">
						<label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="Title" name="Title">
						</div>
					</div>
					<div class="form-group row">
						<label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="userId" name="userId" value="${sessionScope.member.getUserID()}" required readonly>
						</div>
					</div>
					<div class="form-group row">
						<label for="content" class="form-label col-sm-2"><strong>내용</strong></label>
						<div class="col-sm-10">
							<textarea class="form-control" id="Content" name="Content" rows="5"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="file" class="form-label col-sm-2"><strong>첨부 파일</strong></label>
						<div class="col-sm-10">
							<span>파일 목록</span>
							<div class="form-group" style="border: 1px solid #dbdbdb;">								
								<div id="fileIndex">
									<div>
										<input type="file" name="file">
										<button id="fileDel" type="button" style='float:right;'>삭제</button><br>
									</div>
								</div>
							</div>
			          	</div>		  
			       	</div>
			       	<input type="hidden" id="good" name="good" value="0">
			       	<input type="hidden" id="bad" name="bad" value="0">
		        	<div class="row">
			    		<div class="col-auto mr-auto"></div>
						<div class="col-auto">
							<input class="btn btn-primary" type="button" onclick="Write()" value="글쓰기">
							<input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
							<input class="btn btn-primary" type="button" value="목록" onclick="location.href='travelphoto'">
						</div>
					</div>
				</form>
			</div>
		</section>
		
	<jsp:include page="../layout/footer.jsp" />
	</div>
	<!-- 메인 영역 -->
</body>
</html>