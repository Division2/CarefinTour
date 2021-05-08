<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!-- Best추천 상품 이미지에서 js, css링크 사용 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<title>케어핀투어 - 메인 화면</title>
</head>
<body>
	<jsp:include page="layout/header.jsp" />
	<div class="container">
		<!-- 슬라이드 섹션 -->
		<div class="row">
			<div class="col-md-12">
				<div class="carousel slide" id="carousel-979730" style="margin-top:-59px;">
					<ol class="carousel-indicators">
						<li data-slide-to="0" data-target="#carousel-979730" class="active"></li>
						<li data-slide-to="1" data-target="#carousel-979730"></li>
						<li data-slide-to="2" data-target="#carousel-979730"></li>
					</ol>					
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" alt="Carousel Bootstrap First" src='<c:url value="resources/image/banner/MainPic2.png"/>'/>
							<div class="carousel-caption">
								<h4>First Thumbnail label</h4>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" alt="Carousel Bootstrap Second" src="https://www.layoutit.com/img/sports-q-c-1600-500-2.jpg" />
							<div class="carousel-caption">
								<h4>Second Thumbnail label</h4>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" alt="Carousel Bootstrap Third" src='<c:url value="resources/image/banner/MainPic3.png"/>'/>
							<div class="carousel-caption">
								<h4>Third Thumbnail label</h4>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carousel-979730" data-slide="prev"><span class="carousel-control-prev-icon"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel-979730" data-slide="next"><span class="carousel-control-next-icon"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
		<hr>

		<div class="container3">
			<h6 style="color:#30a0d2;"><strong>시즌추천 상품</strong> </h6>
		</div>
		<!-- 이미지 섹션 -->
		<div class="container2">
			<figure class="snip1273" style="margin-right:85px;">
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample72.jpg" alt="sample72" />
				<figcaption>
					<h3>Fletch Skinner</h3>
					<p>I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.</p>
				</figcaption>
				<a href="#"></a>
			</figure>
			<figure class="snip1273" style="margin-right:85px;">
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample21.jpg" alt="sample21" />
				<figcaption>
					<h3>Indigo Violet</h3>
					<p>What's the point of wearing your favorite rocketship underpants if nobody ever asks to see 'em?</p>
				</figcaption>
				<a href="#"></a>
			</figure>
			<figure class="snip1273">
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample86.jpg" alt="sample86" />
				<figcaption>
					<h3>Gunther Beard</h3>
					<p>Given that sooner or later we're all just going to die, what's the point of learning about integers?</p>
				</figcaption>
				<a href="#"></a>
			</figure>		
		</div>
		<hr>
		<br>
		
		<h6 style="margin-top:-25px;color:#30a0d2;"><strong>베스트 추천 상품</strong></h6>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#">
						<img src="https://ktsmemo.cafe24.com/p/0440.jpg">
						<p>낚시</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://oldmidi.cdn3.cafe24.com/p/0258.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://oldmidi.cdn3.cafe24.com/p/0696.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0742.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0128.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0588.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="https://ktsmemo.cafe24.com/p/0542.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<img src="http://oldmidi.cdn3.cafe24.com/p/0398.jpg">
						<p>여행</p>
					</a>
				</div>
			</div>

			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-pagination"></div>
		</div>
		<hr>
		<br>
		<h6 style="margin-top:-25px;color:#30a0d2;"><strong>테마여행</strong></h6>
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<a href="#">
						<img src="https://ktsmemo.cafe24.com/p/0440.jpg">
						<p>낚시</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://oldmidi.cdn3.cafe24.com/p/0258.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://oldmidi.cdn3.cafe24.com/p/0696.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0742.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0128.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="http://ktsmemo.cdn3.cafe24.com/p/0588.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#"> 
						<img src="https://ktsmemo.cafe24.com/p/0542.jpg">
						<p>여행</p>
					</a>
				</div>
				<div class="swiper-slide">
					<a href="#">
						<img src="http://oldmidi.cdn3.cafe24.com/p/0398.jpg">
						<p>여행</p>
					</a>
				</div>
			</div>
			<!-- 네비게이션 -->
			<div class="swiper-button-next"></div>
			<!-- 다음 버튼 (오른쪽에 있는 버튼) -->
			<div class="swiper-button-prev"></div>
			<!-- 이전 버튼 -->

			<!-- 페이징 -->
			<div class="swiper-pagination"></div>
		</div>
	</div>
	
	<!--이미지 출력수 페이징 자바스크립트 파일 -->
	<script src="<c:url value="/resources/js/imgmain.js"/>"></script>

	<jsp:include page="layout/footer.jsp" />
</body>
</html>