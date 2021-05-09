<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<div class="d-flex">
					<h1>정보 수정</h1>
					<div class="ml-auto">
						<button class="btn btn-primary" onclick="$('#MemberUpdate').submit()">수정하기</button>
					</div>
				</div>
				<hr>
				<form action="MemberInfoUpdate" method="POST" id="MemberUpdate"name="MemberUpdate" >
					<!-- 아이디 & 비밀번호 -->
					<div class="form-group row">
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">아이디</span>
								</div>
								
								<input type="text" name="userID" id="userID" value="${member.userID}" class="form-control" required readonly>
							
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호</span>
								</div>
								<input type="password" name="password" id="password" value="${member.password}" class="form-control">
							</div>
						</div>
					</div>
					<!-- 이름 & 생년월일 -->
					<div class="form-group row">
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">이름</span>
								</div>				
								<input type="text" name="name" id="name" value="${member.name}"class="form-control" required>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">생년월일</span>
								</div>
								<input type="text" name="birth" id="birth" class="form-control" required readonly>
							</div>
						</div>
					</div>
					<!-- 이메일 & 휴대전화 -->
					<div class="form-group row">
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">이메일</span>
								</div>
								<input type="email" name="email" id="email" value="${member.email}" class="form-control" required>
							</div>
						</div>
						<div class="col-xs-6 col-md-6">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">휴대전화</span>
								</div>
								<input type="tel" name="phone" id="phone" value="${member.phone}" class="form-control" required>
							</div>
						</div>
					</div>
					<!-- 주소 -->
					<div class="form-group row">
						<div class="col-xs-10 col-md-10">
							<div class="input-group my-2 mb-1">
								<div class="input-group-prepend">
									<span class="input-group-text">주소</span>
								</div>
								<input type="text" id="address" name="address" class="form-control" placeholder="주소" required readonly>
							</div>
						</div>
						<div class="col-xs-2 col-md-2">
							<div class="input-group my-2 mb-1">
								<button class="btn btn-info" onclick="goPopup()">주소 찾기</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<br>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>