<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<footer class="sticky-footer bg-white">
	<div class="container my-auto">
		<div class="copyright text-center my-auto">
			<span>관리자웹</span>
		</div>
	</div>
</footer>

<a class="scroll-to-top rounded" href="#page-top">
	<i class="fas fa-angle-up"></i>
</a>

<!-- 관리자 정보 수정 Modal 부분 -->
<div class="modal fade" id="profileEditModal" tabindex="-1" role="dialog" aria-labelledby="profileEditModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header border-bottom-0">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>
			<div class="modal-body">
				<div class="form-title text-center">
					<h4>정보 수정</h4>
				</div>
				<div class="d-flex flex-column text-center">
					<form name="AdminProfileEditForm" id="AdminProfileEditForm" action="AdminProfileEdit" method="POST">
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">아이디　</span>
							</div>
							<input type="text" class="form-control" id="AdminID" name="UserID" value="${AdminProfile.getUserID() }" readonly>
						</div>
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">비밀번호</span>
							</div>
							<input type="Password" class="form-control" id="AdminPassword" name="Password" value="${AdminProfile.getPassword() }">
						</div>
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">이름　　</span>
							</div>
							<input type="text" class="form-control" id="AdminName" name="Name" value="${AdminProfile.getName() }" readonly>
						</div>
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">이메일　</span>
							</div>
							<input type="email" class="form-control" id="AdminEmail" name="Email" value="${AdminProfile.getEmail() }" required>
						</div>
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">휴대전화</span>
							</div>
							<input type="tel" class="form-control" id="AdminPhone" name="Phone" value="${AdminProfile.getPhone() }" maxlength="11">
						</div>
						<div class="input-group my-2 mb-1">
							<div class="input-group-prepend">
								<span class="input-group-text">생년월일</span>
							</div>
							<input type="date" class="form-control" id="AdminBirth" name="Birth" value="${AdminProfile.getBirth() }" readonly>
						</div>
						<button type="button" id="profileEdit" class="btn btn-primary" onclick="AdminProfileEdit()">수정</button>
						<button type="button" id="reset" class="btn btn-primary">취소</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 로그아웃 Modal -->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">정말 로그아웃 하시겠습니까?</div>
			<div class="modal-footer">
				<a class="btn btn-primary" href="logout">Logout</a>
			</div>
		</div>
	</div>
</div>