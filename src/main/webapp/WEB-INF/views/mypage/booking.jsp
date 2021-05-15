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
								- 자세한 여행상품 문의는 상품담당자를 통해 연락바라며 신용카드 결제 진행시 담당직원과 상담 후 진행하시기 바랍니다.<br>
								- 호텔은 동급의 다른 호텔로 변경 될 수 있으며, 출발 2일전 확정 일정표 및 나만의 여행가이드를 확인해 주시기 바랍니다.<br>
							</div>
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="mx-auto">
						<table class="table table-hover table-white">
							<caption class="table_caption">고객님의 예약 내역입니다</caption>
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