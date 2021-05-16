<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript"> 
	$(document).ready(function() {
		
		var formObj = $("form[name='add']");
	
		$(document).on("click","#fileDel", function() {
			$(this).parent().remove();
		})
		
		$("#list_btn").on("click", function() {
			event.preventDefault();
			location.href = "topangler"
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
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />			
		<div class="container">
			<div class="d-flex">
				<h1>탑앵글러 등록 요청</h1>
			</div><hr>
			<form action="topanglerWrite" name="add" method="POST" enctype="multipart/form-data">   
		        <div class="form-group row">
		            <label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="title" name="title">
			            </div>
		        	</div>
		        <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="name" name="name" required readonly value="${sessionScope.member.getUserID()}">
			            </div>
		        	</div>
		        <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>물고기 크기</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="fishsize" name="fishsize">
			            </div>
		        	</div>
		         <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>물고기 종류</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="fishname" name="fishname">
			            </div>
		        	</div>
		         <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>내용</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="content" name="content">
			            </div>
		        	</div>
		         <div class="form-group row">
		            <label for="file" class="form-label col-sm-2"><strong>첨부 파일</strong></label>
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
			                <input class="btn btn-primary" type="submit" value="글쓰기">
			            </div>
		        	</div>
	       		 </form>
			</div>		
		<jsp:include page="../layout/footer.jsp" />
</body>
</html>