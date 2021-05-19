<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/sb-admin-2.min.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/js/sb-admin-2.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper">
    	<!-- 좌측 배너 부분 -->
		<jsp:include page="../layout/banner.jsp"/>
		<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
				
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Package Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<select class="form-control">
								<option>국가</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>지역</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>패키지</option>
							</select>
						</div>
						<div class="col-sm-4">
							<input type="text" placeholder="상품명을 입력하세요.">
							<button type="button" class="btn px-3 btn-primary">
								<i class="fas fa-search"></i>
							</button>
						</div>
						<div class="col-sm-2">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary"  onclick="location.href='insertpackage'">등록</button>
									<button class="btn btn-primary">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
                    
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th>
									<input type="checkbox">
								</th>
								<th>
									PID
								</th>
								<th>
									상품 코드
								</th>
								<th>
									사진
								</th>
								<th>
									상품명
								</th>
								<th>
									지역
								</th>
								<th>
									기간
								</th>
								<th>
									등록일
								</th>
								<th>
									가격
								</th>
							</tr>
						</thead>
					</table>
							
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th><input type="checkbox"></th>
								<th>PID</th>
								<th>상품코드</th>
								<th>사진</th>
								<th>상품명</th>
								<th>지역</th>
								<th>출발일</th>
								<th>도작일</th>
								<th>등록일</th>
								<th>가격</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${plist}" var="plist">
								<tr>
									<td><input type="checkbox"></td>
									<td>${plist.getPid()}</td>
									<td>${plist.getProductcode()}</td>
									<td>사진</td>
									<td>${plist.getProductname()}</td>
									<td>${plist.getArea}</td>
									<td>${plist.getStartravelperiod}</td>
									<td>${plist.getArrivaltravelperiod}</td>
									<td>${plist.getRedate}</td>
									<td>${plist.getPrice}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 본문 -->
			</div>
						<!-- 게시글 페이징 처리(기준 10개) -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="packageproduct?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="packageproduct?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="packageproduct?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="packageproduct?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="packageproduct?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="packageproduct?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			
			<jsp:include page="../layout/footer.jsp"/>
		</div>
	</div>
</body>
</html>