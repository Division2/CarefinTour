<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- Plugin Script -->
	<link href="https://fonts.googleapis.com/css?family=Barlow+Condensed:200,300,400,400i,500,600,700,800,900%7CSatisfy&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href='<c:url value="/resources/css/animate.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/owl.carousel.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/owl.theme.default.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/magnific-popup.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/fontawesome-all.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/swiper.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap-select.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/tripo-icons.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/jquery.mCustomScrollbar.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/bootstrap-datepicker.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/vegas.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/nouislider.min.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/nouislider.pips.css"/>'>
	
	<!-- Template Styles -->
	<link rel="stylesheet" href='<c:url value="/resources/css/style.css"/>'>
	<link rel="stylesheet" href='<c:url value="/resources/css/responsive.css"/>'><link rel="stylesheet">
	
	<!-- TwayAir Font -->
	<style>
		@font-face {
		    font-family: 'twayfly';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayfly.woff') format('woff');
		    font-weight: normal;
		    font-style: normal;
		}
		#twayFont{ font-family: 'twayfly'; } 
	</style>
	
	<!-- 상단 헤더 -->
	<div class="site-header__header-one-wrap">
		<div class="topbar-one">
			<div class="container-fluid">
				<div class="topbar-one__left"></div>
				<div class="topbar-one__right">
					<div class="topbar-one__social"></div>
					<a class="topbar-one__guide-btn"></a>
				</div>
			</div>
		</div>
		<header class="main-nav__header-one ">
			<nav class="header-navigation stricky">
				<div class="container">
					<div class="main-nav__logo-box">
						<a href="main" class="main-nav__logo">
							<img src='<c:url value="/resources/images/Logo.png"/>' class="main-logo" width="100" height="auto" alt="Awesome Image" />
						</a>
						<a href="#" class="side-menu__toggler"><i class="fa fa-bars"></i></a>
					</div>
					<div class="main-nav__main-navigation">
						<ul class=" main-nav__navigation-box">
							<li class="current">
								<a href="main" id="twayFont">홈</a>
							</li>
							<li class="dropdown"><a href="countrytravel1" id="twayFont">해외여행</a>
								<ul>
									<li><a href="countrytravel1" id="twayFont">미주/중남미/하와이</a></li>
									<li><a href="countrytravel2" id="twayFont">대만/동남아/서남아</a></li>
									<li><a href="countrytravel3" id="twayFont">중국/홍콩/러시아</a></li>
									<li><a href="countrytravel4" id="twayFont">유럽/아프리카</a></li>
									<li><a href="countrytravel5" id="twayFont">일본</a></li>
								</ul>
							</li>
							<li class="dropdown"><a href="fishing" id="twayFont">테마여행</a>
								<ul>
									<li><a href="fishing" id="twayFont">낚시</a></li>
									<li><a href="golf" id="twayFont">골프</a></li>
									<li><a href="honeymoon" id="twayFont">허니문</a></li>
								</ul>
							</li>
							<li class="dropdown"><a href="hotelreservation" id="twayFont">호텔검색</a>
								<ul>
									<li><a href="hotelreservation" id="twayFont">국내호텔</a></li>
								</ul>
							</li>
							<li class="dropdown"><a href="weatherinfo" id="twayFont">여행정보</a>
								<ul>
									<li><a href="weatherinfo" id="twayFont">날씨</a></li>
									<li><a href="exchangeinfo" id="twayFont">환율</a></li>
									<li><a href="timedifferenceinfo" id="twayFont">시차</a></li>
									<li><a href="visainfo" id="twayFont">비자정보</a></li>
									<li><a href="supplies" id="twayFont">여행준비물</a></li>
								</ul>
							</li>
							<li class="dropdown"><a href="topangler" id="twayFont">여행후기</a>
								<ul>
									<li><a href="topangler" id="twayFont">탑앵글러</a></li>
									<li><a href="travelphoto" id="twayFont">여행포토</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="main-nav__right">
						<a href="#" class="main-nav__search search-popup__toggler"><i class="tripo-icon-magnifying-glass"></i></a>
						<div class="main-nav__main-navigation">
							<ul class=" main-nav__navigation-box">
								<li class="dropdown">
								<c:if test="${member == null }">
									<a href="#" class="main-nav__login" data-toggle="modal" data-target="#loginModal"><i class="tripo-icon-avatar"></i></a>
									<ul>
										<li><a href="#" id="twayFont" data-toggle="modal" data-target="#loginModal">로그인</a></li>
										<li><a href="#" id="twayFont" data-toggle="modal" data-target="#registerModal">회원가입</a></li>
										<li><a href="#" id="twayFont" data-toggle="modal" data-target="#ReservationModal">예약확인</a></li>
										<li><a href="support" id="twayFont">고객센터</a></li>
									</ul>
								</c:if>
								<c:if test="${member != null }">
									<a href="#" class="main-nav__login"><i class="tripo-icon-avatar"></i></a>
									<ul>
										<li><a href="logout" id="twayFont">로그아웃</a></li>
										<li><a href="mypage" id="twayFont">마이페이지</a></li>
										<li><a href="admin/main" id="twayFont">관리자페이지</a></li>
										<li><a href="support" id="twayFont">고객센터</a></li>
									</ul>
								</c:if>
								</li>
							</ul>
						</div>
						<select name="currency" id="currency" class="selectpicker">
							<option value="USD">USD</option>
							<option value="GBP">GBP</option>
							<option value="AUD">AUD</option>
						</select>
						<select name="languages" id="languages" class="selectpicker">
							<option value="ENG">ENG</option>
							<option value="BN">BN</option>
							<option value="RUS">RUS</option>
						</select>
					</div>
				</div>
			</nav>
		</header>
	</div>
	<!-- 상단 헤더 -->