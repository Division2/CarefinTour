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
$(document).ready(function() {
	
	var formObj = $("form[name='add']");

	$(document).on("click","#fileDel", function() {
		$(this).parent().remove();
	})
	
	fn_addFile();
	
})
	
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
<style type="text/css">
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:70px; padding:5px; }
	
	.select_img img {margin:10px 0; width: 100%; height: auto; max-height: 400px;}
</style>

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
				<!-- 상단 헤더 부분 -->
				
				<!-- 본문 -->
				<div class="container-fluid">
					<div class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Package Management</h1>
					</div>
					<hr>
					<div class="row">
					<form action="PackageWrite" role="form" method="POST" name="add" enctype="multipart/form-data">   
					        <div class="form-group row" style="width:900px;">
					            <label for="title" class="form-label col-sm-2"><strong>상품명</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="productname" name="productname" required>
					            </div>
					        </div>
					        <div class="form-group row">
					            <label for="author" class="form-label col-sm-2"><strong>상품코드</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="productcode" name="productcode" required>
					            </div>
					        </div>
					        <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>출발일</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="startravelperiod" name="startravelperiod" required>
					            </div>
					        </div>
					         <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>도착일</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="arrivaltravelperiod" name="arrivaltravelperiod" required>
					            </div>
					        </div>
					         <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>테마</strong></label>
					            <div class="col-sm-10">
									<select class="form-control" id="theme" name="theme">
										<option>허니문</option>
										<option>낚시</option>
										<option>골프</option>
										<option>없음</option>
									</select>
								</div>
				       		</div>
					        <div class="form-group row">
					        	<label for="content" class="form-label col-sm-2"><strong>지역</strong></label>
					            <div class="col-sm-10">
									<select class="form-control" id="area" name="area">
										<option>북미/중남미/하와이</option>
										<option>대만/동남아/서남아</option>
										<option>중국/홍콩/러시아</option>
										<option>유럽/아프리카</option>
										<option>일본</option>
									</select>
								</div>
						    </div>
						    <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>여행도시</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="travelcity" name="travelcity" required>
					            </div>
					        </div>
						    
	    					 <div class="form-group row">
	    					    <label for="content" class="form-label col-sm-2"><strong>최소인원</strong></label>
					            <div class="col-sm-4">
					                <input type="text" class="form-control" id="minreservation" name="minreservation" required>
					            </div>
					            <label for="content" class="form-label col-sm-2"><strong>최대인원</strong></label>
					            <div class="col-sm-4">
					                <input type="text" class="form-control" id="maxreservation" name="maxreservation" required>
					            </div>
					        </div>
					        
						    <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>성인 가격</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="adultprice" name="adultprice" required>
					            </div>
					        </div>
       					    <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>아동 가격</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="kidprice" name="kidprice" required>
					            </div>
					        </div>
       					    <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>유아 가격</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="smallkidprice" name="smallkidprice" required>
					            </div>
					        </div>
   					        <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>감독</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="director" name="director" required>
					            </div>
					        </div>
					        
			            	<label for="file" class="form-label col-sm-2"><strong>사진</strong></label>
							<div class="col-sm-10">
								<input type="hidden" id="bid" name="bid" value="" />
								<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
								<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
								
								<div class="inputArea" > 
									<div class="select_img"> 
									<img src='<c:url value="/resources/images/product_package/${bmodify.getS_file_name()}"/>' alt="" class="img-fluid" >
									<input type="hidden" name="imgFile" value="${bmodify.getS_file_name() }" />
									
									<input type="file" id="imgFile" name="file" /><br>
									</div>
								</div>
							</div>
				        	<div class="row">
					    	<div class="col-auto mr-auto"></div>
					            <div class="col-auto">
					                <input class="btn btn-primary" type="submit" value="등록">
					                <input class="btn btn-primary" id="list_btn"  onclick="history.back()" value="취소" style="width:90px;">		
						        </div>
					       	</div>
				        </form>
				        </div>
					</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
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
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>