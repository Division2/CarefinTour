<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<link rel="manifest" href='<c:url value="/resources/images/favicons/site.webmanifest"/>'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:70px; padding:5px; }
	
	.select_img img {margin:10px 0; width: 100%; height: auto; max-height: 400px;}
	
	#wrapper{
		max-width: 1200px;
	}
</style>
<title>CarefinTour</title>
</head>
<body>
    <div id="wrapper">
   	<!-- 좌측 배너 부분 -->
	<jsp:include page="../layout/banner.jsp"/>
	<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id="content">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
				
				<!-- 본문 -->
				<section class="tour-one">
					<div class="container-fluid">
						<h1 class="h3 mb-0 text-gray-800">Banner Management</h1>
						<div align="right"><font size="4" class="h6 mb-0 text-gray-800">Category : ${bmodify.getBannercategory()}</font></div>
						<hr>
						<div class="comment-form">
							<form action="bannerModify" role="form" method="POST" name="travelphotoUpdate" id="modify" enctype="multipart/form-data" class="contact-one__form">
								<div class="row low-gutters">
									<input type="hidden" id="bid" name="bid" value="${bmodify.getBid()}" />
									<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
									<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
									
									<div class="col-md-12">				
										<div class="inputArea"> 
											<label for="imgLabel">이미지</label>
											<div class="select_img"> 
											<img src='<c:url value="/resources/images/banner_main/${bmodify.getS_file_name()}"/>' alt="" class="img-fluid" >
											<input type="hidden" name="imgFile" value="${bmodify.getS_file_name() }" />
											
											<input type="file" id="imgFile" name="file" /><br>
											</div>
										</div>
									</div>
									
									<div class="col-md-12" align="right">
										<div >
						            		<input class="btn btn-primary" type="submit" value="변경">
						            		<input class="btn btn-primary" type="button" value="취소" onclick="location.href='banner'">
										</div>
									</div>
								</div>
								

							</form>
						</div>
					</div>
				</section>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
	  		<!-- 하단 푸터 부분 -->
			<script src='<c:url value="/resources/js/Board.js"/>'></script>
			<script>
				$("#imgFile").change(function(){
					if(this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img").attr("src", data.target.result).width(1000);								
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
			</script>
		</div>
	</div>
	
	<!-- 메인 영역 -->
</body>
</html>