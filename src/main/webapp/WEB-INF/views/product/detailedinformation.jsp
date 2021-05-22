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
    	<jsp:include page="../layout/header.jsp" />     
    	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/hawaii.jpg"/>);">
			<div class="container">
				<h2>상세 정보</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>

		<section class="tour-two tour-list">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="tour-details__content">
							<div class="tour-two__top">
								<div class="tour-two__top-left">
									<h3>Magic of Italy Tours</h3>
									<div class="tour-one__stars">
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star"></i>
										<i class="fa fa-star inactive"></i> 2 Reviews
									</div>
								</div>
								<div class="tour-two__right">
									<p><span>$1478</span> <br> Per Person</p>
								</div>
							</div>
							<ul class="tour-one__meta list-unstyled">
								<li><a href="tour-details.html"><i class="far fa-clock"></i>3 Days</a></li>
								<li><a href="tour-details.html"><i class="far fa-user-circle"></i> 12+</a></li>
								<li><a href="tour-details.html"><i class="far fa-bookmark"></i> Adventure</a></li>
								<li><a href="tour-details.html"><i class="far fa-map"></i>Los Angeles</a></li>
							</ul>
							<div class="tour-details__gallery-carousel">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="tour-details__gallery-image">
											<img src='<c:url value="/resources/assets/images/tour/tour-d-1-1.jpg"/>' alt="">
											<div class="tour-details__gallery-links">
												<a href="#"><i class="fab fa-youtube"></i></a>
												<a href="#"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h3 class="tour-details__title">Overview</h3>
							<p>Lorem ipsum available isn but the majority have suffered
								alteratin in some or form injected. Lorem ipsum is simply free
								text used by copytyping refreshing. Neque porro est qui dolorem
								ipsum quia quaed inventore veritatis et quasi architecto beatae
								vitae dicta sunt explicabo. Lorem ipsum is simply free text used
								by copytyping refreshing. Neque porro est qui dolorem ipsum quia
								quaed inventore veritatis et quasi architecto beatae vitae dicta
								sunt explicabo. Aelltes port lacus quis enim var sed efficitur
								turpis gilla sed sit amet finibus eros.
							</p>
							<h3 class="tour-details__subtitle">Included/Exclude</h3>
							<div class="row">
								<div class="col-md-6">
									<ul class="tour-details__list list-unstyled">
										<li><i class="fa fa-check"></i> Pick and Drop Services</li>
										<li><i class="fa fa-check"></i> 1 Meal Per Day</li>
										<li><i class="fa fa-check"></i> Cruise Dinner &#38; Music Event</li>
										<li><i class="fa fa-check"></i> Visit 7 Best Places in theCity With Group</li>
									</ul>
								</div>
								<div class="col-md-6">
									<ul class="tour-details__list unavailable list-unstyled">
										<li><i class="fa fa-times"></i> Additional Services</li>
										<li><i class="fa fa-times"></i> 1 Meal Per Day</li>
										<li><i class="fa fa-times"></i> Insurance</li>
										<li><i class="fa fa-times"></i> Food &#38; Drinks</li>
									</ul>
								</div>
							</div>
							<div class="tour-details__spacer"></div>
							<h3 class="tour-details__title">Tour Plan</h3>
							<div class="tour-details__plan">
								<div class="tour-details__plan-single">
									<div class="tour-details__plan-count">01</div>
									<div class="tour-details__plan-content">
										<h3>Day 1: Arrive South Africa Forest</h3>
										<span>8:00 am to 10:00 am</span>
										<p>Lorem ipsum available isn but the majority have suffered
											alteratin in some or form injected. Lorem ipsum is simply free
											text used by copytyping refreshing. Neque porro est qui dolorem
											ipsum quia quaed inventore veritatis et quasi dicta sunt
											explicabo.
										</p>
										<ul class="list-unstyled">
											<li>Free Drinks</li>
											<li>Awesome Breakfast</li>
											<li>5 Star Accommodation</li>
										</ul>
									</div>
								</div>
								<div class="tour-details__plan-single">
									<div class="tour-details__plan-count">02</div>
									<div class="tour-details__plan-content">
										<h3>Day 2: Lunch Inside of Forest &#38; Adventure</h3>
										<span>8:00 am to 10:00 am</span>
										<p>Lorem ipsum available isn but the majority have suffered
											alteratin in some or form injected. Lorem ipsum is simply free
											text used by copytyping refreshing. Neque porro est qui dolorem
											ipsum quia quaed inventore veritatis et quasi dicta sunt
											explicabo.
										</p>
										<ul class="list-unstyled">
											<li>Free Drinks</li>
											<li>Awesome Breakfast</li>
											<li>5 Star Accommodation</li>
										</ul>
									</div>
								</div>
								<div class="tour-details__plan-single">
									<div class="tour-details__plan-count">03</div>
									<div class="tour-details__plan-content">
										<h3>Day 3: Depart from South Africa</h3>
										<span>8:00 am to 10:00 am</span>
										<p>Lorem ipsum available isn but the majority have suffered
											alteratin in some or form injected. Lorem ipsum is simply free
											text used by copytyping refreshing. Neque porro est qui dolorem
											ipsum quia quaed inventore veritatis et quasi dicta sunt
											explicabo.
										</p>
										<ul class="list-unstyled">
											<li>Free Drinks</li>
											<li>Awesome Breakfast</li>
											<li>5 Star Accommodation</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="tour-details__spacer"></div>
							<h3 class="tour-details__title">Tour Location</h3>
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4562.753041141002!2d-118.80123790098536!3d34.152323469614075!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80e82469c2162619%3A0xba03efb7998eef6d!2sCostco+Wholesale!5e0!3m2!1sbn!2sbd!4v1562518641290!5m2!1sbn!2sbd" class="google-map__contact google-map__tour-details" allowfullscreen></iframe>
							<div class="tour-details__spacer"></div>
							<h3 class="tour-details__title">FAQs</h3>
							<div class="accrodion-grp" data-grp-name="faq-one-accrodion">
								<div class="accrodion active">
									<div class="accrodion-title">
										<h4>Why are your tours so expensive?</h4>
									</div>
									<div class="accrodion-content">
										<div class="inner">
											<p>There are many variations of passages of available but
												majority have alteration in some by inject humour or random
												words. Lorem ipsum dolor sit amet, error insolens reprimique
												no quo, ea pri verterem phaedr vel ea iisque aliquam.
											</p>
										</div>
									</div>
								</div>
								<div class="accrodion ">
									<div class="accrodion-title">
										<h4>Which payment methods are acceptable?</h4>
									</div>
									<div class="accrodion-content">
										<div class="inner">
											<p>There are many variations of passages of available but
												majority have alteration in some by inject humour or random
												words. Lorem ipsum dolor sit amet, error insolens reprimique
												no quo, ea pri verterem phaedr vel ea iisque aliquam.
											</p>
										</div>
									</div>
								</div>
								<div class="accrodion">
									<div class="accrodion-title">
										<h4>How to book the new tour for 2 persons?</h4>
									</div>
									<div class="accrodion-content">
										<div class="inner">
											<p>There are many variations of passages of available but
												majority have alteration in some by inject humour or random
												words. Lorem ipsum dolor sit amet, error insolens reprimique
												no quo, ea pri verterem phaedr vel ea iisque aliquam.
											</p>
										</div>
									</div>
								</div>
							</div>
							<h3 class="tour-details__title">Reviews Scores</h3>
							<div class="tour-details__review-score">
								<div class="tour-details__review-score-ave">
									<div class="my-auto">
										<h3>7.0</h3>
										<p><i class="fa fa-star"></i> Super</p>
									</div>
								</div>
								<div class="tour-details__review-score__content">
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Services</h3>
											<p>50%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 50%;"></span>
										</div>
									</div>
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Comfort</h3>
											<p>87%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 87%;"></span>
										</div>
									</div>
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Hospitality</h3>
											<p>63%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 63%;"></span>
										</div>
									</div>
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Food</h3>
											<p>34%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 34%;"></span>
										</div>
									</div>
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Location</h3>
											<p>22%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 22%;"></span>
										</div>
									</div>
									<div class="tour-details__review-score__bar">
										<div class="tour-details__review-score__bar-top">
											<h3>Rating</h3>
											<p>70%</p>
										</div>
										<div class="tour-details__review-score__bar-line">
											<span class="wow slideInLeft" data-wow-duration="1500ms" style="width: 70%;"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="tour-details__review-comment">
								<div class="tour-details__review-comment-single">
									<div class="tour-details__review-comment-top">
										<img src='<c:url value="/resources/assets/images/tour/tour-review-1-1.jpg"/>' alt="">
										<h3>Mike Hardson</h3>
										<p>06 Dec, 2019</p>
									</div>
									<div class="tour-details__review-comment-content">
										<h3>Fun Was To Discover This</h3>
										<p>Lorem ipsum is simply free text used by copytyping
											refreshing. Neque porro est qui dolorem ipsum quia quaed
											inventore veritatis et quasi architecto beatae vitae dicta sunt
											explicabo var lla sed sit amet finibus eros.
										</p>
									</div>
									<div class="tour-details__review-form-stars">
										<div class="row">
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="tour-details__review-comment-single">
									<div class="tour-details__review-comment-top">
										<img src='<c:url value="/resources/assets/images/tour/tour-review-1-2.jpg"/>' alt="">
										<h3>Christine Eve</h3>
										<p>06 Dec, 2019</p>
									</div>
									<div class="tour-details__review-comment-content">
										<h3>Fun Was To Discover This</h3>
										<p>Lorem ipsum is simply free text used by copytyping
											refreshing. Neque porro est qui dolorem ipsum quia quaed
											inventore veritatis et quasi architecto beatae vitae dicta sunt
											explicabo var lla sed sit amet finibus eros.
										</p>
									</div>
									<div class="tour-details__review-form-stars">
										<div class="row">
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
											<div class="col-md-4">
												<p>
													<span>Services</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
												<p>
													<span>Comfort</span>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star active"></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
													<i class="fa fa-star "></i>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h3 class="tour-details__title">Write a Review</h3>
							<div class="tour-details__review-form">
								<div class="tour-details__review-form-stars">
									<div class="row">
										<div class="col-md-4">
											<p>
												<span>Services</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
											<p>
												<span>Comfort</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
										</div>
										<div class="col-md-4">
											<p>
												<span>Services</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
											<p>
												<span>Comfort</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
										</div>
										<div class="col-md-4">
											<p>
												<span>Services</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
											<p>
												<span>Comfort</span>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star active"></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
												<i class="fa fa-star "></i>
											</p>
										</div>
									</div>
								</div>
								<form action="inc/sendemail.php" class="contact-one__form">
									<div class="row low-gutters">
										<div class="col-md-6">
											<div class="input-group">
												<input type="text" name="name" placeholder="Your Name">
											</div>
										</div>
										<div class="col-md-6">
											<div class="input-group">
												<input type="text" name="email" placeholder="Email Address">
											</div>
										</div>
										<div class="col-md-12">
											<div class="input-group">
												<input type="text" name="subject" placeholder="Review Title">
											</div>
										</div>
										<div class="col-md-12">
											<div class="input-group">
												<textarea name="message" placeholder="Write Message"></textarea>
											</div>
										</div>
										<div class="col-md-12">
											<div class="input-group">
												<button type="submit" class="thm-btn contact-one__btn">Submit a review</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="tour-sidebar">
							<div class="tour-sidebar__search tour-sidebar__single">
								<h3>Book This Tour</h3>
								<form action="#" class="tour-sidebar__search-form">
									<div class="input-group">
										<input type="text" placeholder="Your Name">
									</div>
									<div class="input-group">
										<input type="text" placeholder="Email Address">
									</div>
									<div class="input-group">
										<input type="text" placeholder="Phone">
									</div>
									<div class="input-group">
										<input type="text" data-provide="datepicker" placeholder="dd/mm/yy">
									</div>
									<div class="input-group">
										<select class="selectpicker">
											<option value="Tickets">Tickets</option>
											<option value="Children">Children</option>
											<option value="Adult">Adult</option>
										</select>
									</div>
									<div class="input-group">
										<textarea placeholder="Message"></textarea>
									</div>
									<div class="input-group">
										<button type="submit" class="thm-btn">Book Now</button>
									</div>
								</form>
							</div>
							<div class="tour-sidebar__organizer">
								<h3>Organized by</h3>
								<div class="tour-sidebar__organizer-content">
									<img src='<c:url value="/resources/assets/images/tour/tour-organizer-1-1.jpg"/>' alt="">
									<p><i class="fa fa-star"></i>8.0 Superb</p>
									<h3>Mike Hardson</h3>
									<span>Member Since 2019</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>