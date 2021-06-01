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
<script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

<style type="text/css">
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:70px; padding:5px; }
	
	.select_img img {margin:10px 0; width: 100%; height: auto; max-height: 400px;}
	
	.ck-content{width:750px; height:300px; }
</style>

<title>케어핀투어 관리자</title>
</head>
<body >
    <div id="wrapper">
    	<!-- 좌측 배너 부분 -->
		<jsp:include page="../layout/banner.jsp"/>
		<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" style="width:70%; max-width:900px;">
			<div id="content">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="form-title text-center">
						<h4>여행패키지 등록</h4><br>
					</div>
					
					<hr style=background-color:#368AFF;>
					<div class="d-flex flex-column">
					
						<form action="PackageWrite" role="form" method="POST" name="add" enctype="multipart/form-data">
							<!-- 상품명, PID, 상품코드 -->
							기본정보
							<div class="form-group row">
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>상품명</b></span>
										</div>
										<input type="text" class="form-control" id="productname" name="productname" required>
									</div>
								</div>
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>가이드</b></span>
										</div>
										<input type="text" class="form-control" id="director" name="director" required>
									</div>
								</div>
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>최소인원</b></span>
										</div>
										<input type="text" class="form-control" id="minreservation" name="minreservation" required>
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
										<input type="text" class="form-control" id="startravelperiod" name="startravelperiod" required>
									</div>
								</div>
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>도착일</b></span>
										</div>
										<input type="text" class="form-control" id="arrivaltravelperiod" name="arrivaltravelperiod" required>
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
										<input type="text" class="form-control" id="adultprice" name="adultprice" required>
									</div>
								</div>
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>아동</b></span>
										</div>
										<input type="text" class="form-control" id="kidprice" name="kidprice" required>
									</div>
								</div>
								<div class="col-xs-4 col-md-4">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text"><b>유아</b></span>
										</div>
										<input type="text" class="form-control" id="smallkidprice" name="smallkidprice" required>
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
							<!-- 상품설명 소개? -->
							여행소개
							<div class="form-group">
								<div class="input-group my-2 mb-1">
									<textarea name="overview" id="overview" placeholder="여행소개를 입력해주세요." required>  </textarea>
									
								</div>
							</div>
							
							여행준비물
							<div class="form-group">
								<div class="input-group my-2 mb-1">
									<textarea name="supplies" id="supplies" placeholder="여행준비물을 입력해주세요." required>  </textarea>
								</div>
							</div>
							
							여행일정
							<div class="form-group">
								<div class="input-group my-2 mb-1">
									<textarea name="travelplan" id="travelplan" placeholder="여행일정을 입력해주세요." required>  </textarea>
								</div>
							</div>
							<!-- 사진 -->
							<div class="form-group row">
								<div class="col-xs-12 col-md-12">
									<div class="input-group-prepend">
										<label for="file"><strong>사진</strong></label><br>
									</div>
									
									<div>
										<input type="hidden" id="bid" name="bid" value="" />
										<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
										<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
										
										<div class="inputArea"> 
											<div class="select_img"> 
											<img src='<c:url value="/resources/images/product_package/${bmodify.getS_file_name()}"/>' alt="" class="img-fluid" >
											<input type="hidden" name="imgFile" value="${bmodify.getS_file_name() }" />
											
											<input type="file" id="imgFile" name="file" /><br><br>
											</div>
										</div>
									</div>
								</div>
							</div>
							<hr style=background-color:#368AFF;>
							<!-- 이전, 수정 버튼 -->
							<div align="right">
				                <input class="btn btn-primary" type="submit" value="등록">
				                <input class="btn btn-primary" id="list_btn"  onclick="history.back()" value="취소" style="width:60px;">		
					        </div>
						</form>
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
			
			</div>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>