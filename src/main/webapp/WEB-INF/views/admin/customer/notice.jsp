<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">#stresstable { background: rgb(245,245,245); }</style>
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
						<h1 class="h3 mb-0 text-gray-800">Notice Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-8">
							<form action="noticeSearch" method="GET" class="form-inline">
								<select class="form-control" id="search" name="search">
									<option value="title">제목</option>
								</select>
								<input type="text" id="keyword" name="keyword" class="form-control ml-1 mr-1" placeholder="검색어를 입력해주세요" required>
								<button type="submit" class="btn px-3 btn-primary">
									<i class="fas fa-search"></i>
								</button>
							</form>
						</div>	
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button type="button" class="btn btn-primary" onclick="location.href='notice'">목록</button>
									<button class="btn btn-primary" onclick="location.href='noticeWrite'">등록</button>
									<button type="button"  class="btn btn-danger" onclick="NoticeDeleteSelection()">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<colgroup>
							<col width="1%">
							<col width="1%">
							<col width="30%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th><input type="checkbox" name="allCheck"></th>
								<th>No</th>
								<th>제목</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${NoticeList }" var="NoticeBoardVO">
								<tr>
									<c:choose>
										<c:when test="${NoticeBoardVO.important ne 'Y' }">
											<td><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td>${NoticeBoardVO.nId }</td>
											<td><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td>${NoticeBoardVO.reDate }</td>
										</c:when>
										<c:otherwise>
											<td id="stresstable"><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td id="stresstable"><i class="fas fa-bullhorn"></i></td>
											<td id="stresstable"><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.title }</a></td>
											<td id="stresstable">${NoticeBoardVO.reDate }</td>
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
								<c:when test="${search ne null && keyword ne null }">
									<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.prevPageNo}">Previus</a>
											</li>
										</c:otherwise>
									</c:choose>
									<!-- 페이지 갯수만큼 버튼 생성 -->
									<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
										<c:choose>
											<c:when test="${i eq Paging.pageNo }">
												<li class="page-item disabled">
													<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:when>
											<c:otherwise>
												<li class="page-item">
													<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${i}"><c:out value="${i }"/></a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
									<c:choose>
										<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.nextPageNo}">Next</a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?search=${search}&keyword=${keyword}&page=${Paging.nextPageNo}">Next</a>
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