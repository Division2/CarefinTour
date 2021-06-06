<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.time.format.DateTimeFormatter"%>
<%@ page import="java.time.LocalDateTime"%>
<%
	//현재시간 구해서 String으로 formating
	LocalDateTime nowTime = LocalDateTime.now();
	
	DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	DateTimeFormatter dateTimeFormatter2 = DateTimeFormatter.ofPattern("yyyy-MM");
	String now = nowTime.format(dateTimeFormatter);
	String beginMonth = nowTime.format(dateTimeFormatter2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper">
    	<!-- 좌측 배너 부분 -->
		<jsp:include page="../layout/banner.jsp"/>
		<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
				
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Inquiry Statistics</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-6">
							<form action="inquirydetailsearch" method="GET">
								<div class="input-group input-daterange">
									<input type="date" class="form-control" value="<%=beginMonth %>-01" id="start_date" name="start_date" max="<%=now %>">
									<div class="input-group-addon">&nbsp;~&nbsp;</div>
									<input type="date" class="form-control" value="<%=now %>" id="end_date" name="end_date" max="<%=now %>">
									<button type="submit" class="btn px-3 btn-primary">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form>
						</div>
						<div class="col-sm-4"></div>
						<div class="col-sm-2">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary" onclick="inquiryStatisticsDeleteSelection()">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<caption style="caption-side: top; text-align:right;"><a href="board">이전</a></caption>
						<colgroup>
							<col width="1%">
							<col width="1%">
							<col width="8%">
							<col width="30%">
							<col width="7%">
							<col width="7%">
							<col width="7%">
						</colgroup>
						<thead>
							<tr>
								<th><input type="checkbox" name="allCheck"></th>
								<th>IID</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${InquiryList }" var="InquiryList">
							<tr>
								<td><input type="checkbox" name="RowCheck" value="${InquiryList.getiId() }"></td>
								<td>${InquiryList.getiId() }</td>
								<td><span class="inquiry-category">${InquiryList.getCategory() }</span></td>
								<td><a href="/ex/inquiryView?iId=${InquiryList.getiId() }" target="_blank">${InquiryList.getTitle() }</a></td>
								<td>${InquiryList.getUserId() }</td>
								<td>${InquiryList.getReDate() }</td>
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
					
					<!-- 게시글 페이징 처리(기준 10개) -->
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<c:choose>
								<c:when test="${start_date ne null && end_date ne null}">
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirydetailsearch?start_date=${start_date }&end_date=${end_date }&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirydetail?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirydetail?page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="inquirydetail?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="inquirydetail?page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="inquirydetail?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="inquirydetail?page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>