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
					<form id="NoticeBoardModify" name="NoticeBoardModify" action="noticeModify" method="POST">
						<table class="table">
							<tbody>
								<tr>
									<td style="width: 5%">중요</td>
									<td>
										<c:choose>
											<c:when test="${content.important eq 'Y' }">
												<input type="checkbox" id="Important_CheckBox" name="Important_CheckBox" checked>
												<input type="hidden" id="Important" name="Important">
											</c:when>
											<c:when test="${content.important eq 'N' }">
												<input type="checkbox" id="Important_CheckBox" name="Important_CheckBox">
												<input type="hidden" id="Important" name="Important">
											</c:when>
										</c:choose>
									</td>
								</tr>
								<tr>
									<td>제목</td>
									<td>
										<input class="form-control" type="text" id="Title" name="Title" value='<c:out escapeXml="false" value="${content.getTitle() }"/>'>
									</td>
								</tr>
								<tr>
									<td>내용</td>
									<td>
										<textarea class="form-control" rows="10" id="Content" name="Content"><c:out escapeXml="false" value="${fn:replace(content.getContent(), '<br>', crlf)}"/></textarea>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" id="nId" name="nId" value="<%=request.getParameter("nId")%>">
						<div class="d-flex">
							<div class="ml-auto">
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