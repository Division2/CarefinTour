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
		<jsp:include page="layout/header.jsp"/>
		
		<!-- 여행 검색 -->
		<section class="banner-one" style="background-image: url(<c:url value="/resources/images/backgrounds/mainbanner2.jpg"/>);">
			<div class="container">
				<h2>
					Find your <span>next tour</span>
				</h2>
				<p>Where would you like to go?</p>
				<form class="tour-search-one" action="tour-sidebar.html">
					<div class="tour-search-one__inner">
						<div class="tour-search-one__inputs">
							<div class="tour-search-one__input-box">
								<label for="place">Where to</label>
								<input type="text"placeholder="Enter keywords" name="place" id="place">
							</div>
							<div class="tour-search-one__input-box">
								<label for="when">When</label>
								<input type="text" placeholder="September" name="when" id="when">
							</div>
							<div class="tour-search-one__input-box">
								<label for="type">Type</label> <select class="selectpicker" id="type">
									<option value="Adventure">Adventure</option>
									<option value="Wildlife">Wildlife</option>
									<option value="Sightseeing">Sightseeing</option>
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
					<p>Call our agents to book!</p>
					<h3>
						Tripo Award Winning and Top <br> Rated Tour Operator
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
								8000+ Our Local <br> Guides
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
						<div class="features-one__single">
							<i class=" tripo-icon-reliability"></i>
							<h3>
								100% Trusted Tour <br> Agency
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="200ms">
						<div class="features-one__single">
							<i class=" tripo-icon-user-experience"></i>
							<h3>
								28+ Years of Travel <br> Experience
							</h3>
						</div>
					</div>
					<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="300ms">
						<div class="features-one__single">
							<i class=" tripo-icon-feedback"></i>
							<h3>
								98% Our Travelers <br> are Happy
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
					<p>Featured tours</p>
					<h3>Most Popular Tours</h3>
				</div>
				<!-- /.block-title -->
				<div class="row">
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-1.jpg"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 8.0 Superb
								</div>
								<h3>
									<a href="tour-details.html">National Park 2 Days Tour</a>
								</h3>
								<p>
									<span>$1870</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-2.png"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 8.0 Superb
								</div>
								<h3>
									<a href="tour-details.html">The Dark Forest Adventure</a>
								</h3>
								<p>
									<span>$2600</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-3.png"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 7.0 Superb
								</div>
								<h3>
									<a href="tour-details.html">Discover Depth of Beach</a>
								</h3>
								<p>
									<span>$1399</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-4.png"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 8.8 Superb
								</div>
								<h3>
									<a href="tour-details.html">Moscow Red City Land</a>
								</h3>
								<p>
									<span>$1870</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-5.png"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 8.0 Superb
								</div>
								<h3>
									<a href="tour-details.html">Magic of Italy Tours</a>
								</h3>
								<p>
									<span>$1478</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-4 col-lg-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<img src='<c:url value="/resources/images/tour/tour-1-6.png"/>' alt="">
								<a href="tour-details.html"><i class="fa fa-heart"></i></a>
							</div>
							<div class="tour-one__content">
								<div class="tour-one__stars">
									<i class="fa fa-star"></i> 8.0 Superb
								</div>
								<h3>
									<a href="tour-details.html">Discover Depth of Beach</a>
								</h3>
								<p>
									<span>$1399</span> / Per Person
								</p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-clock"></i> 3 Days</a></li>
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
									<li><a href="tour-details.html"><i class="far fa-map"></i> Los Angeles</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="video-one" style="background-image: url(<c:url value="/resources/images/backgrounds/video-bg-1-1.png"/>);">
			<div class="container text-center">
				<a href="https://www.youtube.com/watch?v=i9E_Blai8vk" class="video-one__btn video-popup"><i class="fa fa-play"></i></a>
				<p>Love where you're going</p>
				<h3>
					<span>Tripo</span> is a World Leading <br> Online
					<span>Tour Booking Platform</span>
				</h3>
			</div>
		</section>
		<!-- 여행 영상 -->
	
		<!-- 여행 리뷰 -->
		<section class="testimonials-one">
			<div class="container">
				<div class="block-title text-center">
					<p>checkout our</p>
					<h3>Top Tour Reviews</h3>
				</div>
				<div class="testimonials-one__carousel thm__owl-carousel light-dots owl-carousel owl-theme" data-options='{"nav": false, "autoplay": true, "autoplayTimeout": 5000, "smartSpeed": 700, "dots": true, "margin": 30, "loop": true, "responsive": { "0": { "items": 1, "nav": true, "navText": ["Prev", "Next"], "dots": false }, "767": { "items": 1, "nav": true, "navText": ["Prev", "Next"], "dots": false }, "991": { "items": 2 }, "1199": { "items": 2 }, "1200": { "items": 3 } }}'>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-1.jpg"/>' alt="">
								<h3>Kevin Smith</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
							<img src='<c:url value="/resources/images/testimonials/testimonials-1-2.jpg"/>' alt="">
								<h3>Christine Eve</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-3.jpg"/>' alt="">
								<h3>Mike Hardson</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-1.jpg"/>' alt="">
								<h3>Kevin Smith</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-2.jpg"/>' alt="">
								<h3>Christine Eve</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-3.jpg"/>' alt="">
								<h3>Mike Hardson</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-1.jpg"/>' alt="">
								<h3>Kevin Smith</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-2.jpg"/>' alt="">
								<h3>Christine Eve</h3>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="testimonials-one__single">
							<div class="testimonials-one__content">
								<div class="testimonials-one__stars">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<p>There are many variations of passages of lorem ipsum but
									the majority have alteration in some form, by randomised words
									look. Aene an commodo ligula eget dolorm sociis.</p>
							</div>
							<div class="testimonials-one__info">
								<img src='<c:url value="/resources/images/testimonials/testimonials-1-3.jpg"/>' alt="">
								<h3>Mike Hardson</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 여행 리뷰 -->
	
		<!-- 여행 포토 -->
		<section class="blog-one">
			<div class="container">
				<div class="block-title text-center">
					<p>Check out Our</p>
					<h3>Latest News &#38; Articles</h3>
				</div>
				<div class="row">
					<div class="col-lg-4 wow fadeInUp" data-wow-duration="1500ms"
						data-wow-delay="000ms">
						<div class="blog-one__single">
							<div class="blog-one__image">
								<img src='<c:url value="/resources/images/blog/blog-1-1.jpg"/>' alt="">
								<a href="news-details.html"><i class="fa fa-long-arrow-alt-right"></i></a>
							</div>
							<div class="blog-one__content">
								<ul class="list-unstyled blog-one__meta">
									<li><a href="news-details.html"><i class="far fa-user-circle"></i> Admin</a></li>
									<li><a href="news-details.html"><i class="far fa-comments"></i> 2 Comments</a></li>
								</ul>
								<h3>
									<a href="news-details.html">14 Things to see and do when visiting japan</a>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-lg-4 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="100ms">
						<div class="blog-one__single">
							<div class="blog-one__image">
								<img src='<c:url value="/resources/images/blog/blog-1-2.jpg"/>' alt="">
								<a href="news-details.html"><i class="fa fa-long-arrow-alt-right"></i></a>
							</div>
							<div class="blog-one__content">
								<ul class="list-unstyled blog-one__meta">
									<li><a href="news-details.html"><i class="far fa-user-circle"></i> Admin</a></li>
									<li><a href="news-details.html"><i class="far fa-comments"></i> 2 Comments</a></li>
								</ul>
								<h3>
									<a href="news-details.html">Journeys are best measured in new friends</a>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-lg-4 wow fadeInUp" data-wow-duration="1500ms" data-wow-delay="200ms">
						<div class="blog-one__single">
							<div class="blog-one__image">
								<img src='<c:url value="/resources/images/blog/blog-1-3.jpg"/>' alt="">
								<a href="news-details.html"><i class="fa fa-long-arrow-alt-right"></i></a>
							</div>
							<div class="blog-one__content">
								<ul class="list-unstyled blog-one__meta">
									<li><a href="news-details.html"><i class="far fa-user-circle"></i> Admin</a></li>
									<li><a href="news-details.html"><i class="far fa-comments"></i> 2 Comments</a></li>
								</ul>
								<h3>
									<a href="news-details.html">Travel the most beautiful places in the world</a>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 여행 포토 -->
		<jsp:include page="layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>