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
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<div class="container">
		<div class="col-md-3"></div>
			<div style="margin-left:100px;">
				<h1>여행 후기</h1>
					<hr>
						<div class="d-flex">
							<div class="ml-auto">
								<small class="text-muted">작성자 : ${read.name}</small>
								<p class="card-text"><small class="text-muted">작성일 : ${read.redate }</small></p>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="title">제목</label>
							<div class="col-sm-10">
								${read.title}
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-1" for="content">내용</label>
								<div class="col-sm-10">
									<div contenteditable="false">
									${read.content}<br>
									<img src='<c:url value="/resources/image/photoreview_folder/${read.s_file_name}"/>' width=200, height=200, alt="로고">
									</div>
								</div>
							</div>
						</div>
					</div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>