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
<script>
function cal() {
	var num = (new Function ('return '+ document.calcul.num.value))();   // eval 보안 취약점으로  대체
	var num2 = eval(document.calcul.num2.value);
	var num3 = eval(document.calcul.num3.value);

	var adult = document.getElementById("adult").innerText;
	var kid = document.getElementById("kid").innerText;
	var baby = document.getElementById("baby").innerText;
	
	
	adult = parseInt(adult);
	kid = parseInt(kid);
	baby = parseInt(baby);
	
	document.calcul.payment.value = num* adult + num2 *kid + num3*baby;
	
	
	
	
}
function cal2(){
	if(document.calcul.payment.value == 0) {
		swal({
			title: "인원설정",
			text: "인원이 체크되지 않았습니다",
			icon: "warning",
			timer: 3000
		});
		return false;
	}
		$("#calcul").submit();
}
	
</script>
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
									<h3>${pdtail.getProductname()}</h3>
									<div class="tour-one__stars"></div>
								</div>
								<div class="tour-two__right">
									<p><span>${pdtail.getAdultprice()}</span> <br> Per Person</p>
								</div>
							</div>
							<ul class="tour-one__meta list-unstyled">
								<li><a href="tour-details.html"><i class="far fa-clock"></i>${pdtail.getStartravelperiod()}~${pdtail.getArrivaltravelperiod()}</a></li>
								<li><a href="tour-details.html"><i class="far fa-user-circle"></i>${pdtail.getMinreservation()}</a></li>
								<li><a href="tour-details.html"><i class="far fa-bookmark"></i>${pdtail.getHit()}</a></li>
								<li><a href="tour-details.html"><i class="far fa-map"></i>${pdtail.getArea()}</a></li>
							</ul>
							<div class="tour-details__gallery-carousel">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div class="tour-details__gallery-image">
											<img src='<c:url value="/resources/images/product_package/${pdtail.getS_file_name()}"/>' alt="">
											<div class="tour-details__gallery-links">
												<a href="#"><i class="fab fa-youtube"></i></a>
												<a href="#"><i class="fa fa-heart"></i></a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<h3 class="tour-details__title">여행 설명</h3>
							<p>
							${pdtail.getOverview()}
							</p>
							<h3 class="tour-details__subtitle">여행 준비물</h3>
							<div class="row">
								<div class="col-md-6">
									<ul class="tour-details__list list-unstyled">
										<li><i class="fa fa-check"></i> ${pdtail.getSupplies()}</li>
									</ul>
								</div>
							</div>
							<div class="tour-details__spacer"></div>
							<h3 class="tour-details__title">여행 일정</h3>
							<div class="tour-details__plan">
								<div class="tour-details__plan-single">
									<div class="tour-details__plan-content">
										<p>
										${pdtail.getTravelplan()}
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
							<div class="tour-details__spacer"></div>

							<div class="tour-details__review-comment">
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="tour-sidebar">
							<div class="tour-sidebar__search tour-sidebar__single">
								<h3><strong>예약하기</strong></h3>
								<form action="detailResvationAdd" id="calcul" name="calcul" class="tour-sidebar__search-form" method="POST">
									<input type="hidden" value="${pdtail.getPid()}" id="pId" name="pId"></input>
									<input type="hidden" value="${pdtail.getProductname()}" id="productname" name="productname"></input>
									<input type="hidden" value="${pdtail.getStartravelperiod()}" id="startdate" name="startdate"></input>
									<input type="hidden" value="${member.getName()}" id="name" name ="name"></input>
									<input type="hidden" value="${member.getUserID()}" id="id" name="id"></input>
									<input type="hidden" value="${member.getPhone()}" id="phonenum" name="phonenum"></input>
									<div class="input-group">
									어른 가격 : <p id ="adult">${pdtail.getAdultprice()}</p>
									<select class="selectpicker" id="num" onchange="cal()">
											<option value=0>0</option>
											<option value=1>1</option>
											<option value=2>2</option>
											<option value=3>3</option>
											<option value=4>4</option>
											<option value=5>5</option>
											<option value=6>6</option>
											<option value=7>7</option>
											<option value=8>8</option>
										</select>
									</div>
									<div class="input-group">
									아이 가격 :<p id="kid">${pdtail.getKidprice()}</p>
										<select class="selectpicker" id="num2" onchange="cal()">
											<option value=0>0</option>
											<option value=1>1</option>
											<option value=2>2</option>
											<option value=3>3</option>
											<option value=4>4</option>
											<option value=5>5</option>
											<option value=6>6</option>
											<option value=7>7</option>
											<option value=8>8</option>
										</select>
									</div>
									<div class="input-group">
									애기 가격 :<p id = "baby">${pdtail.getSmallkidprice()}</p>
										<select class="selectpicker" id="num3" onchange="cal()">
											<option value=0>0</option>
											<option value=1>1</option>
											<option value=2>2</option>
											<option value=3>3</option>
											<option value=4>4</option>
											<option value=5>5</option>
											<option value=6>6</option>
											<option value=7>7</option>
											<option value=8>8</option>
										</select>
									</div>
									<div class="input-group">
									<p style="color:red;">총 금액</p>
										<input type="text" id="payment" name="payment" style="color:red;"readonly></input>
									</div>
									<div class="input-group">
										<button type="button" class="thm-btn" onclick="cal2()">예약하기</button>
									</div>
								</form>
								<br>
									
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