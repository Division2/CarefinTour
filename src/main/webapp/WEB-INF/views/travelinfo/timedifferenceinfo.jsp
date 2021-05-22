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
<style>.table_caption {caption-side:top;}</style>
<script type="text/javascript">
	var $KST = getWorldTime(+9);
	var $PST = getWorldTime(-8);
	var $PDT = getWorldTime(-7);
	var $EST = getWorldTime(-5);
	var $EDT = getWorldTime(-4);
	var $CET = getWorldTime(+1);
	var $CEST = getWorldTime(+2);
	var $CST = getWorldTime(+8);
	var $JST = getWorldTime(+9);
	var $MST = getWorldTime(+8);
	var $UTC = getWorldTime(0);
	
	function getWorldTime(tzOffset) {
		var now = new Date();
		var tz = now.getTime() + (now.getTimezoneOffset() * 60000) + (tzOffset * 3600000);
		now.setTime(tz);
		
		var s = leadingZeros(now.getFullYear(), 4) + '-' + leadingZeros(now.getMonth() + 1, 2) + '-' + leadingZeros(now.getDate(), 2) + ' ' +
				leadingZeros(now.getHours(), 2) + ':' + leadingZeros(now.getMinutes(), 2) + ':' + leadingZeros(now.getSeconds(), 2);
				
		return s;
	}

	function leadingZeros(n, digits) {
		var zero = '';
		n = n.toString();
		
		if (n.length < digits) {
			for (i = 0; i < digits - n.length; i++)
				zero += '0';
		}
		return zero + n;
	}
</script>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>시차 정보</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="weatherinfo">날씨</a></li>
					<li><a href="exchangeinfo">환율</a></li>
					<li><a href="timedifferenceinfo">시차</a></li>
					<li><a href="visainfo">비자</a></li>
					<li><a href="supplies">여행준비</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<h5>여행 출발하기 전 각종 정보를 꼭 확인하시고</h5>
				<h5>더욱 편안한 여행되시길 바랍니다.</h5>
				<hr>
				<table class="table table-hover table-white">
					<caption class="table_caption">Date 함수를 이용한 세계 시차 표</caption>
					<thead>
						<tr>
							<th>국가명</th>
							<th>현재 시각</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>한국 표준시(KST)</td>
							<td>
								<script>document.write($KST);</script>
							</td>
						</tr>
						<tr>
							<td>태평양 표준시(PST)</td>
							<td>
								<script>document.write($PST);</script>
							</td>
						</tr>
						<tr>
							<td>태평양 표준시(PDT)</td>
							<td>
								<script>document.write($PDT);</script>
							</td>
						</tr>
						<tr>
							<td>뉴욕 표준시(EST)</td>
							<td>
								<script>document.write($EST);</script>
							</td>
						</tr>
						<tr>
							<td>뉴욕 표준시(EDT)</td>
							<td>
								<script>document.write($EDT);</script>
							</td>
						</tr>
						<tr>
							<td>파리 표준시(CET)</td>
							<td>
								<script>document.write($CET);</script>
							</td>
						</tr>
						<tr>
							<td>파리 표준시(CEST)</td>
							<td>
								<script>document.write($CEST);</script>
							</td>
						</tr>
						<tr>
							<td>중국 표준시(CST)</td>
							<td>
								<script>document.write($CST);</script>
							</td>
						</tr>
						<tr>
							<td>일본 표준시(JST)</td>
							<td>
								<script>document.write($JST);</script>
							</td>
						</tr>
						<tr>
							<td>말레이시아 표준시(MST)</td>
							<td>
								<script>document.write($MST);</script>
							</td>
						</tr>
						<tr>
							<td>세계 표준시(UTC)</td>
							<td>
								<script>document.write($UTC);</script>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
</body>
</html>