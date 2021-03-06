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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>CarefinTour</title>
<style>.table_caption {caption-side:top;}</style>
<script type="text/javascript">
	$(document).ready(function() { 
		$.ajax({
			url: 'http://data.fixer.io/api/latest?access_key=0b3d2e7c7017ef1b973408f853b38324',
			dataType: 'jsonp',
			type: 'GET',
			success: function(data) {
				var $usd = data.rates.USD;
				var $myr = data.rates.MYR;
				var $jpy = data.rates.JPY;
				var $cny = data.rates.CNY;
				var $krw = data.rates.KRW;
				
				var usd = Math.floor(1 / $usd * $krw);
				var usdrate = usd.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				$('.usd').append(usdrate);
				
				var myr = Math.floor(1 / $myr * $krw);
				var myrrate = myr.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				$('.myr').append(myrrate);
				
				var jpy = Math.floor(1 / $jpy * $krw);
				var jpyrate = jpy.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				$('.jpy').append(jpyrate);
					
				var cny = Math.floor(1 / $cny * $krw);
				var cnyrate = cny.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				$('.cny').append(cnyrate);
			}
		})
	});
</script>
</head>
<body>
	<!-- ????????? ?????? ????????? -->
	<div class="preloader">
		<img src='<c:url value="/resources/images/loader.png"/>' class="preloader__image" alt="">
	</div>
	<!-- ????????? ?????? ????????? -->
	
	<!-- ?????? ?????? -->
	<div class="page-wrapper">
		<jsp:include page="../layout/header.jsp" />
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>?????? ??????</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="weatherinfo">??????</a></li>
					<li><a href="exchangeinfo">??????</a></li>
					<li><a href="timedifferenceinfo">??????</a></li>
					<li><a href="visainfo">??????</a></li>
					<li><a href="supplies">????????????</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<h5>?????? ???????????? ??? ?????? ????????? ??? ???????????????</h5>
				<h5>?????? ????????? ??????????????? ????????????.</h5>
				<hr>
				<h6>?????? ??????<br>?????? : 1$ | ??????????????? : 1MYR | ?????? : 1?? | ?????? : 1??</h6>
				<table class="table table-hover table-white">
					<caption class="table_caption">Fixer API ???????????? ????????? ?????? ???</caption>
					<thead>
						<tr>
							<th>?????????</th>
							<th>????????????</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>??????(USD)</td>
							<td class="usd"></td>
						</tr>
						<tr>
							<td>???????????????(MYR)</td>
							<td class="myr"></td>
						</tr>
						<tr>
							<td>??????(JPY)</td>
							<td class="jpy"></td>
						</tr>
						<tr>
							<td>??????(CNY)</td>
							<td class="cny"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
</body>
</html>