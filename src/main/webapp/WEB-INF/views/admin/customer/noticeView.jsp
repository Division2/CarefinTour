<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/sb-admin-2.min.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/js/sb-admin-2.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
<script src='<c:url value="/resources/js/Board2.js"/>'></script>
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
									<button type="button" type="button" class="btn btn-primary" onclick="location.href='noticeModifyView?nId=<%=request.getParameter("nId")%>'">수정</button>
									<button type="button" class="btn btn-danger" onclick="NoticeDelete()">삭제</button>
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