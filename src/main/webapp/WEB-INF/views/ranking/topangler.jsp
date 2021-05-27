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
<link href='<c:url value="/resources/css/leaderboard.css"/>' rel="stylesheet">
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
		
		<section class="features-one__title" style="background-image: url(<c:url value="/resources/images/backgrounds/mainbanner.jpg"/>);">
			<div class="container">
				<div class="block-title text-center">
					<p>TopAngler TOP 100</p>
					<h3>TOPANGLER</h3>
				</div>
			</div>
		</section>
		
		<section>
			<div class="container">
				<h1 id="twayFont"></h1>
				<hr>
				<div class="row">
			<c:forEach items="${topangler}" var="topangler">
			<c:if test="${topangler.getRanking() le 3}">
				<div class="col-sm-4">
				<c:if test="${topangler.getRanking() eq 1}">
					<div class="leaderboard-card leaderboard-card--first">
						<div class="leaderboard-card__top">
							<h3 class="text-center">1st</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src='<c:url value="/resources/images/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">${topangler.getName() }</h5>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fas fa-fish"></i> ${topangler.getFishname() } ${topangler.getFishsize() }cm</span>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${topangler.getRanking() eq 2}">
					<div class="leaderboard-card leaderboard-card--second">
						<div class="leaderboard-card__top">
							<h3 class="text-center">2nd</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src='<c:url value="/resources/images/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">${topangler.getName() }</h5>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fas fa-fish"></i> ${topangler.getFishname() } ${topangler.getFishsize() }cm</span>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<c:if test="${topangler.getRanking() eq 3}">
					<div class="leaderboard-card leaderboard-card--third">
						<div class="leaderboard-card__top">
							<h3 class="text-center">3rd</h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src='<c:url value="/resources/images/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
								<h5 class="mb-0">${topangler.getName() }</h5>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><i class="fas fa-fish"></i> ${topangler.getFishname() } ${topangler.getFishsize() }cm</span>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				</div>
				</c:if>
			</c:forEach>
				</div>
				<h4>ALL RANKING</h4>
				<hr>
				<table class="table">
					<thead>
						<tr>
							<th>순위</th>
							<th>이름(angler)</th>
							<th>물고기 종류</th>
							<th>물고기 크기</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${topangler}" var="topangler">
							<tr>
								<td>
									<div class="d-flex align-items-baseline">
									<h4 class="mr-1">${topangler.getRanking() }위</h4>
									</div>
								</td>
								<td>
									<div class="d-flex align-items-center">
										<img src='<c:url value="/resources/images/topangler/${topangler.s_file_fish }"/>' class="circle-img circle-img--small mr-2" alt="User Img">
										<div class="user-info__basic">
											<h5 class="mb-0">${topangler.getName() }</h5>
										</div>
									</div>
								</td>
								<td>${topangler.getFishname() }</td>
								<td>${topangler.getFishsize() }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
		
		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
					<a class="disabledLink" href="topangler?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:when>
				<c:otherwise>
					<a class="page-link" href="topangler?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 갯수만큼 버튼 생성 -->
			<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
				<c:choose>
					<c:when test="${i eq Paging.pageNo }">
						<a class="active disabledLink" href="topangler?page=${i}"><c:out value="${i }"/></a>
					</c:when>
					<c:otherwise>
						<a href="topangler?page=${i}"><c:out value="${i }"/></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
					<a class="disabledLink" href="topangler?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:when>
				<c:otherwise>
					<a href="topangler?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
		<br>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>