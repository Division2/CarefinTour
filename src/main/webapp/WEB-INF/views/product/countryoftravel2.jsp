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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d6c0ae7305fb9210dc71640a373972b"></script>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/tai.png"/>);">
			<div class="container">
				<h2>대만/동남아/서남아</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>
		
		<!-- 상품 & 사이드바 -->
		<section class="tour-two tour-list">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="tour-sorter-one"></div>
							<c:forEach var="plist2" items="${plist2}">
								<div class="tour-two__single tour-one__single">
									<div class="tour-two__image-wrap">
										<div class="tour-one__image">
											<img src='<c:url value="/resources/images/product_package/${plist2.getS_file_name()}"/>' height=292 width=270 alt=""> 
											<a><i class="fa fa-heart"></i></a>
										</div>
									</div>
									<div class="tour-one__content">
										<div class="tour-two__top">
											<div class="tour-two__top-left">
												<h3><a href="detailInfo?PID=${plist.getPid()}">${plist2.getProductname()}</a></h3>
											</div>
											<div class="tour-two__right">
												<p><span>${plist2.getAdultprice()}$</span> <br> 인당 가격</p>
											</div>
										</div>
										<div class="tour-two__text">
											<p>${plist2.getOverview()}</p>
										</div>
										<ul class="tour-one__meta list-unstyled">
											<li><a href="detailInfo?PID=${plist.getPid()}"><i class="far fa-clock"></i>${plist2.getStartravelperiod()}~${plist2.getArrivaltravelperiod()}</a></li>
											<li><a href="detailInfo?PID=${plist.getPid()}"><i class="far fa-user-circle"></i> ${plist2.getMinreservation()}+이상</a></li>
											<li><a href="detailInfo?PID=${plist.getPid()}"><i class="far fa-map"></i>${plist2.getTheme()}</a></li>
										</ul>
									</div>
								</div>
							</c:forEach>
						<div class="post-pagination">
							<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
							<c:choose>
								<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
									<a class="disabledLink" href="countrytravel2?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
								</c:when>
								<c:otherwise>
									<a class="page-link" href="countrytravel2?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
								</c:otherwise>
							</c:choose>
							<!-- 페이지 갯수만큼 버튼 생성 -->
							<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
								<c:choose>
									<c:when test="${i eq Paging.pageNo }">
										<a class="active" href="countrytravel2?page=${i}"><c:out value="${i }"/></a>
									</c:when>
									<c:otherwise>
										<a href="countrytravel2?page=${i}"><c:out value="${i }"/></a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
							<c:choose>
								<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
									<a class="disabledLink" href="countrytravel2?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
								</c:when>
								<c:otherwise>
									<a href="countrytravel2?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="tour-sidebar">
							<div class="tour-sidebar__search tour-sidebar__single">
								<h3>여행 찾기</h3>
								<form action="#" class="tour-sidebar__search-form">
									<div class="input-group">
										<input type="text" placeholder="목적지">
									</div>
									<div class="input-group">
										<input type="text" data-provide="datepicker" placeholder="기간">
									</div>
									<div class="input-group">
										<select class="selectpicker">
											<option value="Type">허니문</option>
											<option value="Adventure">골프</option>
											<option value="Wildlife">낚시</option>
											<option value="Sightseeing">패키지</option>
										</select>
									</div>
									<div class="input-group">
										<button type="submit" class="thm-btn">검색</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 상품 & 사이드바 -->
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>