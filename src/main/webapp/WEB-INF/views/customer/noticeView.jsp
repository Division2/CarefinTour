<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<script src='<c:url value="resources/js/Board.js"/>'></script>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>공지사항</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="notice">공지사항</a></li>
					<li><a href="inquiry">1:1문의</a></li>
					<li><a href="support">자주찾는질문</a></li>
				</ul>
			</div>
		</section>

		<section class="tour-one">
			<div class="container">
				<h1>공지사항</h1>
				<hr>
				<div class="blog-details__content">
					<ul class="list-unstyled blog-one__meta">
						<li><a href="#"><i class="far fa-user-circle"></i> 케어핀투어</a></li>
						<li class="ml-auto"><a href="#"><i class="far fa-clock"></i> ${content.reDate }</a></li>
					</ul>
					<h3 id="title"><c:out escapeXml="false" value="${content.title }"/></h3>
					<br>
					<p><c:out escapeXml="false" value="${fn:replace(content.content, crlf, '<br>')}"/></p>
				</div>
				<div class="row mt-3">
					<div class="col-auto mr-auto"></div>
					<div class="col-auto">
					<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() eq 'Admin'}">
						<button type="button" class="thm-btn-psd" onclick="location.href='noticeModifyView?nId=<%=request.getParameter("nId")%>'">수정</button>
						<button type="button" class="thm-btn-psd" onclick="NoticeDelete()">삭제</button>
					</c:if>
						<button type="button" class="thm-btn-psd" onclick="location.href='notice'">목록</button>
					</div>
				</div>
			</div>
		</section>
	
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>