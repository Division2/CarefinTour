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
<link href='<c:url value="/resources/css/weather-icons.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/weather-icons-wind.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<title>CarefinTour</title>
<script type="text/javascript">
	function weather() {
		let weatherIcon = {
			'01d' : 'wi wi-day-sunny',
			'02d' : 'wi wi-day-cloudy',
			'03d' : 'wi wi-cloud',
			'04d' : 'wi wi-cloudy',
			'09d' : 'wi wi-day-rain',
			'10d' : 'wi wi-showers',
			'11d' : 'wi wi-storm-showers',
			'13d' : 'wi wi-snow-wind',
			'50d' : 'wi wi-sandstorm',
			
			'01n' : 'wi wi-night-clear',
			'02n' : 'wi wi-night-alt-cloudy',
			'03n' : 'wi wi-cloudy',
			'04n' : 'wi wi-night-alt-snow',
			'09n' : 'wi wi-night-rain',
			'10n' : 'wi wi-night-showers',
			'11n' : 'wi wi-night-alt-storm-showers',
			'13n' : 'wi wi-night-alt-snow-wind',
			'50n' : 'wi wi-sandstorm'
		};

		var city = document.getElementById("city").value;
		$.ajax({
			url : 'http://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid=77a02d20a0c87ee00c352807d3420d7b&units=metric',
			dataType : 'json',
			type : 'GET',
			success : function(data) {
				var $Icon = (data.weather[0].icon);
				var $Temp = Math.floor(data.main.temp);
				var $city = data.name;
				var $minTemp = data.main.temp_min;
				var $maxTemp = data.main.temp_max;
				var $humidity = data.main.humidity;
				var $wind = data.wind.speed;

				$('.CurrIcon').empty();
				$('.CurrTemp').empty();
				$('.City').empty();
				$('.minTemp').empty();
				$('.maxTemp').empty();
				$('.humidity').empty();
				$('.Wind').empty();
				
				$('.CurrIcon').append('<i class="' + weatherIcon[$Icon] + ' fa-5x"></i>');
				$('.CurrTemp').prepend($Temp + "???");
				$('.City').append($city);
				$('.minTemp').append('?????? ?????? : ' + $minTemp + "???");
				$('.maxTemp').append('?????? ?????? : ' + $maxTemp + "???");
				$('.humidity').append('?????? : ' + $humidity + "%");
				$('.Wind').append('?????? : ' + $wind + "m/s");
			}
		})
	};
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
				<label for="city">?????? ??????</label>
				<select name="city" id="city" class="selectpicker" onchange="weather()" data-width="100%">
					<option>????????? ??????????????????</option>
					<option value="Seoul">??????</option>
					<option value="Uijeongbu-si">?????????</option>
					<option value="Pocheon-si">??????</option>
					<option value="Incheon">??????</option>
					<option value="United States">??????</option>
					<option value="Japan">??????</option>
					<option value="China">??????</option>
					<option value="Malaysia">???????????????</option>
				</select>
				<br>
				<table class="table table-borderess">
					<tbody>
						<tr>
							<td align="center">
								<br>
								<div class="CurrIcon"></div>
							</td>
							<td>
								<br>
								<h1 class="CurrTemp"></h1>
								<h6 class="minTemp"></h6>
								<h6 class="maxTemp"></h6>
								<h6 class="humidity"></h6>
								<h6 class="Wind"></h6>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>