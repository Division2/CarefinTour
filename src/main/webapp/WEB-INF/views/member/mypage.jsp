<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<div class="jumbotron mx-4">
					<div class="d-flex">
						<div class="mx-auto">
							ㅎㅇ
						</div>
						<div class="mx-auto">
							마일리지 1000M
						</div>
					</div>
					<div class="d-flex">
						<div class="mx-auto">
							휴대폰 : 010-XXXX-XXXX
						</div>
						<div class="mx-auto">
							이메일 : xxx@kyungmin.ac.kr
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="mx-auto">
						<table class="table table-hover table-white">
							<caption class="table_caption">최근 예약 내역</caption>
							<colgroup>
								<col width="300px"/>
								<col width="300px"/>
							</colgroup>
							<thead>
								<tr>
									<th>여행상품</th>
									<th>호텔</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td colspan="2">내역이 없어용</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>