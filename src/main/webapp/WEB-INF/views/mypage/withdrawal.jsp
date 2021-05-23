<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<script src='<c:url value="resources/js/Member.js"/>'></script>
		<script src='<c:url value="resources/js/Authority.js"/>'></script>

		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>마이페이지</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li>CarefinTour</li>
				</ul>
			</div>
		</section>
	
		<section class="tour-one">
			<div class="container">
				<div class="row">
					<!-- 마이페이지 사이드바 -->
					<jsp:include page="sidemypage.jsp" />
					
					<div class="col-md-8">
						<h1>회원 탈퇴</h1>
						<hr>
						<div class="container" style="border: 1px solid #C1BBBB;">
							<strong><i class="fas fa-check"></i> 아이디 재사용 및 복구 불가 안내</strong>
							<p>회원탈퇴 진행 시 본인을 포함한 타인 모두 아이디 재사용이나 복구가 불가능합니다.<br>신중히 결정하시고 선택해주세요.</p>
							<strong><i class="fas fa-check"></i> 내정보 및 서비스 이용 기록 삭제 안내</strong>
							<p>내정보 및 서비스 이용기록이 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.<br>마일리지 등 회원등급이 유지되지 않으며 탈퇴 후 복구가 불가능합니다.</p>
							<strong><i class="fas fa-check"></i> 서비스에 등록한 게시글 삭제 불가 안내</strong>
							<p>삭제를 원하시는 게시글이나 댓글이 있다면 반드시 회원탈퇴 전 삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어,<br>게시글 및 댓글을 임의로 삭제해드릴 수 없습니다.</p>
							<input type="checkbox" id="agree" name="agree" required>
							<label for="agree">내용을 모두 확인하였습니다.</label>
						</div>
						<br>
						<section id="container">
							<form action="withdrawal" id="MemberWithdrawal" name="MemberWithdrawal" method="POST" class="contact-one__form">
								<div class="input-group">
									<label class="control-label" for="UserID">아이디</label>
									<input type="text" id="UserID" name="UserID" value="${member.getUserID() }" readonly />
								</div>
								<div class="input-group">
									<label class="control-label" for="Password">패스워드</label>
									<input type="password" id="WithdrawalPassword" name="Password" />
								</div>
								<div class="input-group">
									<label class="control-label" for="Name">성명</label>
									<input type="text" id="Name" name="Name" value="${member.getName() }" readonly />
								</div>
							</form>
							<div class="d-flex">
								<div class="mx-auto">
									<div class="form-group has-feedback">
										<button type="button" class="thm-btn-psd" id="btnWithdrawal" name="btnWithdrawal">회원탈퇴</button>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</section>
	
		<jsp:include page="../layout/footer.jsp" />
	</div>
	<!-- 메인 영역 -->
</body>
</html>