<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
	//현재시간 구해서 String으로 formating
	LocalDateTime nowTime = LocalDateTime.now();
	
	DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	DateTimeFormatter dateTimeFormatter2 = DateTimeFormatter.ofPattern("yyyy-MM");
	String now = nowTime.format(dateTimeFormatter);
	String beginMonth = nowTime.format(dateTimeFormatter2);
%>
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
		<jsp:include page="layout/header.jsp"/>
		
		<!-- 여행 검색 -->
		<section class="banner-one" style="background-image: url(<c:url value="/resources/images/backgrounds/mainbanner2.jpg"/>);">
			<div class="container">
				<h2>
					Carefin <span>Tour</span>
				</h2>
				<p>여행지를 선택 해보세요</p>
				<form class="tour-search-one" action="travelSearch">
					<div class="tour-search-one__inner">
						<div class="tour-search-one__inputs">
							<div class="tour-search-one__input-box">
								<label for="place">여행지</label>
								<select class="selectpicker" id="searchArea" name="searchArea">
									<option value="미주/중남미/하와이">미주/중남미/하와이</option>
									<option value="대만/동남아/서남아">대만/동남아/서남아</option>
									<option value="중국/홍콩/러시아">중국/홍콩/러시아</option>
									<option value="유럽/아프리카">유럽/아프리카</option>
									<option value="일본">일본</option>
								</select>
							</div>
							<div class="tour-search-one__input-box">
								<label for="when">여행시작일</label>
								<input type="date" class="form-control" value="<%=beginMonth %>" id="searchStartDate" name="searchStartDate" placeholder="여행출발일" >
							</div>
							<div class="tour-search-one__input-box">
								<label for="type">여행 테마</label> <select class="selectpicker" id="searchTheme" name="searchTheme">
									<option value="낚시">낚시</option>
									<option value="허니문">허니문</option>
									<option value="골프">골프</option>
									<option value="해외">해외</option>
								</select>
							</div>
						</div>
						<div class="tour-search-one__btn-wrap">
							<button type="submit" class="thm-btn tour-search-one__btn">검색</button>
						</div>
					</div>
				</form>
			</div>
		</section>
		<!-- 여행 검색 -->
		
		<!-- 간단한 회사 소개 및 연혁 -->
		<section class="features-one__title">
			<div class="container">
				<div class="block-title text-center">
					<p>높은 퀄리티에 만족도 높은 여행!</p>
					<h3>
						업계최고 여행사 <br> 원하시는 여행패키지를 골라보세요!
					</h3>
				</div>
			</div>
		</section>
		<!-- 간단한 회사 소개 및 연혁 -->
	
		<!-- 패키지 목록 -->
		<section class="features-one__content">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="000ms">
						<div class="features-one__single">
							<i class=" tripo-icon-tour-guide"></i>
							<h3>
								8000명 이상에 현지 가이드 
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
						<div class="features-one__single">
							<i class=" tripo-icon-reliability"></i>
							<h3>
								100% 믿을수 있는 여행사
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="200ms">
						<div class="features-one__single">
							<i class=" tripo-icon-user-experience"></i>
							<h3>
								오래된 경험에서 나온 여행사 
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="300ms">
						<div class="features-one__single">
							<i class=" tripo-icon-feedback"></i>
							<h3>
								98%이상에 만족도 
							</h3>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 패키지 목록 -->
	
		<!-- 여행 영상 -->
		<section class="tour-one">
			<div class="container">
				<div class="block-title text-center">
					<p>패키지 여행</p>
					<h3>추천하는 패키지 여행</h3>
				</div>
				<!-- /.block-title -->
				<div class="row">
				<c:forEach items="${UsaPackageViewList }" var="UsaPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${UsaPackageViewList.s_file_name }"/>' alt="" >
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">			
								<h3>
									<a href="detailInfo?PID=${UsaPackageViewList.pid}">${UsaPackageViewList.productname}</a>
								</h3>
								<p>
									<span>${UsaPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock"> 2박3일 </i></li>
									<li><i class="far fa-user-circle"><c:out value="${UsaPackageViewList.hit}"/></i> </li>
									<li><i class="far fa-map"> ${UsaPackageViewList.area}</i> </li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
					<c:forEach items="${ChinaPackageViewList }" var="ChinaPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${ChinaPackageViewList.s_file_name }"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<h3>
									<a href="detailInfoPID=${ChinaPackageViewList.pid}">${ChinaPackageViewList.productname }</a>
								</h3>
								<p>
									<span>${ChinaPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock"> 3박 4일</i></li>
									<li><i class="far fa-user-circle"><c:out value="${ChinaPackageViewList.hit}"/></i></li>
									<li><i class="far fa-map"> ${ChinaPackageViewList.area}</i></li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
					<c:forEach items="${MylPackageViewList }" var="MylPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${MylPackageViewList.s_file_name }"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<h3>
									<a href="detailInfoPID=${MylPackageViewList.pid}">${MylPackageViewList.productname }</a>
								</h3>
								<p>
									<span>${MylPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock">4박 5일</i></li>
									<li><i class="far fa-user-circle"><c:out value="${MylPackageViewList.hit}"/></i></li>
									<li><i class="far fa-map">${MylPackageViewList.area}</i></li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
					<c:forEach items="${JapanPackageViewList }" var="JapanPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${JapanPackageViewList.s_file_name }"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<h3>
									<a href="detailInfoPID=${JapanPackageViewList.pid}">${JapanPackageViewList.productname }</a>
								</h3>
								<p>
									<span>${JapanPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock">2박 3일</i></li>
									<li><i class="far fa-user-circle"><c:out value="${JapanPackageViewList.hit}"/></i></li>
									<li><i class="far fa-map">${JapanPackageViewList.area}</i></li>
								</ul>
							</div>
						</div>
					</div>
				</c:forEach>
				<c:forEach items="${SurfingPackageViewList }" var="SurfingPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${SurfingPackageViewList.s_file_name }"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								
								<h3>
									<a href="detailInfoPID=${SurfingPackageViewList.pid}">${SurfingPackageViewList.productname }</a>
								</h3>
								<p>
									<span>${SurfingPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock"> 6박 7일</i></li>
									<li><i class="far fa-user-circle"> <c:out value="${SurfingPackageViewList.hit}"/></i></li>
									<li><i class="far fa-map"> ${SurfingPackageViewList.area}</i></li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
					<c:forEach items="${EuPackageViewList }" var="EuPackageViewList">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/${EuPackageViewList.s_file_name }"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<h3>
									<a href="detailInfoPID=${EuPackageViewList.pid}">${EuPackageViewList.productname }</a>
								</h3>
								<p>
									<span>${EuPackageViewList.adultprice }~</span> / 1인 기준
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><i class="far fa-clock"> 6박 7일</i></li>
									<li><i class="far fa-user-circle"> ${EuPackageViewList.hit }</i></li>
									<li><i class="far fa-map">${EuPackageViewList.area }</i></li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
				
			</div>
			
		</section>
		<section class="video-one" style="background-image: url(<c:url value="/resources/images/backgrounds/video-bg-1-1.png"/>);">
			<div class="container text-center">
				<a href="https://www.youtube.com/watch?v=i9E_Blai8vk" class="video-one__btn video-popup"><i class="fa fa-play"></i></a>
				<p>Love where you're going</p>
				<h3>
					<span>케어핀투어</span>는 세계적인  <br> 
					<span>낚시 전문 여행사 입니다.</span>
				</h3>
			</div>
		</section>
		<!-- 여행 영상 -->
	
		<!-- 여행 리뷰 -->
		<section class="testimonials-one">
			<div class="container">
				<div class="block-title text-center">
					<p>여행 리뷰</p>
					<h3>소중한 여행 리뷰</h3>
				</div>
				<div class="testimonials-one__carousel thm__owl-carousel light-dots owl-carousel owl-theme" data-options='{"nav": false, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 700, "dots": true, "margin": 30, "loop": true, "responsive": { "0": { "items": 1, "nav": true, "navText": ["Prev", "Next"], "dots": false }, "767": { "items": 1, "nav": true, "navText": ["Prev", "Next"], "dots": false }, "991": { "items": 2 }, "1199": { "items": 2 }, "1200": { "items": 3 } }}'>
				<c:forEach items="${LineReview }" var="LineReview">
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">								
								<p>${LineReview.content }</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/7.png"/>' alt="">
								<h3>${LineReview.userId }</h3>
							</div>
						</div>
					</div>
							</c:forEach>
				</div>
			</div>
		</section>
		<!-- 여행 리뷰 -->
	
		<!-- 여행 포토 -->
		<section class="blog-one">
			<div class="container">
				<div class="block-title text-center">
					<p>TRAVEL PHOTO REVIEW</p>
					<h3>최신 인기 여행 사진</h3>
				</div>
				<div class="row">
					<c:forEach items="${NewTravelPhotoList }" var="NewTravelPhotoList">
					<div class="col-lg-4 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="000ms">
						<div class="blog-one__single">
							<div class="blog-one__image">
								<c:choose>
									<c:when test="${NewTravelPhotoList.s_file_name eq null}">
										<img src='<c:url value="/resources/images/noImage.png"/>' width="200" height="200">
									</c:when>
									<c:otherwise>
										<img src='<c:url value="/resources/images/TravelPhotoReview/${NewTravelPhotoList.s_file_name}"/>' alt="" width="200" height="200">
									</c:otherwise>
								</c:choose>
								<a href="travelphotoView?prid=${NewTravelPhotoList.prid}"><i class="fa fa-long-arrow-alt-right"></i></a>
							</div>
							<div class="blog-one__content">
								<ul class="list-unstyled blog-one__meta">
									<li><a href="travelphotoView?prid=${NewTravelPhotoList.prid}"><i class="far fa-user-circle"></i>${NewTravelPhotoList.userId }</a></li>
									<li><a href="travelphotoView?prid=${NewTravelPhotoList.prid}"><i class="far fa-eye"></i><c:out value="${NewTravelPhotoList.hit}" /></a></li>
								</ul>
								<h3>
									<a href="travelphotoView?prid=${NewTravelPhotoList.prid}">${NewTravelPhotoList.content }</a>
								</h3>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!-- 여행 포토 -->
		<jsp:include page="layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>