<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="apple-touch-icon" sizes="180x180" href='<c:url value="/resources/favicons/apple-touch-icon.png"/>'>
<link rel="icon" type="image/png" sizes="32x32" href='<c:url value="/resources/images/favicons/favicon-32x32.png"/>'>
<link rel="icon" type="image/png" sizes="16x16" href='<c:url value="/resources/images/favicons/favicon-16x16.png"/>'>
<link rel="manifest" href='<c:url value="/resources/images/favicons/site.webmanifest"/>'>
<style>
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:70px; padding:5px; }
	label[for='gdsDes'] { display:block; }
	input { width:150px; }
	textarea#gdsDes { width:400px; height:180px; }
	
	.select_img img {margin:20px 0;}
	
</style>
<title>CarefinTour</title>
</head>
<body>
	<!-- 페이지 로딩 이미지 -->
	<div class="preloader">
		<img src='<c:url value="/resources/images/loader.png"/>' class="preloader__image" alt="">
	</div>
	<!-- 페이지 로딩 이미지 -->
	
	<!-- 메인 영역 -->
	<div class="page-wrapper">
		<jsp:include page="../layout/header.jsp"/>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/page-header-contact.png"/>);">
			<div class="container">
				<h2>여행 포토</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<div class="comment-form">
					<form action="travelphotoModify" role="form" method="POST" name="travelphotoUpdate" id="modify" enctype="multipart/form-data" class="contact-one__form">
						<div class="row low-gutters">
							<input type="hidden" id="prid" name="prid" value="${update.prid}" />
							<input type="hidden" id="fileNoDel" name="fileNoDel[]" value="">
							<input type="hidden" id="fileNameDel" name="fileNameDel[]" value="">
							
							<div class="col-md-12">
								<div class="input-group">
									<label for="title" class="form-label"><strong>제목</strong></label>
									<input type="text" id="Title" name="Title" value="${update.title}">
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="userId" class="form-label"><strong>작성자</strong></label>
									<input type="text" class="form-control" id="author" name="UserID" value="${update.userId}" required readonly>
								</div>
							</div>
							<div class="col-md-12">
								<div class="input-group">
									<label for="content" class="form-label"><strong>내용</strong></label>
									<textarea id="Content" name="Content" rows="5"><c:out escapeXml="false" value="${fn:replace(update.content, '<br>', crlf)}"/></textarea>
								</div>
							</div>
							<div class="col-md-12">				
								<div class="inputArea">
									 <label for="gdsImg">이미지</label><br>
									 <input type="file" id="gdsImg" name="file" />
									 <div class="select_img">
									 <img src='<c:url value="/resources/imgUpload/${update.s_file_name}"/>' alt="" class="img-fluid">
									 <input type="hidden" name="gdsImg" value="${update.s_file_name}" />
									 </div>
								  <script>
									 $("#gdsImg").change(function(){
									  if(this.files && this.files[0]) {
									   var reader = new FileReader;
									   reader.onload = function(data) {
									    $(".select_img img").attr("src", data.target.result).width(500);        
									   }
									   reader.readAsDataURL(this.files[0]);
									  }
									 });
									</script>
									 <%=request.getRealPath("/") %>
									</div>
							</div>
						</div>
						<div class="row">
							<div class="col-auto mr-auto"></div>
			            		<input class="thm-btn-psd" id="fileAdd_btn" value="파일추가" style="width:135px;">
							<div class="col-auto">
			            		<input class="thm-btn-psd" type="submit" value="수정">
			            		<input class="thm-btn-psd" type="button" value="이전" onclick="location.href='travelphotoView?prid=${param.prid}'">
			            		<input class="thm-btn-psd" type="button" value="목록" onclick="location.href='travelphoto'">
							</div>
						</div>
					</form>
				</div>
			</div>
		</section>

		<jsp:include page="../layout/footer.jsp" />
		<script src='<c:url value="resources/js/file-add-delete.js"/>'></script>
		<script src='<c:url value="resources/js/Board.js"/>'></script>
	</div>
	<!-- 메인 영역 -->
</body>
</html>