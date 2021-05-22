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
				<h2>공지사항</h2>
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
					<form action="noticeSearch" method="GET" class="form-inline">
						<select class="form-control">
							<option>제목</option>
						</select>
						<input type="text" name="title" id="title" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
						<button type="submit" class="btn px-3 thm-btn-psd">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
				<table class="table table-white">
					<colgroup>
						<col width="50px">
						<col width="150px">
						<col width="50px">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${NoticeList }" var="NoticeBoardVO">
						<tr>
					<c:choose>
						<c:when test="${NoticeBoardVO.important ne 'Y' }">
							<td>${NoticeBoardVO.nId }</td>
							<td><a href="noticeView?nId=${NoticeBoardVO.nId }"><c:out escapeXml="false" value="${NoticeBoardVO.title }"/></a></td>
							<td>${NoticeBoardVO.reDate }</td>
						</c:when>
						<c:otherwise>
							<td id="stresstable"><i class="fas fa-bullhorn"></i></td>
							<td id="stresstable"><a href="noticeView?nId=${NoticeBoardVO.nId }"><font style="color:#ff4f5a;"><c:out escapeXml="false" value="${NoticeBoardVO.title }"/></font></a></td>
							<td id="stresstable">${NoticeBoardVO.reDate }</td>
						</c:otherwise>
					</c:choose>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<c:if test="${sessionScope.member.getUserID() ne null && sessionScope.member.getGrade() eq 'Admin'}">
				<div class="d-flex">
					<div class="ml-auto">
						<button class="thm-btn-psd" onclick="javascript:location='noticeWrite'">등록</button>
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
							<a class="disabledLink" href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active disabledLink" href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<a class="disabledLink" href="notice?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a class="page-link" href="notice?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<a class="active disabledLink" href="notice?page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="notice?page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<a class="disabledLink" href="notice?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="notice?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</c:otherwise>
			</c:choose>
		</div>
		<br>

		<jsp:include page="../layout/footer.jsp" /> 
	</div>
	<!-- 메인 영역 -->
</body>
</html>