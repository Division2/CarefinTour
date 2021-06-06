<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
						<div class="col-sm-8">
						<form action="memberSearch" role="form" method="GET" class="form-inline">
							<select class="form-control" id="search" name="search">
								<option value="UserID">아이디</option>
								<option value="Name">이름</option>
							</select>
							<div class="col-sm-4">
							<input type="text" id="keyword" name="keyword" placeholder="회원 아이디를 입력하세요.">
							<button type="submit" class="btn px-3 btn-primary">
								<i class="fas fa-search"></i>
							</button>
							</div>
						</form>
						</div>
						
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary" data-toggle="modal" data-target="#AdminSignUp">회원등록</button>
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
								<th><font size="3">AID</font></th>
								<th><font size="3">계정</font></th>
								<th><font size="3">이름</font></th>
								<th><font size="3">권한</font></th>
								<th><font size="3">이메일</font></th>
								<th><font size="3">휴대전화</font></th>
								<th><font size="3">생년월일</font></th>
								<th><font size="3">성별</font></th>
								<th><font size="3">주소</font></th>
								<th><font size="3">마일리지</font></th>
								<th><font size="3">특이사항</font></th>
								<th><font size="3">가입일자</font></th>
								<th><font size="3">최근 접속일자</font></th>
							</tr>
						</thead>
						<tbody>
								<c:forEach items="${memberList}" var="MemberVO">
							<tr>
								<td>
									<input name="RowCheck" type="checkbox" value="${MemberVO.getAid()}">			
								</td>
								<td><font size="3">${MemberVO.getAid()}</font></td>
								<td><font size="3"><c:out value="${MemberVO.userID}"></c:out></font></td>
								<td><font size="3"><a href="memberView?AID=${MemberVO.getAid()}"><c:out value="${MemberVO.name}"></c:out></a></font></td>
								<td><font size="3"><c:out value="${MemberVO.grade}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.email}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.phone}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.birth}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.sex}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.address}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.mileage}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.comment}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.regDate}"></c:out></font></td>
								<td><font size="3"><c:out value="${MemberVO.lastDate}"></c:out></font></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
			</div>
			<!-- 게시글 페이징 처리(기준 10개) -->
			<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center">
		
				<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="member?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="member?page=${Paging.prevPageNo}">Previus</a>
						</li>
					</c:otherwise>
				</c:choose>
				<!-- 페이지 갯수만큼 버튼 생성 -->
				<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
					<c:choose>
						<c:when test="${i eq Paging.pageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="member?page=${i}"><c:out value="${i }"/></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="member?page=${i}"><c:out value="${i }"/></a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
				<c:choose>
					<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
						<li class="page-item disabled">
							<a class="page-link" href="member?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
							<a class="page-link" href="member?page=${Paging.nextPageNo}">Next</a>
						</li>
					</c:otherwise>
				</c:choose>
		</ul>
		</nav>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
	
	<!-- 회원 등록 -->
	<div class="modal fade" id="AdminSignUp" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>회원 등록</h4>
						<hr>
					</div>
					<div class="d-flex flex-column">
						<form name="form" id="form" action="AdminSignUp" method="POST">
							<!-- 아이디 & 비밀번호 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">아이디</span>
										</div>
										<input type="text" name="UserID" id="account" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">비밀번호</span>
										</div>
										<input type="password" name="Password" id="password" class="form-control">
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
										<input type="text" id="Name" name="Name" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">마일리지</span>
										</div>
										<input type="text" name="Mileage" id="Mileage" class="form-control" required>
									</div>
								</div>
							</div>
							<!-- 권한 & 성별 -->
							<div class="form-group row">
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text" id="Grade">권한</span>
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
										<select class="form-control" id="Sex">
											<option value="1" >남성</option>
											<option value="0" >여성</option>
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
										<input type="email" name="Email" id="Email" class="form-control" required>
									</div>
								</div>
								<div class="col-xs-6 col-md-6">
									<div class="input-group my-2 mb-1">
										<div class="input-group-prepend">
											<span class="input-group-text">휴대전화</span>
										</div>
										<input type="tel" name="Phone" id="Phone" class="form-control" required>
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
							
							<button type="submit" class="btn btn-primary btn-block btn-round" onclick="adminsubmit()">회원등록</button>
						</form>
				
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>