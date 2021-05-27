<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<script type="text/javascript">
	function find_id() {
		var Name = $("#Name").val();
		var Phone = $("#Phone").val();
		
		$.ajax({
		    url : 'LoginActionId',
		    type : 'POST',
		    datatype: 'json',
		    data : {
		    	Name : Name,
		    	Phone : Phone
		    },
            success: function(msg){
            	if(msg == "error") {
            		alert('아이디를 찾을 수 없습니다.');
            	} else {
					alert('ID : ' + msg);
            	}
            },
            error : function() {
            	alert('아이디 찾기 실패');
            }
		});
	}
	
	function find_pw() {
		var UserID = $("#pw_UserID").val();
		var Name = $("#pw_Name").val();
		var Email = $("#pw_Email").val();
		
		$.ajax({
		    url : 'LoginActionPw',
		    type : 'POST',
		    datatype: 'json',
		    data : {
		    	UserID : UserID,
		    	Name : Name,
		    	Email : Email
		    },
            success: function(msg){
            	if(msg == "error") {
            		alert('비밀번호를 찾을 수 없습니다.');
            	} else {
					alert('PW : ' + msg);
            	}
            },
            error : function() {
            	alert('비밀번호 찾기 실패');
            }
		});
	}
</script>
</head>
<body>
	<!-- 페이지 로딩 이미지 -->
	<div class="preloader">
		<img src='<c:url value="/resources/images/loader.png"/>' class="preloader__image" alt="">
	</div>
	<!-- 페이지 로딩 이미지 -->
	<!-- 메인 영역 -->
	<div class="page-wrapper">
		<jsp:include page="../layout/header.jsp" />
		<!-- 아이디 비밀번호 찾기 -->
		<section class="navbar navbar-expand-xl" style="width: 100%; height: 700px; background:#e3f2fd;">
		    <!-- 아이디 찾기 -->
			<div class="container">
				<div class="col-lg-6">
					<h1 style="position: relative; top: -30px; left: 400px;">아이디 찾기</h1>
					<!-- 아이디 찾기 폼 -->
					<form method="post" action="LoginActionId" style="position: relative; top: 10px; left: 300px;">
					    <!-- 이름 입력란 -->
						<div class="form-group" style="position: relative; top: 1px;">
						이름 : <input type="text" class="form-control" placeholder="입력해주세요" id = "Name"name="Name" maxlength="20" style="width: 250px; height: 40px; position: relative; left: 80px; top: -30px;">
						</div>
						<!-- 전화번호 입력란 -->
						<div class="form-group" style="position: relative; top: -30px;">
						전화번호 : <input type="text" class="form-control" placeholder="입력해주세요" id = "Phone" name="Phone" maxlength="20" style="width: 250px; height: 40px; position: relative; left: 80px; top: -30px;">
						</div>
						<!-- 확인버튼 -->
						<input type="button" id="id-submit" onclick="find_id();" class="btn btn-primary form-control" value="확인" style="width: 150px; height: 40px; position: relative; top: -30px; left: 130px;">
					</form>
				</div>
			</div>
			<br><br><br>
			<!-- 비밀번호 찾기 -->
			<div class="container">
				<div class="col-lg-6">
					<h1 style="position: relative; top: -30px; left: 200px;">비밀번호 찾기</h1>
					<!-- 비밀번호 찾기 폼 -->
					<form method="post" action="LoginActionPw" style="position: relative; top: 10px; left: 100px;">
					    <!-- 아이디 입력란 -->
						<div class="form-group" style="position: relative; top: 1px;">
							아이디 : <input type="text" class="form-control" placeholder="입력해주세요" id="pw_UserID" name="UserID" maxlength="30" style="width: 250px; height: 40px; position: relative; left: 80px; top: -30px;">
						</div>
						<!-- 이름 입력란 -->
						<div class="form-group" style="position: relative; top: -30px;">
						이름 : <input type="text" class="form-control" placeholder="입력해주세요" id="pw_Name" name="Name" maxlength="20" style="width: 250px; height: 40px; position: relative; left: 80px; top: -30px;">
						</div>
						<!-- 이메일 입력란 -->
						<div class="form-group" style="position: relative; top: -55px;">
						이메일 : <input type="text" class="form-control" placeholder="입력해주세요" id="pw_Email" name="Email" maxlength="30" style="width: 250px; height: 40px; position: relative; left: 80px; top: -30px;">
						</div>
						<!-- 확인버튼 -->
						<input type="button" id="pw-submit" onclick="find_pw();" class="btn btn-primary form-control" value="확인" style="width: 150px; height: 40px; position: relative; top: -30px; left: 130px;">
					</form>
				</div>
			</div>
		</section>		
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>