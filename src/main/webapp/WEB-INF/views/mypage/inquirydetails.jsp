<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<h1>1:1 문의 내역</h1>
				<hr>
				<div class="form-group row">
					<label class="col-sm-1" for="title">제목</label>
					<div class="col-sm-10">
						<input type="text" name="title" id="title" class="form-control" value="${MyPageInquiryRead.title}" readonly >
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-1" for="content">내용</label>
					<div class="col-sm-10">
						<textarea name="content" id="content" class="form-control" rows="10" readonly>${MyPageInquiryRead.content}</textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>