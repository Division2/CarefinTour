<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	
		<div class="container">
			<div class="d-flex">
				<h1>내가 쓴 여행후기</h1>
				<div class="ml-auto">
				</div>
			</div>
			<hr>
			<div class="row">
				<c:forEach var="mylist" items="${mylist}">	
					<div class="col-sm-3">
						<c:choose>
							<c:when test = "${sessionScope.member.getName() eq mylist.name}">
								<a href="/ex/updateView?prid=${mylist.prid}">
									<img src='<c:url value="/resources/image/photoreview_folder/${mylist.s_file_name}"/>' width=200, height=200, alt="로고">
								</a>
								<h6>
									<a href="/ex/updateView?prid=${mylist.prid}"><c:out value="${mylist.title}"/></a>
								</h6>
								<p>
									<span class="sr-only">작성자 </span>
									<span class="sv_member"><c:out value="${mylist.name}"/></span>
									<br>
									<span class="sr-only">조회 </span><i class="fas fa-eye"></i><c:out value="${mylist.hit}"/> <br>
									<span class="sr-only">작성일 </span><i class="far fa-clock"></i><fmt:formatDate value="${mylist.redate}" pattern="MM-dd"/>
								</p>
							</c:when>
						</c:choose>												
					</div>
				</c:forEach>
			</div>
			<!-- 게시글 페이징 처리(기준 8개) -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="mylist.my?page=${Paging.prevPageNo}">Previus</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="mylist.my?page=${Paging.prevPageNo}">Previus</a>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="mylist.my?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="mylist.my?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="traveleview?page=${Paging.nextPageNo}">Next</a>
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
		</div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>