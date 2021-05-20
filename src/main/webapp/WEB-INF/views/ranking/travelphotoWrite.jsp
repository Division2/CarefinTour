<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<title>케어핀투어 - 여행 포토</title>
</head>
<body>	
	<jsp:include page="../layout/header.jsp" />
	<script src='<c:url value="resources/js/file-add-delete.js"/>'></script>
	<script src='<c:url value="resources/js/PhotoWrite.js"/>'></script>	
		<div class="container">
			<div class="d-flex">
				<h1>여행 포토 등록</h1>
			</div>
			<hr>
			<form action="TravelPhotoWrite" role="form" method="POST" name="add" id="add" enctype="multipart/form-data">   
				<div class="form-group row">
					<label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="Title" name="Title">
					</div>
				</div>
				<div class="form-group row">
					<label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="userId" name="userId" value="${sessionScope.member.getUserID()}" required readonly>
					</div>
				</div>
				<div class="form-group row">
					<label for="content" class="form-label col-sm-2"><strong>내용</strong></label>
					<div class="col-sm-10">
						<textarea class="form-control" id="Content" name="Content" rows="5"></textarea>
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
		       	<input type="hidden" id="good" name="good" value="0">
		       	<input type="hidden" id="bad" name="bad" value="0">
	        	<div class="row">
		    	<div class="col-auto mr-auto"></div>
					<div class="col-auto">
						<input class="btn btn-primary" type="button" onclick="Write()" value="글쓰기">
						<input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
						<input class="btn btn-primary" type="button" value="목록" onclick="location.href='travelphoto'">
					</div>
				</div>
			</form>
		</div>		
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>