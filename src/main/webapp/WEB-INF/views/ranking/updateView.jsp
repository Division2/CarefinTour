<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
			$(document).ready(function(){
				var formObj = $("form[name='updateForm']");
				
				$(document).on("click","#fileDel", function(){
					$(this).parent().remove();
				})
				
				fn_addFile();
				function fn_valiChk(){
					var updateForm = $("form[name='updateForm'] .chk").length;
					for(var i = 0; i<updateForm; i++){
						if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
							alert($(".chk").eq(i).attr("title"));
							return true;
						}
					}
				}
				
				// 목록
				$("#list_btn").on("click", function(){
					event.preventDefault();
					location.href = "/ex/myaddphoto"
				})
				
				// 삭제
				$("#delete_btn").on("click", function(){
					formObj.attr("action", "/ex/delete");
					formObj.attr("method", "post");
					formObj.submit();
				})
				
				// 수정
				$("#update_btn").on("click", function(){
					
					formObj.attr("action", "/ex/update");
					formObj.attr("method", "post");
					formObj.submit();
				})
			})
		function fn_addFile(){
			var fileIndex = 1;
			$("#fileAdd_btn").on("click", function(){
				$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"</button>"+"<button type='button' style='float:right;' id='fileDelBtn'>"+"삭제"+"</button></div>");
			});
			$(document).on("click","#fileDelBtn", function(){
				$(this).parent().remove();
				
			});
		}
 		var fileNoArry = new Array();
 		var fileNameArry = new Array();
 		function fn_del(value, name){
 			
 			fileNoArry.push(value);
 			fileNameArry.push(name);
 			$("#fileNoDel").attr("value", fileNoArry);
 			$("#fileNameDel").attr("value", fileNameArry);
 		}
</script>
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
		<div class="container">
			<div class="d-flex">
					<h1>여행 포토 수정/삭제</h1>
			</div><hr>
				<form name="updateForm" role="form" method="post" action="/ex/TravelPhotoUpdate" enctype="multipart/form-data">
					<input type="hidden" id="prid" name="prid" value="${update.prid}" />
					<input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
					<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">  
				 <div class="form-group row">
		            <label for="title" class="form-label col-sm-2"><strong>제목</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="title" name="title" value="${update.title}" required>
			            </div>
        			</div>
		        <div class="form-group row">
		            <label for="author" class="form-label col-sm-2"><strong>작성자</strong></label>
			            <div class="col-sm-10">
			                <input type="text" class="form-control" id="author" name="name" required readonly value="${update.name}">
			            </div>
		        	</div>
		        <div class="form-group row">
		            <label for="content" class="form-label col-sm-2"><strong>내용</strong></label>
			            <div class="col-sm-10">
			                <textarea class="form-control" id="content" name="content" rows="5">${update.content}</textarea>
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
		            <div class="col-auto">
		            	<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() ne 'User'}">
		            		<input class="btn btn-primary" id="update_btn" value="수정" style="width:90px;">
		            		<input class="btn btn-primary" id="delete_btn" value="삭제" style="width:90px;">
		            		<input class="btn btn-primary" id="list_btn" value="목록" style="width:90px;">
		            		<input class="btn btn-primary" id="fileAdd_btn" value="파일추가" style="width:90px;">
		                </c:if>
		            </div>
		        </div>
	        </form>
        </div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>