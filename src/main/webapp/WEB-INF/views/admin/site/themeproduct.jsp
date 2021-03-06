<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
						<h1 class="h3 mb-0 text-gray-800">Theme Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<select class="form-control">
								<option>국가</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>지역</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>테마</option>
							</select>
						</div>
						<div class="col-sm-4">
							<input type="text" placeholder="상품명을 입력하세요.">
							<button type="button" class="btn px-3 btn-primary">
								<i class="fas fa-search"></i>
							</button>
						</div>
						<div class="col-sm-2">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary">등록</button>
									<button class="btn btn-primary">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th>
									<input type="checkbox">
								</th>
								<th>
									PID
								</th>
								<th>
									상품 코드
								</th>
								<th>
									사진
								</th>
								<th>
									상품명
								</th>
								<th>
									기간
								</th>
								<th>
									등록일
								</th>
								<th>
									가격
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