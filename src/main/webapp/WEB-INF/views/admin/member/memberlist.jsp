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
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
	//회원 선택삭제
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;
			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteValue(){
			var url = "delete";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 회원이 없습니다.");
		    }
		    else{
				var chk = confirm("정말 삭제하시겠습니까?");				 
				$.ajax({
				    url : url,                    // 전송 URL
				    type : 'POST',                // POST 방식
				    traditional : true,
				    data : {
				    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
				    },
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("삭제 성공");
	                        location.replace("member") //list 로 페이지 새로고침
	                    }
	                    else{
	                        alert("삭제 실패");
	                    }
	                }
				});
			}
		}
	</script>
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
						<h1 class="h3 mb-0 text-gray-800">Member Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<select class="form-control">
								<option>아이디</option>
								<option>이름</option>
							</select>
						</div>					
						<div class="col-sm-4">
							<input type="text" placeholder="회원 아이디를 입력하세요.">
							<button type="button" class="btn px-3 btn-primary">
								<i class="fas fa-search"></i>
							</button>
						</div>
						<div class="col-sm-2">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary" data-toggle="modal" data-target="#memberModal">등록</button>
									<input type="button" class="btn btn-primary" value="선택삭제" onclick="deleteValue();">
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th>
									<input id="allCheck" type="checkbox" name="allCheck">
								</th>
								<th>AID</th>
								<th>계정</th>
								<th>비밀번호</th>
								<th>이름</th>
								<th>권한</th>
								<th>이메일</th>
								<th>휴대전화</th>
								<th>생년월일</th>
								<th>성별</th>
								<th>주소</th>
								<th>마일리지</th>
								<th>특이사항</th>
								<th>가입일자</th>
								<th>최근 접속일자</th>
							</tr>
						</thead>
						<tbody>
								<c:forEach items="${memberList}" var="MemberVO">
							<tr>
								<td>
									<input name="RowCheck" type="checkbox" value="${MemberVO.getAid()}">			
								</td>
								<td><a href="memberView?AID=${MemberVO.getAid()}">${MemberVO.getAid()}</a></td>
								<td><c:out value="${MemberVO.userID}"></c:out></td>
								<td><c:out value="${MemberVO.password}"></c:out></td>
								<td><c:out value="${MemberVO.name}"></c:out></td>
								<td>
									<select class="form-control">
										<option>일반</option>
									</select>
								</td>
								<td><c:out value="${MemberVO.email}"></c:out></td>
								<td><c:out value="${MemberVO.phone}"></c:out></td>
								<td><c:out value="${MemberVO.birth}"></c:out></td>
								<td><c:out value="${MemberVO.sex}"></c:out></td>
								<td><c:out value="${MemberVO.address}"></c:out></td>
								<td><c:out value="${MemberVO.mileage}"></c:out></td>
								<td><c:out value="${MemberVO.comment}"></c:out></td>
								<td><c:out value="${MemberVO.regDate}"></c:out></td>
								<td><c:out value="${MemberVO.lastDate}"></c:out></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
    
	<!-- 회원 상세정보 Modal 부분 -->
	<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>회원 상세정보</h4>
						<hr>
					</div>
					<div class="d-flex flex-column">
						<form name="form" id="form" action="MemberUpdate" method="POST">
							<!-- 아이디 & 비밀번호 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">아이디</span>
										</div>
										<input type="text" name="account" id="account" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">비밀번호</span>
										</div>
										<input type="password" name="password" id="password" class="form-control">
									</div>
								</div>
							</div>
							<!-- 이름 & 마일리지 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">이름</span>
										</div>
										<input type="text" name="name" id="name" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">마일리지</span>
										</div>
										<input type="text" name="mileage" id="mileage" class="form-control" required>
									</div>
								</div>
							</div>
							<!-- 권한 & 성별 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">권한</span>
										</div>
										<select class="form-control">
											<option value="일반">일반</option>
											<option value="VIP">VIP</option>
											<option value="블랙">블랙</option>
											<option value="관리자">관리자</option>
										</select>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">성별</span>
										</div>
										<select class="form-control">
											<option value="남성" >남성</option>
											<option value="여성" >여성</option>
										</select>
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
										<input type="email" name="email" id="email" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">휴대전화</span>
										</div>
										<input type="tel" name="phone" id="phone" class="form-control" required>
									</div>
								</div>
							</div>
							<!-- 특이사항 -->
							<div class="form-group">
								<div class="input-group my-2 mb-1">
									<div class="input-group-prepend">
										<span class="input-group-text">특이사항</span>
									</div>
									<textarea rows="5" cols="25" name="comment" id="comment" class="form-control"></textarea>
								</div>
							</div>
							<!-- 회원 주문내역 Table -->
							<hr>
							<h4>회원 주문내역</h4>
							<table class="table table-hover table-white">
								<thead>
									<tr>
										<th>No</th>
										<th>주문번호</th>
										<th>상품명</th>
										<th>결제금액</th>
										<th>마일리지 적립액</th>
										<th>결제일자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>test</td>
										<td>test</td>
										<td>test</td>
										<td>test</td>
										<td>test</td>
										<td>test</td>
									</tr>
								</tbody>
							</table>
							<hr>
							<!-- 회원 문의내역 Table -->
							<h4>회원 문의내역</h4>
							<table class="table table-hover table-white">
								<thead>
									<tr>
										<th>No</th>
										<th>제목</th>
										<th>작성일</th>
										<th>답변상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>test</td>
										<td>test</td>
										<td>test</td>
										<td>test</td>
									</tr>
								</tbody>
							</table>
							<button type="submit" class="btn btn-primary btn-block btn-round">수정</button>
						</form>
				
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
