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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>회사 개요</h2>
			</div>
		</section>
		
		<section class="tour-one">
		     <div class="container">
				<div class="sub_content m1">
					<div class="row">
						<div class="col-lg-6">
							<table class="table">
								<colgroup>
									<col width="188px">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th class="left" >법인명</th>
										<td class="left" >㈜케어핀투어</td>
									</tr>
									<tr>
										<th class="left">설립일</th>
										<td class="left">2021년 04월 20일</td>
									</tr>
									<tr>
										<th class="left">대표자</th>
										<td class="left">엘제이피케이</td>
									</tr>
									<tr>
										<th class="left">자본금</th>
										<td class="left">94억 5천만원</td>
									</tr>
									<tr>
										<th class="left">직원수</th>
										<td class="left">4명 (2021년 4월 기준)</td>
									</tr>
									<tr>
										<th class="left">사업종목</th>
										<td class="left">일반여행업, 기타 여행 알선,<br>전시 및 행사대행업, 광고업</td>
									</tr>
									<tr>
										<th class="left">주소</th>
										<td class="left">경기도 의정부시 서부로 545</td>
									</tr>
									<tr>
										<th class="left">홈페이지</th>
										<td class="left">www.kyungmin.ac.kr</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="col-lg-6">
							<div id="map" style="width:700px;height:500px;"></div>
							<script>
								//지도를 표시할 div id설정
								var container = document.getElementById('map');
								//지도의 중심 좌표, 확대 레벨 설정
								var options = {
									center: new kakao.maps.LatLng(37.7452509, 127.0241639),
									level: 4
								};
								//지도 생성
								var map = new kakao.maps.Map(container, options);
								
								//마커 표시 위치
								var markerPosition  = new kakao.maps.LatLng(37.7460000, 127.0243500);
								
								//마커 생성
								var marker = new kakao.maps.Marker({
								    position: markerPosition
								});
								
								//마커 지도에 표시
								marker.setMap(map);
							</script>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>