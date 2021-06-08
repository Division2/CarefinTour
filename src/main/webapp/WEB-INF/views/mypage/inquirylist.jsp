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
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
	
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
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
					<jsp:include page="sidemypage.jsp"/>
					
					<div class="col-md-8">
						<h1>1:1 문의 내역</h1>
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
							<c:forEach items="${MyPageInquiryList}" var="MyPageInquiryList">
								<tr>
									<td>${MyPageInquiryList.iId }</td>
									<td><span class="inquiry-category">${MyPageInquiryList.category }</span></td>
									<td><a href="inquirydetails?iId=${MyPageInquiryList.iId }">${MyPageInquiryList.title }</a></td>
									<td>${MyPageInquiryList.name}</td>
									<td>${MyPageInquiryList.reDate }</td>
								<c:choose>
									<c:when test="${MyPageInquiryList.status eq 0}">
										<td><span class="inquiry-status status-0">답변대기</span></td>
									</c:when>
									<c:when test="${MyPageInquiryList.status eq 1}">
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
					</div>
				</div>
			</div>
		</section>
		
		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
					<a class="disabledLink" href="inquirylist?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:when>
				<c:otherwise>
					<a href="inquirylist?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 갯수만큼 버튼 생성 -->
			<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
				<c:choose>
					<c:when test="${i eq Paging.pageNo }">
						<a class="active disabledLink" href="inquirylist?page=${i}"><c:out value="${i}"/></a>
					</c:when>
					<c:otherwise>
						<a href="inquirylist?page=${i}"><c:out value="${i}"/></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.finalPageNo}">
					<a class="disabledLink" href="inquirylist?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:when>
				<c:otherwise>
					<a href="inquirylist?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
		<br>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>