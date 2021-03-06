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
				
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Modify FAQ</h1>
					</div>
					<hr>
					<form id="FAQBoardModify" name="FAQBoardModify" action="faqModify" method="POST">
						<div class="form-group row">
							<label class="form-label col-sm-1" for="category">카테고리</label>
							<div class="col-sm-10">
								<select class="form-control" name="Category" id="Category">
									<option>${content.getCategory() }</option>
									<option value="해외여행">해외여행</option>
									<option value="테마여행">테마여행</option>
								</select>
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
								<textarea class="form-control" rows="20" id="Content" name="Content"><c:out escapeXml="false" value="${fn:replace(content.getContent(), '<br>', crlf)}"/></textarea>
							</div>
						</div>
						<div class="form-group row">
						<input type="hidden" id="fId" name="fId" value="<%=request.getParameter("fId")%>">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<button type="button" class="btn btn-primary" onclick="FAQModify()">수정</button>
								<button type="reset" class="btn btn-primary">취소</button>
								<button type="button" class="btn btn-primary" onclick="history.back()">이전</button>
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