<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	
	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>공지사항</h1>
				<hr>
				<div class="d-flex">
					<div class="mr-auto"></div>
					<form action="noticeSearch" method="GET" class="form-inline">
						<select class="form-control">
							<option>제목</option>
						</select>
						<input type="text" name="title" id="title" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
						<button type="submit" class="btn px-3 btn-primary">
							<i class="fas fa-search"></i>
						</button>
					</form>
				</div>
				<table class="table table-hover table-white">
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
							<td style="background: rgb(120,215,255);"><i class="fas fa-bullhorn"></i></td>
							<td style="background: rgb(120,215,255);"><a href="noticeView?nId=${NoticeBoardVO.nId }"><c:out escapeXml="false" value="${NoticeBoardVO.title }"/></a></td>
							<td style="background: rgb(120,215,255);">${NoticeBoardVO.reDate }</td>
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
							<c:when test="${Title ne null }">
								<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
				<c:if test="${sessionScope.member.getUserID() ne null && sessionScope.member.getGrade() eq 'Admin'}">
				<div class="d-flex">
					<div class="ml-auto">
						<button class="btn btn-primary" onclick="javascript:location='noticeWrite'">등록</button>
					</div>
				</div>
				<br>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>