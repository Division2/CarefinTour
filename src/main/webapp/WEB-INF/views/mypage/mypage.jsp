<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/my_table.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	<script src='<c:url value="resources/js/Authority.js"/>'></script>

	<c:if test="${sessionScope.member eq null}">
		<script>AuthCheck();</script>
	</c:if>
	
	<div class="container">
		<div class="row">
			<!-- 마이페이지 사이드바 -->
			<jsp:include page="sidemypage.jsp"/>
			
			<div class="col-md-8">
				<div class="jumbotron mx-4">
					<div class="d-flex">
						<div class="mx-auto">
							<p>${member.getName() }님 안녕하세요!</p>
						</div>
						<div class="mx-auto">
							<p>마일리지 : ${member.getMileage() }M</p>
						</div>
					</div>
					<div class="d-flex">
						<div class="mx-auto">
							<p>연락처 : ${member.getPhone() }</p>
						</div>
						<div class="mx-auto">
							<p>이메일 : ${member.getEmail() }</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>