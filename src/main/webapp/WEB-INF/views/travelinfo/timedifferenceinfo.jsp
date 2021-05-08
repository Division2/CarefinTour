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
<body>
	<jsp:include page="../layout/header.jsp"/>
	
	<div class="container">
		<div class="row">
			<!-- 여행정보 사이드바 -->
			<jsp:include page="sidetravelinfo.jsp"/>
			
			<!-- 컨텐츠 부분 -->
			<div class="col-md-8">
				<h4>시차 정보</h4>
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
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>