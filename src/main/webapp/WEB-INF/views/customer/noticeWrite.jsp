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
				<form id="notice" name="notice" action="/ex/noticeWrite" method="POST">
					<div class="form-group row">
						<label class="form-label col-sm-2" for="important">중요</label>
						<div class="col-sm-1">
							<input class="form-control" type="checkbox" id="Important" name="Important">
						</div>
					</div>
					<div class="form-group row">
						<label class="form-label col-sm-2" for="Title">제목</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" id="Title" name="Title">
						</div>
					</div>
					<div class="form-group row">
						<label class="form-label col-sm-2" for="Content">내용</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="10" id="Content" name="Content"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-2"></div>
						<div class="col-sm-10">
							<button type="button" class="btn btn-primary" onclick="NoticeWrite()">등록</button>
							<button type="reset" class="btn btn-primary">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>