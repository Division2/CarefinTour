<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<script src='<c:url value="/resources/js/Board.js"/>'></script>
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Notice Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-8">
							<h1>공지사항</h1>
							<hr>
							<br>
							<h3 id="title"><c:out escapeXml="false" value="${content.title }"/></h3>
							<hr>
							<div class="d-flex">
								<small class="text-muted">작성자 : 블루핀투어</small>
								<div class="ml-auto">
									<p class="card-text"><small class="text-muted">작성일 : ${content.reDate }</small></p>
								</div>
							</div>
							<div class="jumbotron">
								<p id="content"><c:out escapeXml="false" value="${fn:replace(content.getContent(), crlf, '<br>')}"/></p>
							</div>
							<hr>
							<div class="row mt-3">
								<div class="col-auto mr-auto"></div>
								<div class="col-auto">
									<button type="button"  class="btn btn-primary" onclick="location.href='noticeModifyView?nId=<%=request.getParameter("nId")%>'">수정</button>
									<button type="button"  class="btn btn-danger" onclick="NoticeDelete2()">삭제</button>
									<button type="button" class="btn btn-primary" onclick="location.href='notice'">목록</button>
								</div>
							</div>
						</div>
					</div>
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