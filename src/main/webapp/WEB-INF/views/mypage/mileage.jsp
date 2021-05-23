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
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
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
										- 고객님께서 보유하고 있는 마일리지 적립 및 사용 내역입니다. 마일리지 적립은 여행 도착일로부터 7일 이후(이벤트, 후기 등은 적립사유 발생일로부터 7일 이후)에 적립됩니다.<br>
										- 마일리지의 유효 기간은 선입선출 기준, 적립일로부터 36개월이며, 회원 탈퇴 시, 적립된 포인트는 자동 소멸되니 신중하게 선택해주시기 바랍니다.<br>
									</div>
								</div>
							</div>
						</div>
						<div class="d-flex">
							<div class="mx-auto">
								<table class="table table-hover table-white">
									<caption class="table_caption">총 잔여(사용 가능) 마일리지 : ${member.getMileage() }M</caption>
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
										<c:forEach items="${MyPageMileageList }" var="MileageList">
										<tr>
											<td>${MileageList.getEarnDate() }</td>
											<td>${MileageList.getExpirationDate() }</td>
											<td>${MileageList.getType() }</td>
											<td>${MileageList.getContent() }</td>
											<td>zz</td>
											<td>${MileageList.getSaving() }</td>
											<td>${MileageList.getUsing() }</td>
											<td>${MileageList.getRemainder() }</td>
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
					<a class="disabledLink" href="mileage?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:when>
				<c:otherwise>
					<a href="mileage?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 갯수만큼 버튼 생성 -->
			<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
				<c:choose>
					<c:when test="${i eq Paging.pageNo }">
						<a class="active disabledLink" href="mileage?page=${i}"><c:out value="${i}"/></a>
					</c:when>
					<c:otherwise>
						<a href="mileage?page=${i}"><c:out value="${i}"/></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.finalPageNo}">
					<a class="disabledLink" href="mileage?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:when>
				<c:otherwise>
					<a href="mileage?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
		<br>
	
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>