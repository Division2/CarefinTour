<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/leaderboard.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>케어핀투어 - 탑앵글러</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<div class="container">
		<h1>탑 랭킹</h1>
		<hr>
		<div class="row">
			<div class="col-sm-4">
				<div class="leaderboard-card">
					<div class="leaderboard-card__top">
						<h3 class="text-center">2nd</h3>
					</div>
					<div class="leaderboard-card__body">
						<div class="text-center">
							<img src='<c:url value="/resources/image/ranking/user2.jpg"/>' class="circle-img mb-2" alt="User Img">
							<h5 class="mb-0">전기태</h5>
							<hr>
							<div class="d-flex justify-content-between align-items-center">
								<span><i class="fas fa-fish"></i> 잉어 100cm</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="leaderboard-card leaderboard-card--first">
					<div class="leaderboard-card__top">
						<h3 class="text-center">1st</h3>
					</div>
					<div class="leaderboard-card__body">
						<div class="text-center">
							<img src='<c:url value="/resources/image/ranking/user1.jpg"/>' class="circle-img mb-2" alt="User Img">
							<h5 class="mb-0">박성동</h5>
							<hr>
							<div class="d-flex justify-content-between align-items-center">
								<span><i class="fas fa-fish"></i> 붕어 150cm</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="leaderboard-card">
					<div class="leaderboard-card__top">
						<h3 class="text-center">3rd</h3>
					</div>
					<div class="leaderboard-card__body">
						<div class="text-center">
							<img src='<c:url value="/resources/image/ranking/user3.jpg"/>' class="circle-img mb-2" alt="User Img">
							<h5 class="mb-0">김요한</h5>
							<hr>
							<div class="d-flex justify-content-between align-items-center">
								<span><i class="fas fa-fish"></i> 송사리 50cm</span>
							</div>
						</div>
					</div>
				</div>
			</div>
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
				<tr>
					<td>
						<div class="d-flex align-items-baseline">
							<h4 class="mr-1">1</h4>
						</div>
					</td>
					<td>
						<div class="d-flex align-items-center">
							<img src='<c:url value="/resources/image/ranking/user1.jpg"/>' class="circle-img circle-img--small mr-2" alt="User Img">
							<div class="user-info__basic">
								<h5 class="mb-0">박성동</h5>
							</div>
						</div>
					</td>
					<td>붕어</td>
					<td>150cm</td>
				</tr>
				<tr>
					<td>
						<div class="d-flex align-items-baseline">
							<h4 class="mr-1">2</h4>
						</div>
					</td>
					<td>
						<div class="d-flex align-items-center">
							<img src='<c:url value="/resources/image/ranking/user2.jpg"/>' class="circle-img circle-img--small mr-2" alt="User Img">
							<div class="user-info__basic">
								<h5 class="mb-0">전기태</h5>
							</div>
						</div>
					</td>
					<td>잉어</td>
					<td>100cm</td>
				</tr>
				<tr>
					<td>
						<div class="d-flex align-items-baseline">
							<h4 class="mr-1">3</h4>
						</div>
					</td>
					<td>
						<div class="d-flex align-items-center">
							<img src='<c:url value="/resources/image/ranking/user3.jpg"/>' class="circle-img circle-img--small mr-2" alt="User Img">
							<div class="user-info__basic">
								<h5 class="mb-0">김요한</h5>
							</div>
						</div>
					</td>
					<td>송사리</td>
					<td>50cm</td>
				</tr>
				<tr>
					<td>
						<div class="d-flex align-items-baseline">
							<h4 class="mr-1">4</h4>
						</div>
					</td>
					<td>
						<div class="d-flex align-items-center">
							<img src='<c:url value="/resources/image/ranking/user4.jpg"/>' class="circle-img circle-img--small mr-2" alt="User Img">
							<div class="user-info__basic">
								<h5 class="mb-0">이인호</h5>
							</div>
						</div>
					</td>
					<td>니모</td>
					<td>15cm</td>
				</tr>
				<tr>
					<td>
						<div class="d-flex align-items-baseline">
							<h4 class="mr-1">5</h4>
						</div>
					</td>
					<td>
						<div class="d-flex align-items-center">
							<img src='<c:url value="/resources/image/ranking/user5.jpg"/>' class="circle-img circle-img--small mr-2" alt="User Img">
							<div class="user-info__basic">
								<h5 class="mb-0">박남일</h5>
							</div>
						</div>
					</td>
					<td>버들치</td>
					<td>10cm</td>
				</tr>
			</tbody>
		</table>
	</div>

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>