<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	<script src='<c:url value="resources/js/Authority.js"/>'></script>

	<c:if test="${sessionScope.member eq null}">
		<script>AuthCheck();</script>
	</c:if>
	
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
							<td>${MyPageInquiryList.category }</td>
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
		<!-- 게시글 페이징 처리(기준 10개) -->
		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center" style="margin-left:200px;">
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
							<a class="page-link" href="inquirylist?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="inquirylist?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</nav>
	</div>
		
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>