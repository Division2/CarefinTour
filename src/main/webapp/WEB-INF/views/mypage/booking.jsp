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

	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<div class="d-flex">
					<div class="mr-auto">
						<div class="container">
							<div class="alert alert-primary">
								<strong>잠깐 읽어보세요!</strong><br>
								- 자세한 여행상품 문의는 상품담당자를 통해 연락바라며 신용카드 결제 진행시 담당직원과 상담 후 진행하시기 바랍니다.<br>
								- 호텔은 동급의 다른 호텔로 변경 될 수 있으며, 출발 2일전 확정 일정표 및 나만의 여행가이드를 확인해 주시기 바랍니다.<br>
							</div>
						</div>
					</div>
				</div>
				<div class="d-flex">
					<div class="mx-auto">
						<table class="table table-hover table-white">
							<caption class="table_caption">고객님의 예약 내역입니다</caption>
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
			<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center" style="margin-left:200px;">
				<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="booking?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="booking?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 갯수만큼 버튼 생성 -->
				<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
					<c:choose>
						<c:when test="${i eq Paging.pageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="booking?page=${i}"><c:out value="${i}"/></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="booking?page=${i}"><c:out value="${i}"/></a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="booking?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="booking?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>