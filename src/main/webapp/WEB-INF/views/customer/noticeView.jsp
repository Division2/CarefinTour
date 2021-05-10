<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="resources/js/Board.js"/>'></script>
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
				<br>
				<h3 id="title">${content.title }</h3>
				<hr>
				<div class="d-flex">
					<small class="text-muted">작성자 : 블루핀투어</small>
					<div class="ml-auto">
						<p class="card-text"><small class="text-muted">작성일 : ${content.reDate }</small></p>
					</div>
				</div>
				<div class="jumbotron">
					<p id="content"><c:out escapeXml="false" value="${content.content }"/></p>
				</div>
				<hr>
				<div class="row mt-3">
					<div class="col-auto mr-auto"></div>
					<div class="col-auto">
					<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() ne 'User'}">
						<button type="button" class="btn btn-primary" onclick="location.href='noticeModifyView?nId=<%=request.getParameter("nId")%>&auth=${sessionScope.member.getGrade() }'">수정</button>
						<button type="button" class="btn btn-danger" onclick="NoticeDelete()">삭제</button>
					</c:if>
						<button type="button" class="btn btn-primary" onclick="location.href='notice'">목록</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>