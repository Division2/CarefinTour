<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/leaderboard.css"/>' rel="stylesheet">
<title>케어핀투어 - 탑앵글러</title>
</head>

<body>
	<jsp:include page="../layout/header.jsp" />
		<div class="container">
			<div class="d-flex">
				<h1>탑 랭킹</h1>
			</div>
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
								<img src='<c:url value="/resources/image/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
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
								<img src='<c:url value="/resources/image/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
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
								<img src='<c:url value="/resources/image/topangler/${topangler.getS_file_fish() }"/>' class="circle-img mb-2" alt="User Img">
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
			<h4>전체 랭킹</h4>
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
									<img src='<c:url value="/resources/image/topangler/${topangler.s_file_fish }"/>' class="circle-img circle-img--small mr-2" alt="User Img">
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
			<!-- 게시글 페이징 처리(기준 10개) -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="topangler?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="topangler?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="topangler?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="topangler?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="topangler?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="topangler?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			<br>
		</div>
		
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>