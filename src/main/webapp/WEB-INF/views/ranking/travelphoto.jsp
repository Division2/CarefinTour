<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	
	<div class="container">
		<div class="d-flex">
			<h1>여행 포토</h1>
			<div class="ml-auto">
				<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() ne 'User'}">
					<button class="btn btn-primary" onclick="location.href='travelphotoWrite'">등록</button>
					<button class="btn btn-primary" onclick="location.href='myaddphoto'">내 후기</button>
				</c:if>
			</div>
		</div>
		<hr>
		<div class="row">
			<c:forEach var="TravelPhotoList" items="${TravelPhotoList}">
				<div class="col-sm-3">
					<a href="travelphotoView?prid=${TravelPhotoList.prid}">
						<c:choose>
							<c:when test="${TravelPhotoList.s_file_name eq null}">
								<img src='<c:url value="/resources/image/noImage.png"/>' width=200, height=200>
							</c:when>
							<c:otherwise>
								<img src='<c:url value="/resources/image/photoreview_folder/${TravelPhotoList.s_file_name}"/>' width=200, height=200>
							</c:otherwise>
						</c:choose>
					</a>
					<h5>
						<a href="travelphotoView?prid=${TravelPhotoList.prid}"><c:out value="${TravelPhotoList.title}" /></a>
					</h5>
					<p>
						<span class="sr-only">작성자</span>
						<span class="sv_member">
							<c:out value="${TravelPhotoList.userId}" />
						</span>
						<br>
						<span class="sr-only">조회</span><i class="fas fa-eye"></i>
							<c:out value="${TravelPhotoList.hit}" />
						<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i>
						<fmt:formatDate value="${TravelPhotoList.redate}" pattern="yyyy-MM-dd" />
					</p>
				</div>
			</c:forEach>
		</div>
		<!-- 게시글 페이징 처리(기준 10개) -->
		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center">
				<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="travelphoto?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="travelphoto?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 갯수만큼 버튼 생성 -->
				<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
					<c:choose>
						<c:when test="${i eq Paging.pageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="travelphoto?page=${i}"><c:out value="${i }"/></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="travelphoto?page=${i}"><c:out value="${i }"/></a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="travelphoto?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="travelphoto?page=${Paging.nextPageNo}">Next</a>
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