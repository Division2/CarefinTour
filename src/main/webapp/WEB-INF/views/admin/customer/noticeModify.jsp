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
				<script src='<c:url value="/resources/js/Board.js"/>'></script>
				
				<!-- 상단 헤더 부분 -->
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Modify Notice</h1>
					</div>
					<hr>
				<form id="NoticeBoardModify" name="NoticeBoardModify" action="noticeModify" method="POST">
						<div class="form-group row">
							<label class="form-label col-sm-1" for="important">중요</label>
							<div class="col-sm-1">
								<c:choose>
									<c:when test="${content.important eq 'Y' }">
										<input class="form-control" type="checkbox" id="Important_CheckBox" name="Important_CheckBox" checked>
										<input type="hidden" id="Important" name="Important">
									</c:when>
									<c:when test="${content.important eq 'N' }">
										<input class="form-control" type="checkbox" id="Important_CheckBox" name="Important_CheckBox">
										<input type="hidden" id="Important" name="Important">
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="title">제목</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" id="Title" name="Title" value='<c:out escapeXml="false" value="${content.getTitle() }"/>'>
							</div>
						</div>
						<div class="form-group row">
							<label class="form-label col-sm-1">내용</label>
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
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>