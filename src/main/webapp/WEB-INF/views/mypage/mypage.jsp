<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	<script src='<c:url value="resources/js/Authority.js"/>'></script>

	<c:if test="${sessionScope.member eq null}">
		<script>AuthCheck();</script>
	</c:if>
	
	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<div class="jumbotron mx-4">
					<div class="d-flex">
						<div class="mx-auto">
							${member.getName()}
						</div>
						<div class="mx-auto">
							${member.getMileage()}M
						</div>
					</div>
					<div class="d-flex">
						<div class="mx-auto">
							${member.getPhone()}
						</div>
						<div class="mx-auto">
							${member.getEmail()}
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="mx-auto">
						<table class="table table-hover table-white">
							<caption class="table_caption">최근 예약 내역</caption>
							<colgroup>
								<col width="300px"/>
								<col width="300px"/>
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">여행상품</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${MyPageOrderList}" var="MyPageOrderList">
									<c:choose>
										<c:when test = "${sessionScope.member.getUserID() eq MyPageOrderList.userid}"> 	
											<tr>
												<td>${MyPageOrderList.productname}</td>
												<td>${MyPageOrderList.paymentdate}</td>
											</tr>
										</c:when>
									</c:choose>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- 게시글 페이징 처리(기준 8개) -->
		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center" style="margin-left:200px;">
				<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="mypage?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="mypage?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 갯수만큼 버튼 생성 -->
				<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
					<c:choose>
						<c:when test="${i eq Paging.pageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="mypage?page=${i}"><c:out value="${i}"/></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="mypage?page=${i}"><c:out value="${i}"/></a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="mypage?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="mypage?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
	
<jsp:include page="../layout/footer.jsp"/>
</body>
</html>