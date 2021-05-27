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
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script src='<c:url value="/resources/js/DeleteSelection.js"/>'></script>
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
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
						<h1 class="h3 mb-0 text-gray-800">Inquiry Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-8">
							<form action="inquirySearch" role="form" method="GET" class="form-inline">
								<select class="form-control" id="search" name="search">
									<option value="name" >작성자</option>
									<option value="category">카테고리</option>
									<option value="title">제목</option>
								</select>
								<input type="text"  id="keyword" name="keyword"class="form-control ml-1 mr-1" required>
								<button type="submit" class="btn px-3 thm-btn-psd">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>	
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button type="button" class="btn btn-primary" onclick="location.href='inquiry'">목록</button>
									<button type="button"  class="btn btn-danger" onclick="InquiryDeleteSelection()">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<colgroup>
							<col width="1%">
							<col width="1%">
							<col width="10%">
							<col width="50%">
						</colgroup>
						<thead>
							<tr>
								<th><input type="checkbox" name="allCheck"></th>
								<th>No</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>작성자</th>
								<th>아이디</th>
								<th>작성일</th>								
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
					<c:forEach items="${InquiryList}" var="InquiryBoardVO">
						<tr>
							<th><input type="checkbox"name="RowCheck" value="${InquiryBoardVO.iId }"></th>
							<td>${InquiryBoardVO.iId }</td>
							<td><span class="inquiry-category">${InquiryBoardVO.category }</span></td>
							<td><a href="inquiryView?iId=${InquiryBoardVO.iId }">${InquiryBoardVO.title }</a></td>
							<td>${InquiryBoardVO.name}</td>
							<td>${InquiryBoardVO.userId}</td>
							<td>${InquiryBoardVO.reDate }</td>
						<c:choose>
							<c:when test="${InquiryBoardVO.status eq 0}">
								<td><span class="inquiry-status status-0">답변대기</span></td>
							</c:when>
							<c:when test="${InquiryBoardVO.status eq 1}">
								<td><span class="inquiry-status status-1">답변보류</span></td>
							</c:when>
							<c:otherwise>
								<td><span class="inquiry-status status-2">답변완료</span></td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:forEach>
						</tbody>
					</table>
					<!-- 게시글 페이징 처리(기준 10개) -->
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<c:choose>
								<c:when test="${Title ne null}">
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirySearch?title=${Title}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirySearch?title=${Title}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="inquirySearch?title=${Title}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="inquirySearch?title=${Title}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirySearch?title=${Title}&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirySearch?title=${Title}&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquiry?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquiry?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="inquiry?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="inquiry?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquiry?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquiry?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
				<!-- 본문 -->
			</div>
		<!-- 하단 푸터 부분 -->
		<jsp:include page="../layout/footer.jsp"/>
   		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>