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
						<h1 class="h3 mb-0 text-gray-800">Banner Management</h1>
					</div>
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th>
									<input type="checkbox">
								</th>
								<th>
									카테고리
								</th>
								<th>
									상품명
								</th>
								<th>
									이미지
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									<input type="checkbox">
								</td>
								<td>
									Test
								</td>
								<td>
									Test
								</td>
								<td>
									Test
								</td>
							</tr>
						</tbody>
					</table>
					<div class="d-flex">
						<div class="ml-auto">
							<button class="btn btn-primary" data-toggle="modal" data-target="#bannerAddModal">등록</button>
							<button class="btn btn-primary">삭제</button>
						</div>
					</div>
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
    
    <!-- 배너 등록 Modal 부분 -->
	<div class="modal fade" id="bannerAddModal" tabindex="-1" role="dialog" aria-labelledby="bannerAddModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>배너 관리</h4>
						<hr>
					</div>
					<div class="d-flex flex-column">
						<form>
							<div class="form-group">
								<select class="form-control" id="category">
									<option>카테고리 선택</option>
									<option value="1">슬라이드</option>
									<option value="2">추천</option>
									<option value="3">테마</option>
									<option value="4">시즌</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="product" placeholder="상품명을 입력하세요" required>
							</div>
							<div class="form-group">
								<div class="input-group">
									<div class="custom-file">
										<input type="file" class="custom-file-input" id="upImage" aria-describedby="upImage">
										<label class="custom-file-label" for="upImage">이미지를 선택하세요</label>
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-primary btn-block btn-round">등록</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	document.querySelector('.custom-file-input').addEventListener('change',function(e) {
		var fileName = document.getElementById("upImage").files[0].name;
		var nextSibling = e.target.nextElementSibling
		nextSibling.innerText = fileName
	})
	</script>
</body>
</html>