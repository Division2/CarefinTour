<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper">
    	<!-- 좌측 배너 부분 -->
		<jsp:include page="../layout/banner.jsp"/>
		<script src='<c:url value="/resources/js/Board.js"/>'></script>
		<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Add Notice</h1>
					</div>
					<hr>
					<form id="NoticeBoardWrite" name="NoticeBoardWrite" action="addnotice" method="POST">
						<div class="form-group row">
							<label class="form-label col-sm-1" for="important">중요</label>
							<div class="col-sm-1">
								<input class="form-control" type="checkbox" id="Important_CheckBox" name="Important_CheckBox">
								<input type="hidden" id="Important" name="Important">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="title">제목</label>
							<div class="col-sm-10">
								<input class="form-control" type="text" name="Title" id="Title">
							</div>
						</div>
						<div class="form-group row">
							<label class="form-label col-sm-1">내용</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="20" name="Content" id="Content"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<button type="button" class="btn btn-primary" onclick="NoticeWrite()">등록</button>
								<button type="reset" class="btn btn-primary">취소</button>
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
	</div> -->
</body>
</html>