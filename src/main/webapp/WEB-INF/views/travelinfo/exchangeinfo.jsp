<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 여행정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
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
	<jsp:include page="../layout/header.jsp" />
	
	<div class="container">
		<div class="row">
			<!-- 여행정보 사이드바 -->
			<jsp:include page="sidetravelinfo.jsp"/>
			
			<!-- 컨텐츠 부분 -->
			<div class="col-md-8">
				<h4>환율 정보</h4>
				<h5>여행 출발하기 전 각종 정보를 꼭 확인하시고</h5>
				<h5>더욱 편안한 여행되시길 바랍니다.</h5>
				<hr>
				<h6>환율 기준<br>미국 : 1$ | 말레이시아 : 1MYR | 일본 : 1¥ | 중국 : 1¥</h6>
				<table class="table table-hover table-white">
					<caption class="table_caption">Fixer API 사용하여 나타낸 환율 표</caption>
					<thead>
						<tr>
							<th>통화명</th>
							<th>매매가격</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>미국(USD)</td>
							<td class="usd"></td>
						</tr>
						<tr>
							<td>말레이시아(MYR)</td>
							<td class="myr"></td>
						</tr>
						<tr>
							<td>일본(JPY)</td>
							<td class="jpy"></td>
						</tr>
						<tr>
							<td>중국(CNY)</td>
							<td class="cny"></td>
						</tr>
					</tbody>
				</table>
			</div>	                
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>