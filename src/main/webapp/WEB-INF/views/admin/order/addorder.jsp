<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/sb-admin-2.min.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/js/sb-admin-2.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
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
						<h1 class="h3 mb-0 text-gray-800">Add Order</h1>
					</div>
					<hr>
					<form id="OrderWrite" name="OrderWrite" action="addorder" method="POST">
						<div class="form-group row">
							<label class="form-label col-sm-1" for="productname">상품명</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="productname" id="productname">
							</div>
						</div>
						<div class="form-group row">
							<label class="form-label col-sm-1" for="userId">아이디</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="userId" id="userId">
							</div>
						</div>
						<div class="form-group row">
							<label class="form-label col-sm-1" for="name">주문자</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="name" id="name">
							</div>
						</div>
						<div class="form-group row">
							<label class="form-label col-sm-1" for="startdate">출발일</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="startdate" id="startdate">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="payment">결제금액</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="payment" id="payment">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="paymentdate">결제일자</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="paymentdate" id="paymentdate">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="status">결제상태</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="paymentstatus" id="paymentstatus" placeholder="0은대기 1은보류 2는완료 입니다.">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="phonenum">연락처</label>
							<div class="col-sm-6">
								<input class="form-control" type="text" name="phonenum" id="phonenum">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-1"></div>
							<div class="col-sm-10">
								<button type="button" class="btn btn-primary" onclick="location.href='order'">목록</button>
								<button type="button" class="btn btn-primary" onclick="orderWrite()">등록</button>
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
	</div>
</body>
</html>