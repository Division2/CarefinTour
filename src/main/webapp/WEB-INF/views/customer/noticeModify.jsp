<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="resources/js/Board.js"/>'></script>
<script src='<c:url value="resources/js/Authority.js"/>'></script>
</head>
<body>

	<jsp:include page="../layout/header.jsp"/>
	
	<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() eq 'User'}">
		<script>NoticeAuthCheck();</script>
	</c:if>
	
	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>

			<div class="col-md-8">
				<h1>공지사항</h1>
				<hr>
				<form id="NoticeBoardModify" name="NoticeBoardModify" action="noticeModify" method="POST">
					<div class="form-group row">
						<label class="form-label col-sm-2" for="important">중요</label>
						<div class="col-sm-1">
						<c:choose>
							<c:when test="${content.important eq on }">
								<input class="form-control" type="checkbox" id="Important" name="Important" checked>
							</c:when>
							<c:when test="${content.important ne on }">
								<input class="form-control" type="checkbox" id="Important" name="Important">
							</c:when>
						</c:choose>
						</div>
					</div>
					<div class="form-group row">
						<label class="form-label col-sm-2" for="Title">제목</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" id="Title" name="Title" value="${content.getTitle() }">
						</div>
					</div>
					<div class="form-group row">
						<label class="form-label col-sm-2" for="Content">내용</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="10" id="Content" name="Content"><c:out escapeXml="false" value="${fn:replace(content.getContent(), '<br>', crlf)}"/></textarea>
						</div>
					</div>
					<div class="form-group row">
					<input type="hidden" id="nId" name="nId" value="<%=request.getParameter("nId")%>">
						<div class="col-sm-2"></div>
						<div class="col-sm-10">
							<button type="button" class="btn btn-primary" onclick="NoticeModify()">수정</button>
							<button type="reset" class="btn btn-primary">취소</button>
							<button type="button" class="btn btn-primary" onclick="history.back()">이전</button>
							<button type="button" class="btn btn-primary" onclick="location.href='notice'">목록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>