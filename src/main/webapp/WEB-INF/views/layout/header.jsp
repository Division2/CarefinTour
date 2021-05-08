<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href='<c:url value="/resources/css/header.css"/>' rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="resources/js/Member.js"/>'></script>
<%
	//현재시간 구해서 String으로 formating
	LocalDateTime nowTime = LocalDateTime.now();
	DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
	String now = nowTime.format(dateTimeFormatter);   
%>
<header>
	<!-- 최상단 헤더 -->
	<div class="container">
		<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-white navbar-fixed-top">
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<div class="mr-auto">
					<a href="main">
						<img src='<c:url value="/resources/image/MainLogo.png"/>' width="135" height="135" style="float:left;">
					</a>
				</div>
				<div class="row" style="min-width:500px; margin-left:-300px; margin-right:-200px;">
					<input class="form-control" type="text" style="float:left;margin-top:50px;width:880px;"/>&nbsp&nbsp&nbsp
					<button class="btn btn-primary" type="submit" style="background:white;color:black;border:solid 1px #E2E2E2;margin-top:50px;"><b style="color:#30a0d2;"><strong>search</strong></b></button>
					</div>
				<div class="row" style="min-width:500px; margin-left:-300px;">	
					<ul class="navbar-nav ml-auto" style="font-size:12px; margin-top:-50px;">
					<c:if test="${member == null }">
						<li class="nav-item">
							<a class="nav-link text-primary" href="#" data-toggle="modal" data-target="#loginModal">로그인</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-primary" href="#" data-toggle="modal" data-target="#registerModal">회원가입</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-primary" href="#" data-toggle="modal" data-target="#ReservationModal">예약확인</a>
						</li>
					</c:if>
					<c:if test="${member != null }">
						<li class="nav-item">
							<a class="nav-link text-primary" href="/ex/logout">로그아웃</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-primary" href="/ex/mypage">마이페이지</a>
						</li>
					</c:if>
						<li class="nav-item">
							<a class="nav-link text-primary" href="support">고객센터</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		</div>
		<!-- 버튼 헤더 -->
		<div class="container">
		<nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-light navbar-fixed-top" style="height:70px;">
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mob-navbar" aria-label="Toggle">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav" style="margin-left: auto; margin-right: auto;">
						<li class="nav-item active dropdown has-megamenu">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
								<img src='<c:url value="/resources/image/button/All.png"/>' width="150" height="75" style="margin-left:15px; margin-right:40px;">
							</a>
							<div class="dropdown-menu megamenu" role="menu">
								<div class="row g-3">
									<div class="col-lg-3 col-6">
										<div class="col-megamenu">
											<h4 class="title">해외여행</h4>
											<ul class="list-unstyled">
												<li>
													<a href="countrytravel1">북미/중남미/하와이</a>
												</li>
												<li>
													<a href="countrytravel2">대만/동남아/서남아</a>
												</li>
												<li>
													<a href="countrytravel3">중국/홍콩/러시아</a>
												</li>
												<li>
													<a href="countrytravel4">유럽/아프리카</a>
												</li>
												<li>
													<a href="countrytravel5">일본</a>
												</li>
											</ul>
										</div>
									</div>
									
									<!-- Tocplus 15.1 -->
									<script type="text/javascript">
										tocplusTop=1150;
										tocplusLeft=5;
										tocplusMinimizedImage='http://kr03.tocplus007.com/img/minimized_ko.gif';
										tocplusHAlign='right';
										tocplusWidth=180;
										tocplusHeight=220;
										tocplusUserName='손님';
										tocplusFrameColor='#458fff';
										tocplusFloatingWindow=true;
										var tocplusHost = (("https:" == document.location.protocol) ? "https://" : "http://");
										document.write(unescape("%"+"3Cscript src='" + tocplusHost + "kr03.tocplus007.com/chatLoader.do?userId=wjsrlxo500' type='text/javascript'"+"%"+"3E"+"%"+"3C/script"+"%"+"3E"));
									</script>
									<!-- End of Tocplus -->

									<div class="col-lg-3 col-6">
										<div class="col-megamenu">
											<h4 class="title">테마여행</h4>
											<ul class="list-unstyled">
												<li>
													<a href="fishing">낚시</a>
												</li>
												<li>
													<a href="golf">골프</a>
												</li>
												<li>
													<a href="honeymoon">허니문</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-3 col-6">
										<div class="col-megamenu">
											<h4 class="title">호텔예약</h4>
											<ul class="list-unstyled">
												<li>
													<a href="hotelreservation">호텔예약</a>
												</li>
												<li>
													<a href="#">에어비앤비</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-3 col-6">
										<div class="col-megamenu">
											<h4 class="title">여행후기</h4>
											<ul class="list-unstyled">
												<li>
													<a href="topangler">탑앵글러</a>
												</li>
												<li>
													<a href="travelphoto">여행포토</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="col-lg-3 col-6">
										<div class="col-megamenu">
											<br/>
											<h4 class="title">여행정보</h4>
											<ul class="list-unstyled">
												<li>
													<a href="weatherinfo">날씨</a>
												</li>
												<li>
													<a href="exchangeinfo">환율</a>
												</li>
												<li>
													<a href="timedifferenceinfo">시차</a>
												</li>
												<li>
													<a href="visainfo">비자정보</a>
												</li>
												<li>
													<a href="supplies">여행준비물</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
								<img src='<c:url value="/resources/image/button/Oversea.png"/>' width="150" height="75" style="margin-right:40px;">
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="countrytravel1">미주/중남미/하와이</a>
								<a class="dropdown-item" href="countrytravel2">대만/동남아/서남아</a>
								<a class="dropdown-item" href="countrytravel3">중국/홍콩/러시아</a>
								<a class="dropdown-item" href="countrytravel4">유럽/아프리카</a>
								<a class="dropdown-item" href="countrytravel5">일본</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
								<img src='<c:url value="/resources/image/button/Theme.png"/>' width="150" height="75" style="margin-right:40px;">
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="fishing">낚시</a>
								<a class="dropdown-item" href="golf">골프</a>
								<a class="dropdown-item" href="honeymoon">허니문</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
								<img src='<c:url value="/resources/image/button/Hotel.png"/>' width="150" height="75" style="margin-right:40px;">
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="hotelreservation">호텔예약</a>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
								<img src='<c:url value="/resources/image/button/Review.png"/>' width="150" height="75" style="margin-right:40px;">
							</a>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="topangler">탑앵글러</a>
								<a class="dropdown-item" href="/ex/list.do">여행포토</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- 로그인 Modal 부분 -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>로그인</h4>
					</div>
					<div class="d-flex flex-column text-center">
						<div class="form-group">
							<input type="text" class="form-control" id="UserID" name="LoginUserID" placeholder="아이디를 입력하세요" required autofocus>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="Password" placeholder="비밀번호를 입력하세요" required>
						</div>
						<input type="hidden" id="lastDate" name="lastDate" value="<%=now%>">
						<button id="Login" class="btn btn-primary btn-block btn-round">로그인</button>
					</div>
				</div>
				<div class="modal-footer d-flex justify-content-center">
					<div class="signup-section">
						회원이 아니라면 <a href="#registerModal" class="text-primary" data-toggle="modal" data-target="#registerModal">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 회원가입 Modal 부분 -->
	<div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="registerModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>회원가입</h4>
					</div>
					<div class="d-flex flex-column text-center">
						<form name="form" id="form" action="/ex/SignUp" method="POST">
							<div class="form-group row">
								<div class="col-sm-9">
									<input type="text" class="form-control" id="RegisterUserID" name="UserID" placeholder="아이디" required autofocus>
								</div>
								<div class="col-sm-3">
									<button type="button" id="IDCheck" class="btn btn-primary">중복확인</button>
								</div>
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="RegisterPassword" name="Password" placeholder="비밀번호" required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="Name" name="Name" placeholder="이름" required>
							</div>
							<div class="form-group">
								<input type="email" class="form-control" id="Email" name="Email" placeholder="이메일" required>
							</div>
							<div class="form-group">
								<input type="tel" class="form-control" id="Phone" name="Phone" maxlength="11" placeholder="-를 제외한 휴대폰 번호" required>
							</div>
							<div class="form-group">
								<input type="date" class="form-control" id="Birth" name="Birth" placeholder="생일" required>
							</div>
							<div class="form-group">
								<select class="form-control" id="Sex">
									<option value="1">남자</option>
									<option value="0">여성</option>
								</select>
							</div>
							<div class="form-group row">
								<div class="col-sm-9">
									<input type="text" id="Address" name="Address" class="form-control" placeholder="주소" required readonly>
								</div>
								<div class="col-sm-3">
									<button type="button" class="btn btn-warning" onclick="goPopup()">주소찾기</button>
								</div>
							</div>
							<input type="hidden" id="Grade" name="Grade" value="User">
							<input type="hidden" id="Mileage" name="Mileage" value="0">
							<button type="button" id="register" class="btn btn-primary btn-block btn-round" onclick="Register()" disabled>회원가입</button>
							<button type="reset" id="registerReset" class="btn btn-danger btn-block btn-round">취소</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 예약확인 비회원 부분-->
	<div class="modal fade" id="ReservationModal" tabindex="-1" role="dialog" aria-labelledby="reservationModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>비회원 예약확인</h4>
					</div>
					<div class="d-flex flex-column text-center">
						<form>
							<div class="form-group">
								<input type="text" class="form-control" id="name" placeholder="이름을 입력하세요">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="revervationnumber" placeholder="예약번호를 입력하세요">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="phone" placeholder="휴대폰 번호를 입력하세요">
							</div>
							<button type="button" class="btn btn-primary btn-block btn-round">조회하기</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</header>