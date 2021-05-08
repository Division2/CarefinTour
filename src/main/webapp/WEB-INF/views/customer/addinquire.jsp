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
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>1:1 문의 작성</h1>
				<hr>
				<form>
				<div class="form-group row">
					<label class="col-sm-2">문의유형</label>
					<div class="col-sm-10">
						<select class="form-control">
							<option>문의 유형 선택</option>
							<option>패키지 문의</option>
							<option>여행 문의</option>
							<option>결제 문의</option>
							<option>호텔 문의</option>
							<option>예약 문의</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">주문번호</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="title">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">작성자</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="title">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">휴대전화</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="title">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">문의제목</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="title">
					</div>
				</div>
				<div class="form-group row">
					<label class="form-label col-sm-2">문의내용</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="10"></textarea>
					</div>
				</div>
					<div class="form-group row">
						<div class="col-sm-2"></div>
						<div class="col-sm-10">
							<button class="btn btn-primary">등록</button>
							<button class="btn btn-primary">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>