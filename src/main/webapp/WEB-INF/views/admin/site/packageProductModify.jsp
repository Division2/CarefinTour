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
<script type="text/javascript">
$(document).ready(function(){
	//테마 지역 값에 따라서 콤보박스 선택되게
	$("#theme").val("${pdtail.getTheme()}").prop("selected", true);
	$("#area").val("${pdtail.getArea()}").prop("selected", true);

	var formObj = $("form[name='add']");
	$(document).on("click","#fileDel", function() {
		$(this).parent().remove();
	})
	fn_addFile();
	
})
//파일추가	
function fn_addFile() {
	var fileIndex = 1;
	
	$("#fileAdd_btn").on("click", function() {
		$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
	});
	
	$(document).on("click","#fileDelBtn", function() {
		$(this).parent().remove();
	});
}
	
</script>
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
							<h4>여행패키지 정보수정</h4><br>
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
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>출발일</b></span>
											</div>
											<input type="text" value=" ${pdtail.getStartravelperiod()}" class="form-control">
										</div>
									</div>
									
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>도착일</b></span>
											</div>
											<input type="text" value=" ${pdtail.getArrivaltravelperiod()}" class="form-control">
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
											<select class="form-control" id="theme" name="theme">
												<option value="허니문">허니문</option>
												<option value="낚시">낚시</option>
												<option value="골프">골프</option>
												<option value="없음">없음</option>
											</select>
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>지역</b></span>
											</div>
											<select class="form-control" id="area" name="area">
												<option>북미/중남미/하와이</option>
												<option>대만/동남아/서남아</option>
												<option>중국/홍콩/러시아</option>
												<option>유럽/아프리카</option>
												<option>일본</option>
											</select>
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
											<input type="text" value="${pdtail.getAdultprice()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>아동</b></span>
											</div>
											<input type="text" value="${pdtail.getKidprice()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>유아</b></span>
											</div>
											<input type="text" value="${pdtail.getSmallkidprice()}" class="form-control" >
										</div>
									</div>
								</div>
								<hr>
								출발 최소 인원 / 최대 예약인원 
								<div class="form-group row">
									<div class="col-xs-6 col-md-6">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>최소인원</b></span>
											</div>
											<input type="text" value="${pdtail.getMinreservation()}" class="form-control" >
										</div>
									</div>
									<div class="col-xs-6 col-md-6">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>최대인원</b></span>
											</div>
											<input type="text" value="${pdtail.getMaxreservation()}" class="form-control" >
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
					                <span>파일 목록</span>
									<div class="form-group" style="border: 1px solid #dbdbdb;">								
										<div id="fileIndex">
											<div>
												<input type="file" name="file">
												<button id="fileDel" type="button" style='float:right;'>삭제</button><br>
											</div>
										</div>
									</div>
									
									<c:forEach var="row" items="${list }"> 
									<input type="hidden" id="IDX" value="${row.IDX }"> 
zz									</c:forEach>

								</table>
								<hr style=background-color:#368AFF;>
								<!-- 이전, 수정 버튼 -->
								<div align="right">
									<input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
									<input class="btn btn-primary" value="이전" onclick="history.back()" style="width:60px;">
									<input class="btn btn-primary" value="목록" onclick="location.href='packageproduct'" style="width:60px;">		
							        <input class="btn btn-primary" type="submit" value="확인">
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