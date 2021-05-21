<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<script src='<c:url value="resources/js/photomodify.js"/>'></script>
	
		<div class="container">
			<div class="d-flex">
					<h1>여행 포토 수정/삭제</h1>
			</div><hr>
				<form name="travelphotoUpdate" method="POST" id="modify" action="travelphotoModify" enctype="multipart/form-data">
					<input type="hidden" id="prid" name="prid" value="${update.prid}" />
					<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
					<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
				 <div class="form-group row">
		            <label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="Title" name="title" value="${update.title}" required>
			            </div>
        			</div>
		        <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="author" name="UserID" required readonly value="${update.userId}">
			            </div>
		        	</div>
		        <div class="form-group row">
		            <label for="content" class="form-label col-sm-2"><strong>내용</strong></label>
			            <div class="col-sm-10">
			                <textarea class="form-control" id="Content" name="Content" rows="10"><c:out escapeXml="false" value="${fn:replace(update.content, '<br>', crlf)}"/></textarea>
			            </div>
		        	</div>
		         <div class="form-group row">
		            <label for="file" class="form-label col-sm-2"><strong>첨부 파일</strong></label>
			            <div class="col-sm-10">
			                <span>파일 목록</span>
								<div class="form-group" style="border: 1px solid #dbdbdb;">
									<div id="fileIndex">
										<c:forEach var="file" items="${file}" varStatus="var">
										<div>
											<input type="hidden" id="prid" name="prid_${var.index}" value="${file.prid}">
											<input type="hidden" id="FILE_NAME" name="FILE_NAME" value="prid_${var.index}">
											<a href="#" id="fileName" onclick="return false;">${file.o_file_name}</a>(${file.file_size}kb)
											<button id="fileDel" onclick="fn_del('${file.prid}','prid_${var.index}');" type="button" style="float:right;">삭제</button><br>
										</div>
										</c:forEach>
									</div>
								</div>
            				</div>
	        			</div>
		         <div class="row">
		            <div class="col-auto mr-auto"></div>
	            		<input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
		            <div class="col-auto">
	            		<input class="btn btn-primary" type="button" value="수정" onclick="modify()">
	            		<input class="btn btn-primary" type="button" value="이전" onclick="location.href='travelphotoView?prid=${param.prid}'">
	            		<input class="btn btn-primary" type="button" value="목록" onclick="location.href='travelphoto'">
		            </div>
		        </div>
	        </form>
        </div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>