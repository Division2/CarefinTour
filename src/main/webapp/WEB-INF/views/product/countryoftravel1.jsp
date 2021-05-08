<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>케어핀투어 - 미주|중남미|하와이</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />

	<div class="container">
		<h1 class="my-4">미주 | 중남미 | 하와이</h1>
		<hr>
		<div class="row">
			<div class="col-md-8">
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">여행 패키지1</h2>
						<p class="card-text">여행패키지 설명</p>
						<a href="detailInfo" class="btn btn-primary">상세 보기</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2020 by <a href="#">Start Bootstrap</a>
					</div>
				</div>
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">여행 패키지2</h2>
						<p class="card-text">여행패키지 설명</p>
						<a href="#" class="btn btn-primary">상세 보기</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2020 by <a href="#">Start Bootstrap</a>
					</div>
				</div>
				<div class="card mb-4">
					<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">
					<div class="card-body">
						<h2 class="card-title">여행 패키지3</h2>
						<p class="card-text">여행패키지 설명</p>
						<a href="#" class="btn btn-primary">상세 보기</a>
					</div>
					<div class="card-footer text-muted">
						Posted on January 1, 2020 by <a href="#">Start Bootstrap</a>
					</div>
				</div>
				<ul class="pagination justify-content-center mb-4">
					<li class="page-item">
						<a class="page-link" href="#">&larr;전페이지</a>
					</li>
					<li class="page-item disabled">
						<a class="page-link" href="#">다음페이지&rarr;</a>
					</li>
				</ul>
			</div>
			<div class="col-md-4">
				<div class="card my">
					<h5 class="card-header">원하는 패키지 입력하기</h5>
					<div class="card-body">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="원하시는 패키지를 입력해주세요.">
							<span class="input-group-append">
								<button class="btn btn-secondary" type="button">검색</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>