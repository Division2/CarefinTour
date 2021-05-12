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
<script src='<c:url value="resources/js/Authority.js"/>'></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	
	<c:if test="${sessionScope.member ne null}">
		<script>AuthCheck();</script>
	</c:if>

	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>1:1 문의 작성</h1>
				<hr>
				<form id="InquiryBoardWrite" name="InquiryBoardWrite" action="inquiryWrite" method="POST">
				<div class="form-group row">
					<label class="col-sm-2" for="Category">문의유형</label>
					<div class="col-sm-10">
						<select class="form-control" id="Category" name="Category">
							<option>문의 유형 선택</option>
							<option value="패키지문의">패키지 문의</option>
							<option value="여행문의">여행 문의</option>
							<option value="결제문의">결제 문의</option>
							<option value="호텔문의">호텔 문의</option>
							<option value="예약문의">예약 문의</option>
						</select>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2" for="Name">작성자</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="Name" name="Name">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2" for="Phone">휴대전화</label>
					<div class="col-sm-10">
						<input class="form-control" type="tel" id="Phone" name="Phone">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2" for="Title">문의제목</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" id="Title" name="Title">
					</div>
				</div>
				<div class="form-group row">
					<label class="form-label col-sm-2" for="Content">문의내용</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="10" id="Content" name="Content"></textarea>
					</div>
				</div>
					<div class="form-group row">
						<div class="col-sm-2"></div>
						<div class="col-sm-10">
							<button type="button" class="btn btn-primary" onclick="InquiryWrite()">등록</button>
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