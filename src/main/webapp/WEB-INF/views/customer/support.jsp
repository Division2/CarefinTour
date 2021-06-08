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
	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>자주 찾는 질문</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="notice">공지사항</a></li>
					<li><a href="inquiry">1:1문의</a></li>
					<li><a href="support">자주찾는질문</a></li>
				</ul>
			</div>
		</section>

		<section class="faq-one">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="accrodion-grp" data-grp-name="faq-one-accrodion">
						<c:choose>
							<c:when test="${param.category eq null }">
								<c:forEach items="${faqAllList}" var="List">
								<div class="accrodion">
									<div class="accrodion-title">
									<h4><c:out escapeXml="false" value="${List.getTitle()}"/></h4>
									</div>
									<div class="accrodion-content">
										<div class="inner">
											<p><c:out escapeXml="false" value="${List.getContent()}"/></p>
										</div>
									</div>
								</div>
								</c:forEach>
							</c:when>
							<c:when test="${param.category ne null }">
								<c:forEach items="${faqOtherList}" var="List">
								<div class="accrodion">
									<div class="accrodion-title">
									<h4><c:out escapeXml="false" value="${List.getTitle()}"/></h4>
									</div>
									<div class="accrodion-content">
										<div class="inner">
											<p><c:out escapeXml="false" value="${List.getContent()}"/></p>
										</div>
									</div>
								</div>
								</c:forEach>
							</c:when>
						</c:choose>
						</div>
					</div>
					<div class="col-lg-4">
						<jsp:include page="sidesupport.jsp"/>
						<div class="sidebar">
							<div class="offer-sidebar wow fadeInUp" data-wow-duration="1500ms" style="background-image: url(<c:url value="/resources/images/backgrounds/offer-sidebar-bg.jpg"/>);">
								<h3>
									<span class="offer-sidebar__price">20%</span>Off <br> On <span>Paris <br> Tour</span>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<c:choose>
				<c:when test="${param.category ne null }">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<a class="disabledLink" href="supportOther?category=${param.category }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a href="supportOther?category=${param.category }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active disabledLink" href="supportOther?category=${param.category }&page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="supportOther?category=${param.category }&page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="supportOther?category=${param.category }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="supportOther?category=${param.category }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<a class="disabledLink" href="support?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a class="page-link" href="support?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active disabledLink" href="support?page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="support?page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="support?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="support?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</div>
		<br>

		<jsp:include page="../layout/footer.jsp" />
	</div>
	<!-- 메인 영역 -->
</body>
</html>