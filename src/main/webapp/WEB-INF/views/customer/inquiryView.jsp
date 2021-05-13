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
				<h1>1:1 문의</h1>
				<hr>
				<br>
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">제목</h4>
						<p class="card-text"><small class="text-muted">서브 제목</small></p>
						<hr>
						<p class="card-text"><c:out escapeXml="false" value="내용"/></p>
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-auto mr-auto"></div>
					<div class="col-auto">
						<form name="postUpdate" method="POST">
						<!-- 세션의 ID와 게시글 작성자가 같을 경우에만 수정, 삭제 권한을 줌 -->
						<c:if test="${sessionScope.Account eq dto.name }">
							<button class="btn btn-primary" type="button" onclick="modifyView()">수정</button>
							<button class="btn btn-primary" type="button" onclick="deletePost()">삭제</button>
						</c:if>
							<button class="btn btn-primary" type="button" onclick="window.location.href='board.do'">목록</button>
						</form>
					</div>
				</div>
			<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
				<h6 class="border-bottom pb-2 mb-0">댓글 목록</h6>
				<div id="replyList"></div>
				<c:if test="">
					<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">등록된 댓글이 없습니다.</p>
				</c:if>
				<div class="media text-muted pt-3">
					<svg class="bd-placeholder-img mr-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder:32x32">
						<title>꾸엑</title>
						<rect width="100%" height="100%" fill="#007bff"></rect>
						<text x="50%" fill="#007bff" dy=".3em">32x32</text>
					</svg>
					<form name="replyUpdate" method="POST">
						<p class="media-body pb-3 mb-0 small lh-125 border-bottom horder-gray">
							<span class="d-block">
								<strong class="text-gray-dark">123</strong>
								<span style="padding-left: 7px; font-size: 9pt">
									<c:out value=""/>
									<!-- 대댓글, 댓글 수정은 ajax말고는 modal로 가능하다고 한당.. 나중에 천천히 하는걸로 하자. -->
										<a href="#" data-toggle="modal" data-target="#addReply" data-postid="" data-replyid="">답글</a>
									<!-- 세션의 ID와 댓글 작성자가 같을 경우에만 수정, 삭제 권한을 줌 -->
										<a href="#" data-toggle="modal" data-target="#modifyReply" data-postid="" data-replyid="" data-content="">수정</a>
										<a href="javascript:deleteReply();">삭제</a>
								</span>
							</span>
							<c:out escapeXml="false" value=""/>
						</p>
					</form>
				</div>
			<form name="writeReply" action="writeReply.do" method="POST">
				<input type="hidden" name="bId" id="bId" value="">
				<input type="hidden" name="writer" id="writer" value="${sessionScope.Account }">
				<div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
					<textarea name="content" id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요" required></textarea>
					<button type="submit" class="btn btn-primary" id="btnReplySave" style="width: 100%; margin-top: 0px">등 록</button>
				</div>
			</form>
			</div>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>