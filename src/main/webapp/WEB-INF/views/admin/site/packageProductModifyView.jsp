<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<script type="text/javascript">
$(document).ready(function(){
	//테마, 지역, flag 값에 따라서 콤보박스 선택되게
	$("#theme").val("${pdtail.getTheme()}").prop("selected", true);
	$("#area").val("${pdtail.getArea()}").prop("selected", true);
	$("#flag").val("${pdtail.getFlag()}").prop("selected", true);
})
</script>
<style type="text/css">
	.ck-content{width:750px; height:300px; }
	
	.containerTop {
		display: flex;
		justify-content: space-between;
		align-items: flex-end
	}
</style>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper" style="width:80%; max-width:1100px;" align="left">
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
						<div class="containerTop">
							<div><font size="5">No <%= request.getParameter("PID") %></font></div>
							<div><font size="2">등록일 : ${pdtail.getRedate()} / 조회수 : ${pdtail.getHit() }</font></div>
						</div>
						<hr style=background-color:#368AFF;>
						<div class="d-flex flex-column">
						
							<form action="ProductPackageModify" role="form" method="POST" enctype="multipart/form-data" class="contact-one__form">
								<!-- 상품명, PID, 상품코드 -->
								기본정보
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>상품명</b></span>
											</div>
											
											<input type="text" value="${pdtail.getProductname()}" id="productname" name="productname" class="form-control" required>
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>가이드</b></span>
											</div>
											<input type="text" value="${pdtail.getDirector()}" id="director" name="director" class="form-control" required>
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>최소인원</b></span>
											</div>
											<input type="text" value="${pdtail.getMinreservation()}" id="minreservation" name="minreservation" class="form-control" required>
										</div>
									</div>
								</div>
								<!--기간, 등록일  -->
								기간 및 상태
								<div class="form-group row">
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>출발일</b></span>
											</div>
											<input type="text" value="${pdtail.getStartravelperiod()}" id="startravelperiod" name="startravelperiod" class="form-control" required>
										</div>
									</div>
									
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>도착일</b></span>
											</div>
											<input type="text" value="${pdtail.getArrivaltravelperiod()}" id="arrivaltravelperiod" name="arrivaltravelperiod" class="form-control" required>
										</div>
									</div>

									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>게시상태</b></span>
											</div>
											<select class="form-control" id="flag" name="flag">
												<option value="1">Open</option>
												<option value="0">Close</option>
											</select>
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
											<input type="text" value="${pdtail.getAdultprice()}"  id="adultprice" name="adultprice" class="form-control" required>
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>아동</b></span>
											</div>
											<input type="text" value="${pdtail.getKidprice()}" id="kidprice" name="kidprice" class="form-control" required>
										</div>
									</div>
									<div class="col-xs-4 col-md-4">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>유아</b></span>
											</div>
											<input type="text" value="${pdtail.getSmallkidprice()}" id="smallkidprice" name="smallkidprice"  class="form-control" required>
										</div>
									</div>
								</div>
								
								<hr>
								<!--테마, 지역  -->
								여행지 정보
								<div class="form-group row">
									<div class="col-xs-6 col-md-6">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>테마</b></span>
											</div>
											<select class="form-control" id="theme" name="theme">
												<option value="허니문">허니문</option>
												<option value="낚시">낚시</option>
												<option value="골프">골프</option>
												<option value="해외">해외</option>
											</select>
										</div>
									</div>
									<div class="col-xs-6 col-md-6">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text"><b>지역</b></span>
											</div>
											<select class="form-control" id="area" name="area">
												<option>미주/중남미/하와이</option>
												<option>대만/동남아/서남아</option>
												<option>중국/홍콩/러시아</option>
												<option>유럽/아프리카</option>
												<option>일본</option>
											</select>
										</div>
									</div>
								</div>
								<hr >
								<!-- 개요 -->
								여행소개
								<div class="form-group">
									<div class="input-group my-2 mb-1">
										<textarea name="overview" id="overview" class="form-control">${fn:replace(pdtail.getOverview(), '<br>', crlf)}</textarea>
									</div>
								</div>
								여행준비물
								<div class="form-group">
									<div class="input-group my-2 mb-1">
										<textarea  name="supplies" id="supplies" class="form-control">${pdtail.getSupplies()}</textarea>
									</div>
								</div>
								여행일정
								<div class="form-group">
									<div class="input-group my-2 mb-1">
										<textarea name="travelplan" id="travelplan" class="form-control">${pdtail.getTravelplan()}</textarea>
									</div>
								</div>
								<!-- 사진 -->
								<h5>사진</h5>
								<div class="col-xs-12 col-md-12">
									<input type="hidden" id="pid" name="pid" value="${pdtail.getPid() }" />
									<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
									<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
									
									<div class="inputArea" > 
										<div class="select_img"> 
										<img src='<c:url value="/resources/images/product_package/${pdtail.getS_file_name()}"/>' alt="" class="img-fluid" >
										<input type="hidden" name="imgFile" value="${pdtail.getS_file_name() }" />
										
										<input type="file" id="imgFile" name="file" /><br>
										</div>
									</div>
								</div>

								<hr style=background-color:#368AFF;>
								<!-- 이전, 수정 버튼 -->
								<div align="right">
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
			<script src='<c:url value="/resources/js/Board.js"/>'></script>
			<script>
				//이미지 파일 업로드 관련
				$("#imgFile").change(function(){
					if(this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img").attr("src", data.target.result).width(1000);								
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
				
				//텍스트area부분 에디터 사용
				ClassicEditor.create( document.querySelector( '#overview' ) )
		  	 	ClassicEditor.create( document.querySelector( '#supplies' ) )
		   		ClassicEditor.create( document.querySelector( '#travelplan' ) )
			</script>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>