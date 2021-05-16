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
	
	$("#list_btn").on("click", function() {
		event.preventDefault();
		location.href = "package"
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
					<form action="insertpackage" role="form" method="POST" name="add" enctype="multipart/form-data">   
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
					            <label for="content" class="form-label col-sm-2"><strong>기간</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="startravelperiod" name="startravelperiod" required>
					            </div>
					        </div>
					         <div class="form-group row">
					            <label for="content" class="form-label col-sm-2"><strong>등록일</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="redate" name="redate" required>
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
					            <label for="content" class="form-label col-sm-2"><strong>가격</strong></label>
					            <div class="col-sm-10">
					                <input type="text" class="form-control" id="price" name="price" required>
					            </div>
					        </div>
					        <div class="form-group row">
				            	<label for="file" class="form-label col-sm-2"><strong>사진</strong></label>
					            <div class="col-sm-10">
					                <span>파일 목록</span>
									<div class="form-group" style="border: 1px solid #dbdbdb;">								
										<div id="fileIndex">
											<div>
												<input type="file" name="file">
												<button id="fileDel" type="button" style='float:right;'>삭제</button><br>
											</div>
										</div>
									</div>
					          	</div>		  
					       	</div>
				        	<div class="row">
					    	<div class="col-auto mr-auto"></div>
					            <div class="col-auto">
					            	<input class="btn btn-primary" id="list_btn" value="목록" style="width:90px;">			               
					                <input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
					                <input class="btn btn-primary" type="submit" value="등록">
						        </div>
					       	</div>
				        </form>
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