<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회사 개요</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d6c0ae7305fb9210dc71640a373972b"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<div class="container">
		<div class="sub_content m1">
			<h3 class="sub_title mgb_50 f55">회사개요</h3>
			<div class="row">
				<div class="col-lg-6">
					<table class="table">
						<colgroup>
							<col width="188px">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th class="left">법인명</th>
								<td class="left">㈜케어핀투어</td>
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
					<div id="map" style="width:500px;height:400px;"></div>
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
	
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>