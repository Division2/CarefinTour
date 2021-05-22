<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/photo.png"/>);">
			<div class="container">
				<h2>여행 포토</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>

		<section class="tour-one tour-grid">
			<div class="container">
				<div class="d-flex">
					<div class="ml-auto">
						<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() ne 'User'}">
							<button class="thm-btn-psd" onclick="location.href='travelphotoWrite'">등록</button>
							<button class="thm-btn-psd" onclick="location.href='myaddphoto'">내 후기</button>
						</c:if>
					</div>
				</div>
				<br>
				<div class="row">
					<c:forEach var="TravelPhotoList" items="${TravelPhotoList}">
					<div class="col-lg-4 col-md-6">
						<div class="tour-one__single">
							<div class="tour-one__image">
								<c:choose>
									<c:when test="${TravelPhotoList.s_file_name eq null}">
										<img src='<c:url value="/resources/image/noImage.png"/>'>
									</c:when>
									<c:otherwise>
										<img src='<c:url value="/resources/image/photoreview_folder/${TravelPhotoList.s_file_name}"/>' alt="">
									</c:otherwise>
								</c:choose>
							</div>
							<div class="tour-one__content">
								<h3>
									<a href="travelphotoView?prid=${TravelPhotoList.prid}"><c:out value="${TravelPhotoList.title}" /></a>
								</h3>
								<p><c:out value="${TravelPhotoList.userId}" /></p>
								<ul class="tour-one__meta list-unstyled">
									<li><a href="tour-details.html"><i class="far fa-user-circle"></i> <c:out value="${TravelPhotoList.hit}" /></a></li>
									<li><a href="tour-details.html"><i class="far fa-clock"></i> <fmt:formatDate value="${TravelPhotoList.redate}" pattern="yyyy-MM-dd" /></a></li>
								</ul>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</section>
		
		<!-- 게시글 페이징 처리(기준 10개) -->
		<div class="post-pagination">
			<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
					<a class="disabledLink" href="travelphoto?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:when>
				<c:otherwise>
					<a class="page-link" href="travelphoto?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
				</c:otherwise>
			</c:choose>
			<!-- 페이지 갯수만큼 버튼 생성 -->
			<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
				<c:choose>
					<c:when test="${i eq Paging.pageNo }">
						<a class="active" href="travelphoto?page=${i}"><c:out value="${i }"/></a>
					</c:when>
					<c:otherwise>
						<a href="travelphoto?page=${i}"><c:out value="${i }"/></a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
			<c:choose>
				<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
					<a class="disabledLink" href="travelphoto?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:when>
				<c:otherwise>
					<a href="travelphoto?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
				</c:otherwise>
			</c:choose>
		</div>
		<br>

		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>