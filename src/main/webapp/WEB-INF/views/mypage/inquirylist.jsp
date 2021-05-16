<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
		<div class="container">
			<div class="row">			
				<jsp:include page="sidemypage.jsp"/>
					<form action="MyPageInquiryList" method="POST">   
						<div class="col-md-8">
							<h1>1:1 문의 내역</h1>
							<hr>
							<table class="table table-hover table-white" style="width:800px;">
								<thead>
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>날짜</th>
									</tr>
								</thead>
								<tbody>	
									<c:forEach items="${MyPageInquiryList}" var="MyPageInquiryList">
										<c:choose>
											<c:when test = "${sessionScope.member.getUserID() eq MyPageInquiryList.userId}"> 				
												<tr>
													<td>${MyPageInquiryList.iId }</td>
													<td><a href="inquirydetails?iId=${MyPageInquiryList.iId}">${MyPageInquiryList.title }</a></td>
													<td><a href="inquirydetails?iId=${MyPageInquiryList.iId}">${MyPageInquiryList.reDate }</a></td>
												</tr>
											</c:when>
										</c:choose> 	
									</c:forEach>					
								</tbody>				
							</table>
						</div>
						</form>
					</div>
			<!-- 게시글 페이징 처리(기준 8개) -->
			<nav aria-label="Page navigation">
				<ul class="pagination justify-content-center">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="inquirylist?page=${Paging.prevPageNo}">Previus</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="inquirylist?page=${Paging.prevPageNo}">Previus</a>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="inquirylist?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="inquirylist?page=${i}"><c:out value="${i}"/></a>
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
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>