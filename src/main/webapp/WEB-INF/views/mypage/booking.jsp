<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
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
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
	
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>마이페이지</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li>CarefinTour</li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
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
									<caption class="table_caption">${sessionScope.member.getName() }님의 예약 내역입니다</caption>
									<thead>
										<tr>
											<th>주문번호</th>
											<th>상품번호</th>
											<th>상품명</th>
											<th>어른</th>
											<th>아이</th>
											<th>애기</th>
											<th>금액</th>
											<th>주문상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${MyPageOrderList}" var="MyPageOrderList">
										<tr>
											<td>${MyPageOrderList.getoId()}</td>
											<td>${MyPageOrderList.getpId()}</td>
											<td><a href="detailInfo?PID=${MyPageOrderList.getpId()}">${MyPageOrderList.getProductname()}</a></td>
											<td>${MyPageOrderList.getNum()}</td>
											<td>${MyPageOrderList.getNum2()}</td>
											<td>${MyPageOrderList.getNum3()}</td>
											<td><fmt:formatNumber value="${MyPageOrderList.getPayment()}" pattern="###,###,###"/></td>
											<c:choose>
												<c:when test="${MyPageOrderList.getPaymentstatus() eq 1}">
													<td><span class="payment-status status-0">
														<a href="detailResvation2?PID=${MyPageOrderList.getpId()}&OID=${MyPageOrderList.getoId()}&Payment=${MyPageOrderList.getPayment()}&num=${MyPageOrderList.getNum()}&num2=${MyPageOrderList.getNum2()}&num3=${MyPageOrderList.getNum3()}">결제보류</a></span></td>
												</c:when>
												<c:when test="${MyPageOrderList.getPaymentstatus() eq 2}">
													<td><span class="payment-status status-1">결제완료</span></td>
												</c:when>
											</c:choose>
										</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
					<a class="disabledLink" href="booking?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:when>
				<c:otherwise>
					<a href="booking?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 갯수만큼 버튼 생성 -->
			<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
				<c:choose>
					<c:when test="${i eq Paging.pageNo }">
						<a class="active disabledLink" href="booking?page=${i}"><c:out value="${i}"/></a>
					</c:when>
					<c:otherwise>
						<a href="booking?page=${i}"><c:out value="${i}"/></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.finalPageNo}">
					<a class="disabledLink" href="booking?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:when>
				<c:otherwise>
					<a href="booking?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
		<br>
			
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>