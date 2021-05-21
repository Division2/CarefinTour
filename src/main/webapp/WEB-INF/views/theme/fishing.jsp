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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/hawaii.jpg"/>);">
			<div class="container">
				<h2>낚시</h2>
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
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/tour-1-1.jpg"/>' height=292 width=270 alt=""> <i class="fa fa-heart"></i>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 8.0 별표
										</div>
										<h3><a href="detailInfo">제목</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$1870</span> <br> 인당 가격</p>
									</div>
								</div>
								<div class="tour-two__text">
									<p>내용</p>
								</div>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="detailInfo"><i class="far fa-clock"></i> 여행설정 기간 or 여행 올린 기간</a></li>
									<li><a href="detailInfo"><i class="far fa-user-circle"></i> 12+이상</a></li>
									<li><a href="detailInfo"><i class="far fa-map"></i>위치</a></li>
								</ul>
							</div>
						</div>
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/init.jpg"/>' height=292 width=270 alt="">
									<a href="tour-details.html"><i class="fa fa-heart"></i></a>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 7.0 Superb
										</div>
										<h3><a href="tour-details.html">The Dark Forest Adventure</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$2600</span> <br> Per Person</p>
									</div>
								</div>
								<div class="tour-two__text">
									<p>Lorem ipsum available isn but the majority have suffered alteratin in some or form injected semper fames.</p>
								</div>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
								</ul>
							</div>
						</div>
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/tour-2-3.jpg"/>' alt=""> 
									<a href="tour-details.html"><i class="fa fa-heart"></i></a>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 8.0 Superb
										</div>
										<h3><a href="tour-details.html">Discover Depth of Beach</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$1399</span> <br> Per Person</p>
									</div>
								</div>
								<div class="tour-two__text">
									<p>Lorem ipsum available isn but the majority have suffered alteratin in some or form injected semper fames.</p>
								</div>
								<!-- /.tour-two__text -->
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
								</ul>
							</div>
						</div>
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/tour-2-4.jpg"/>' alt="">
									<a href="tour-details.html"><i class="fa fa-heart"></i></a>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 8.0 Superb
										</div>
										<h3><a href="tour-details.html">Moscow Red City Land</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$2000</span> <br> Per Person</p>
									</div>
								</div>

								<div class="tour-two__text">
									<p>Lorem ipsum available isn but the majority have suffered alteratin in some or form injected semper fames.</p>
								</div>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
								</ul>
							</div>
						</div>
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/tour-2-5.jpg"/>' alt="">
									<a href="tour-details.html"><i class="fa fa-heart"></i></a>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 8.0 Superb
										</div>
										<h3><a href="tour-details.html">Magic of Italy Tours</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$1478</span> <br> Per Person</p>
									</div>
								</div>
								<div class="tour-two__text">
									<p>Lorem ipsum available isn but the majority have suffered alteratin in some or form injected semper fames.</p>
								</div>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
								</ul>
							</div>
						</div>
						<div class="tour-two__single tour-one__single">
							<div class="tour-two__image-wrap">
								<div class="tour-one__image">
									<img src='<c:url value="/resources/images/tour/tour-2-6.jpg"/>' alt="">
									<a href="tour-details.html"><i class="fa fa-heart"></i></a>
								</div>
							</div>
							<div class="tour-one__content">
								<div class="tour-two__top">
									<div class="tour-two__top-left">
										<div class="tour-one__stars">
											<i class="fa fa-star"></i> 8.0 Superb
										</div>
										<h3><a href="tour-details.html">National Park 2 Days Tour</a></h3>
									</div>
									<div class="tour-two__right">
										<p><span>$1870</span> <br> Per Person</p>
									</div>
								</div>
								<div class="tour-two__text">
									<p>Lorem ipsum available isn but the majority have suffered alteratin in some or form injected semper fames.</p>
								</div>
								<!-- /.tour-two__text -->
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
								</ul>
							</div>
						</div>
						<div class="post-pagination">
							<a href="#"><i class="fa fa-angle-left"></i></a> <a
								class="active" href="#">01</a> <a href="#">02</a> <a href="#">03</a>
							<a href="#"><i class="fa fa-angle-right"></i></a>
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
							<div class="tour-sidebar__sorter-wrap">
								<div class="tour-sidebar__sorter-single">
									<div class="tour-sidebar__sorter-top">
										<h3>Price</h3>
										<button class="tour-sidebar__sorter-toggler"><i class="fa fa-angle-down"></i></button>
									</div>
									<div class="tour-sidebar__sorter-content">
										<div class="tour-sidebar__price-range">
											<div class="form-group">
												<p>$<span id="min-value-rangeslider"></span></p>
												<p>$<span id="max-value-rangeslider"></span></p>
											</div>
											<div class="range-slider-price" id="range-slider-price"></div>
										</div>
									</div>
								</div>
								<div class="tour-sidebar__sorter-single">
									<div class="tour-sidebar__sorter-top">
										<h3>Review Score</h3>
										<button class="tour-sidebar__sorter-toggler"><i class="fa fa-angle-down"></i></button>
									</div>
									<div class="tour-sidebar__sorter-content">
										<div class="tour-sidebar__sorter-inputs">
											<p>
												<input type="checkbox" id="review-5" name="radio-group">
												<label for="review-5">
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
												</label>
											</p>
											<p>
												<input type="checkbox" id="review-4" name="radio-group">
												<label for="review-4">
												<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star"></i>
												</label>
											</p>
											<p>
												<input type="checkbox" id="review-3" name="radio-group">
												<label for="review-3">
												<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</label>
											</p>
											<p>
												<input type="checkbox" id="review-2" name="radio-group">
												<label for="review-2">
												<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</label>
											</p>
											<p>
												<input type="checkbox" id="review-1" name="radio-group">
												<label for="review-1">
												<i class="fa fa-star active"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</label>
											</p>
										</div>
									</div>
								</div>
								<div class="tour-sidebar__sorter-single">
									<div class="tour-sidebar__sorter-top">
										<h3>Categories</h3>
										<button class="tour-sidebar__sorter-toggler"><i class="fa fa-angle-down"></i></button>
									</div>
									<div class="tour-sidebar__sorter-content">
										<div class="tour-sidebar__sorter-inputs">
											<p>
												<input type="checkbox" id="cat-5" name="radio-group">
												<label for="cat-5"> City Tours </label>
											</p>
											<p>
												<input type="checkbox" id="cat-4" name="radio-group">
												<label for="cat-4">HostedTours </label>
											</p>
											<p>
												<input type="checkbox" id="cat-3" name="radio-group">
												<label for="cat-3">Adventure Tours </label>
											</p>
											<p>
												<input type="checkbox" id="cat-2" name="radio-group">
												<label for="cat-2">Group Tours </label>
											</p>
											<p>
												<input type="checkbox" id="cat-1" name="radio-group">
												<label for="cat-1"> Couple Tours </label>
											</p>
										</div>
									</div>
								</div>
								<div class="tour-sidebar__sorter-single">
									<div class="tour-sidebar__sorter-top">
										<h3>Duration</h3>
										<button class="tour-sidebar__sorter-toggler"><i class="fa fa-angle-down"></i></button>
									</div>
									<div class="tour-sidebar__sorter-content">
										<div class="tour-sidebar__sorter-inputs">
											<p>
												<input type="checkbox" id="duration-5" name="radio-group">
												<label for="duration-5"> 0 - 24 hours </label>
											</p>
											<p>
												<input type="checkbox" id="duration-4" name="radio-group">
												<label for="duration-4">1 - 2 days </label>
											</p>
											<p>
												<input type="checkbox" id="duration-3" name="radio-group">
												<label for="duration-3">2 - 3 days </label>
											</p>
											<p>
												<input type="checkbox" id="duration-2" name="radio-group">
												<label for="duration-2">4 - 5 days </label>
											</p>
											<p>
												<input type="checkbox" id="duration-1" name="radio-group">
												<label for="duration-1"> 5 - 10 days </label>
											</p>
										</div>
									</div>
								</div>
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