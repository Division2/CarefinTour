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
	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/page-header-contact.png"/>);">
			<div class="container">
				<h2>1:1 문의</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="notice">공지사항</a></li>
					<li><a href="inquiry">1:1문의</a></li>
					<li><a href="support">자주찾는질문</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<div class="d-flex">
					<div class="mr-auto"></div>
					<form action="inquirySearch" method="GET" class="form-inline">
						<select class="form-control" id="searchType" name="searchType">
							<option value="title">제목</option>
							<option value="category">카테고리</option>
						</select>
						<input type="text" id="keyword" name="keyword" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
						<button type="submit" class="btn px-3 thm-btn-psd">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
				<table class="table table-white">
					<colgroup>
						<col width="10%">
						<col width="10%">
						<col width="50%">
					</colgroup>
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
					<c:forEach items="${InquiryList}" var="InquiryBoardVO">
						<tr>
							<td>${InquiryBoardVO.iId }</td>
							<td><span class="inquiry-category">${InquiryBoardVO.category }</span></td>
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
				<c:if test="${sessionScope.member ne null}">
				<div class="d-flex">
					<div class="ml-auto">
						<button class="thm-btn-psd" onclick="javascript:location='inquiryWrite'">문의하기</button>
					</div>
				</div>
				<br>
				</c:if>
			</div>
		</section>
		
		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<c:choose>
				<c:when test="${Title ne null }">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<a class="disabledLink" href="inquirySearch?title=${Title }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a href="inquirySearch?title=${Title }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active" href="inquirySearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="inquirySearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="inquirySearch?title=${Title }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="inquirySearch?title=${Title }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<a class="disabledLink" href="inquiry?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a class="page-link" href="inquiry?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active" href="inquiry?page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="inquiry?page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="inquiry?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="inquiry?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</div>
		<br>

		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>