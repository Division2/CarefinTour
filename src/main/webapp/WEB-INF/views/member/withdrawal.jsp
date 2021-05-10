<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
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
				<h1>회원 탈퇴</h1>
				<hr>
				<div class="container" style="border:1px solid #C1BBBB;">
					<strong><i class="fas fa-check"></i> 아이디 재사용 및 복구 불가 안내</strong>
					<p>회원탈퇴 진행 시 본인을 포함한 타인 모두 아이디 재사용이나 복구가 불가능합니다.<br>신중히 결정하시고 선택해주세요.</p>
					<strong><i class="fas fa-check"></i> 내정보 및 서비스 이용 기록 삭제 안내</strong>
					<p>내정보 및 서비스 이용기록이 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.<br>마일리지 등 회원등급이 유지되지 않으며 탈퇴 후 복구가 불가능합니다.</p>
					<strong><i class="fas fa-check"></i> 서비스에 등록한 게시글 삭제 불가 안내</strong>
					<p>삭제를 원하시는 게시글이나 댓글이 있다면 반드시 회원탈퇴 전 삭제하시기 바랍니다.<br>탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어,<br>게시글 및 댓글을 임의로 삭제해드릴 수 없습니다.</p>
					<input type="checkbox" name="agree" id="agree" required>
					<label for="agree">내용을 모두 확인하였습니다.</label>
				</div>
				<br>
					<script type="text/javascript">
							$(document).ready(function(){
							// 취소
							$(".cancel").on("click", function(){				
							location.href = "/main";						    
							})
							$("#submit").on("click", function(){
							if($("#userPass").val()==""){										
							alert("비밀번호를 입력해주세요.");
							$("#userPass").focus();
								return false;
							}	
							});
							})
																					
										
						</script>

					<section id="container">
						<form action="memberDelete" method="post">
							<div class="form-group has-feedback">
								<label class="control-label" for="userId">아이디</label>
								<input class="form-control" type="text" id="userId" name="userId" value="${member.userID}" readonly="readonly"/>
							</div>
							<div class="form-group has-feedback">
								<label class="control-label" for="userPass">패스워드</label>
								<input class="form-control" type="password" id="Password" name="Password" />
							</div>
							<div class="form-group has-feedback">
								<label class="control-label" for="userName">성명</label>
								<input class="form-control" type="text" id="userName" name="userName" value="${member.name}" readonly="readonly"/>
							</div>
							<div class="d-flex">
								<div class="mx-auto">
							<div class="form-group has-feedback">
								<button class="btn btn-primary" type="submit" id="submit">회원탈퇴</button>
								<button class="btn btn-secondary" type="button">취소</button>
							</div>
								</div>
							</div>
						</form>
						<div>
						</div>
					<div>
							<c:if test="${msg == false}">
								비밀번호가 맞지 않습니다.
							</c:if>
						</div>
					</section>
					</div>
				</div>
				</div>
				<jsp:include page="../layout/footer.jsp"/>

			</body>

			</html>