<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<script src='<c:url value="resources/js/Board.js"/>'></script>
	
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">${content.title}</h4>
				<p class="card-text"><small class="text-muted">${content.userId} | ${content.redate } | 조회수 ${content.hit }</small></p>
				<hr>
				<p class="card-text"><c:out escapeXml="false" value="${fn:replace(content.content, crlf, '<br>')}"/></p>
				<img src='<c:url value="/resources/image/photoreview_folder/${content.s_file_name}"/>' width="800" height="600" alt="로고">
			</div>
		</div>
		<br>
		<div class="d-flex">
			<div class="ml-auto">
				<form name="postUpdate" method="POST">
				<!-- 세션의 ID와 게시글 작성자가 같을 경우에만 수정, 삭제 권한을 줌 -->
				<c:if test="${sessionScope.member.getUserID() eq content.userId }">
					<button class="btn btn-primary" type="button" onclick="location.href='travelphotoModifyView?prid=${param.prid}'">수정</button>
					<button class="btn btn-danger" type="button" onclick="TravelPhotoDelete()">삭제</button>
				</c:if>
					<button class="btn btn-primary" type="button" onclick="location.href='travelphoto'">목록</button>
				</form>
			</div>
		</div>
		<form name="writeReply" action="writeReply.do" method="POST">
			<input type="hidden" name="bId" id="bId" value="z">
			<input type="hidden" name="writer" id="writer" value="${sessionScope.Account }">
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<textarea name="content" id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요" required></textarea>
				<button type="submit" class="btn btn-primary" id="btnReplySave" style="width: 100%; margin-top: 0px">등 록</button>
			</div>
		</form>
		<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
			<h6 class="border-bottom pb-2 mb-0">댓글 목록</h6>
			<div id="replyList"></div>
			<c:if test="${reply.isEmpty() }">
				<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">등록된 댓글이 없습니다.</p>
			</c:if>
			<c:forEach items="${reply }" var="reply">
			<div class="media text-muted pt-3">
				<img src='<c:url value="/resources/image/topangler/ea670d248b454a1ca18fa2e3da2b49bd.jpg"/>' class="circle-img mb-2" width="32" height="32" alt="User Img">
				<form name="replyUpdate" method="POST">
					<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">
						<span class="d-block">
							<strong class="text-gray-dark">${reply.getUserID() }</strong>
							<span style="padding-left: 7px; font-size: 9pt">
								<a href="#">수정</a>
								<a href="#">삭제</a>
							</span>
						</span>
						<c:out escapeXml="false" value="${reply.getContent() }"/>
					</p>
				</form>
			</div>
			</c:forEach>
		</div>
		<br>
	</div>
	
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>