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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper" style="width:80%; max-width:1100px;">
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
					<div >
						<div class="form-title text-center">
							<h4>여행패키지 상세정보</h4><br>
						</div>
						<font size="3">No <%= request.getParameter("PID") %></font>
						<hr style=background-color:#368AFF;>
						<div class="d-flex flex-column">
						
							<form>
								<!-- 상품명, PID, 상품코드 -->
								기본정보
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>상품명</b></span>
											</div>
											<input type="text" value="${pdtail.getProductname()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>감독</b></span>
											</div>
											<input type="text" value="${pdtail.getDirector()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>상품코드</b></span>
											</div>
											<input type="text" value=" ${pdtail.getProductcode()}" class="form-control" >
										</div>
									</div>
								</div>
								<!--기간, 등록일  -->
								<div class="form-group row">
									<div class="col-xs-8 col-md-8">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>기간</b></span>
											</div>
											<input type="text" value=" ${pdtail.getStartravelperiod()} ~ ${pdtail.getArrivaltravelperiod()}" class="form-control">
										</div>
									</div>
	
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>등록일</b></span>
											</div>
											<input type="text" value=" ${pdtail.getRedate()}" class="form-control">
										</div>
									</div>
								</div>
								
								<!--테마, 지역 ,도시  -->
								여행지 정보
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>테마</b></span>
											</div>
											<input type="text" value="${pdtail.getTheme()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>지역</b></span>
											</div>
											<input type="text" value="${pdtail.getArea()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>도시</b></span>
											</div>
											<input type="text" value="${pdtail.getTravelcity()}" class="form-control" >
										</div>
									</div>
								</div>
								
								패키지 인당 비용
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>성인</b></span>
											</div>
											<input type="text" value="${pdtail.getAdultprice()}원" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>아동</b></span>
											</div>
											<input type="text" value="${pdtail.getKidprice()}원" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>유아</b></span>
											</div>
											<input type="text" value="${pdtail.getSmallkidprice()}원" class="form-control" >
										</div>
									</div>
								</div>
								<hr>
								예약상황
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>현재인원</b></span>
											</div>
											<input type="text" value="${pdtail.getReservationstatus()}명" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>최소인원</b></span>
											</div>
											<input type="text" value="${pdtail.getMinreservation()}명" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>최대인원</b></span>
											</div>
											<input type="text" value="${pdtail.getMaxreservation()}명" class="form-control" >
										</div>
									</div>
								</div>
								
								연령별 예약자 수
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>성인</b></span>
											</div>
											<input type="text" value="${pdtail.getAdultcount()}명" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>아동</b></span>
											</div>
											<input type="text" value="${pdtail.getKidcount()}명" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>유아</b></span>
											</div>
											<input type="text" value="${pdtail.getSmallkidcount()}명" class="form-control" >
										</div>
									</div>
								</div>
								총 액
								<div class="form-group row">
									<div class="col-xs-12 col-md-12">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>총액</b></span>
											</div>
											<input type="text" value="${pdtail.getPrice()}원" class="form-control" >
										</div>
									</div>
								</div>
								<hr >
								<!-- 개요 -->
								여행소개
								<div class="form-group">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">개요</span>
										</div>
										<textarea rows="5" cols="25" name="comment" id="comment" class="form-control"></textarea>
									</div>
								</div>
								<!-- 사진 -->
								<h5>사진</h5>
								<table class="table table-hover table-white">
									<img src='<c:url value="/resources/image/product_package/${pdtail.getS_file_name()}"/>' alt="PackageProduct Img">
								</table>
								<hr style=background-color:#368AFF;>
								<!-- 이전, 수정 버튼 -->
								<div align="right">
									<input class="btn btn-primary" value="이전" onclick="history.back()" style="width:60px;">	
							        <input class="btn btn-primary" type="button" onclick="location.href='packageProductModify?PID=<%=request.getParameter("PID")%>'" value="수정">
						        </div>
							</form>
						</div>
					</div>
				
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