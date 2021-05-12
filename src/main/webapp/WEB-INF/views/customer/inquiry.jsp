<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>1:1 문의</h1>
				<hr>
				<div class="d-flex">
					<div class="mr-auto">
						<select class="form-control">
							<option>전체</option>
						</select>
					</div>
					<form action="list.qna" method="post" id="list" class="form-inline">
						<select class="form-control">
							<option>제목</option>
						</select>
						<input type="text" name="search" id="search" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
						<button type="submit" class="btn px-3 btn-primary">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
				<table class="table table-hover table-white">
					<thead>
						<tr>
							<th>번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>답변상태</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${InquiryList }" var="InquiryBoardVO">
						<tr>
							<td>${InquiryBoardVO.iId }</td>
							<td>${InquiryBoardVO.category }</td>
							<td><a href="inquiryView?iId=${InquiryBoardVO.iId }">${InquiryBoardVO.title }</a></td>
							<td>${InquiryBoardVO.name}</td>
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
					</ul>
				</nav>
				<c:if test="${sessionScope.member ne null}">
				<div class="d-flex">
					<div class="ml-auto">
						<button class="btn btn-primary" onclick="javascript:location='inquiryWrite'">문의하기</button>
					</div>
				</div>
				<br>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>