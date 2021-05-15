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
				<div class="d-flex">
					<div class="mr-auto">
						<div class="container">
							<div class="alert alert-primary">
								<strong>잠깐 읽어보세요!</strong><br>
								- 고객님께서 보유하고 있는 마일리지 적립 및 사용 내역입니다. 마일리지 적립은 여행 도착일로부터 7일 이후(이벤트, 후기 등은 적립사유 발생일로부터 7일 이후)에 적립됩니다.<br>
								- 마일리지의 유효 기간은 선입선출 기준, 적립일로부터 36개월이며, 회원 탈퇴 시, 적립된 포인트는 자동 소멸되니 신중하게 선택해주시기 바랍니다.<br>
							</div>
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="mx-auto">
						<table class="table table-hover table-white">
							<caption class="table_caption">총 잔여(사용 가능)마일리지 : 1000M</caption>
							<thead>
								<tr>
									<th>적립일</th>
									<th>유효기간</th>
									<th>구분</th>
									<th>내용</th>
									<th>상품가</th>
									<th>적립</th>
									<th>사용</th>
									<th>잔여</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>2021-04-05</td>
									<td>2024-04-05</td>
									<td>회원가입</td>
									<td>가입 축하</td>
									<td>-</td>
									<td>1000</td>
									<td>-</td>
									<td>1000</td>
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