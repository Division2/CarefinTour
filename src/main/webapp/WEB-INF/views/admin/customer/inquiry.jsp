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
			var url = "SelectDelete2";    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
	    		Swal.fire({
		  			title: '선택된 문의 없습니다.',
			  		text: "삭제하실 문의를 선택해주세요.",
			  		icon: 'warning',
			  		confirmButtonColor: '#3085d6',
			  		confirmButtonText: '확인',
			  	})
		    }else{
		    	Swal.fire({
		  		  	title: '글을 삭제하시겠습니까?',
	  		  		text: "삭제하시면 다시 복구시킬 수 없습니다.",
	  		    	icon: 'warning',
	  		   		showCancelButton: true,
	  		   		confirmButtonColor: '#3085d6',
	  		   		cancelButtonColor: '#d33',
	  		  	 	confirmButtonText: '삭제',
	  		  	 	cancelButtonText: '취소'
		  		}).then((result) => {
		  		  if (result.value) {
			  			$.ajax({
						    url : url,                    // 전송 URL
						    type : 'POST',                // GET or POST 방식
						    traditional : true,
						    data : {
						    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
						    },
			                success: function(jdata){
			                    if(jdata = 1) {
			                        location.replace("inquiry")
			                    }
			                    else{
			                        alert("삭제 실패(문의전화 : 010-0000-0000)");
			                    }
			                }
						});
		  		  }
		  		})
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
						<h1 class="h3 mb-0 text-gray-800">Inquiry Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-8">
							<form action="inquirySearch" method="GET" class="form-inline">
							<select class="form-control">
								<option>작성자</option>
							</select> <input type="text" name="name" id="name"
								class="form-control ml-1 mr-1" placeholder="작성자 아이디를 입력" required>
							<button type="submit" class="btn px-3 thm-btn-psd">
								<i class="fas fa-search"></i>
							</button>
							
							</form>
						</div>	
						<div class="col-sm-4">
						<form class="form-inline"  style="margin-left:320px;">
						<button type="button" class="btn btn-primary" onclick="location.href='inquiry'">목록</button>&nbsp
						<button type="button"  class="btn btn-danger" onclick="deleteValue()">삭제</button>
						</form>
						</div>
						
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th><input type="checkbox" name="allCheck"></th>
								<th>No</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>작성자</th>
								<th>아이디</th>
								<th>작성일</th>								
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
					<c:forEach items="${InquiryList}" var="InquiryBoardVO">
						<tr>
							<th><input type="checkbox"name="RowCheck" value="${InquiryBoardVO.iId }"></th>
							<td>${InquiryBoardVO.iId }</td>
							<td>${InquiryBoardVO.category }</td>
							<td><a href="inquiryView?iId=${InquiryBoardVO.iId }">${InquiryBoardVO.title }</a></td>
							<td>${InquiryBoardVO.name}</td>
							<td>${InquiryBoardVO.userId}</td>
							<td>${InquiryBoardVO.reDate }</td>
						<c:choose>
							<c:when test="${InquiryBoardVO.status eq 0}">
								<td><span class="inquiry-status status-0">답변대기</span></td>
							</c:when>
							<c:when test="${InquiryBoardVO.status eq 1}">
								<td><span class="inquiry-status status-1">답변보류</span></td>
							</c:when>
							<c:otherwise>
								<td><span class="inquiry-status status-2">답변완료</span></td>
							</c:otherwise>
						</c:choose>
						</tr>
					</c:forEach>
						</tbody>
					</table>
					<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">	
				<c:choose>
					<c:when test="${userId ne null }">
						<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
						<c:choose>
							<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
								<a class="disabledLink" href="inquirySearch?name=${name }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
							</c:when>
							<c:otherwise>
								<a href="inquirySearch?name=${name }&page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
							</c:otherwise>
						</c:choose>
						<!-- 페이지 갯수만큼 버튼 생성 -->
						<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
							<c:choose>
								<c:when test="${i eq Paging.pageNo }">
									<a class="active" href="inquirySearch?name=${name }&page=${i}"><c:out value="${i }"/></a>
								</c:when>
								<c:otherwise>
									<a href="inquirySearch?name=${name }&page=${i}"><c:out value="${i }"/></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
						<c:choose>
							<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
								<a class="disabledLink" href="inquirySearch?name=${name }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</c:when>
							<c:otherwise>
								<a href="inquirySearch?name=${name }&page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise>
						<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
						<c:choose>
							<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
								<a class="disabledLink" href="inquiry?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
							</c:when>
							<c:otherwise>
								<a class="page-link" href="inquiry?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
							</c:otherwise>
						</c:choose>
						<!-- 페이지 갯수만큼 버튼 생성 -->
						<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
							<c:choose>
								<c:when test="${i eq Paging.pageNo }">
									<a class="active" href="inquiry?page=${i}"><c:out value="${i }"/></a>
								</c:when>
								<c:otherwise>
									<a href="inquiry?page=${i}"><c:out value="${i }"/></a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
						<c:choose>
							<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
								<a class="disabledLink" href="inquiry?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</c:when>
							<c:otherwise>
								<a href="inquiry?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</c:otherwise>
						</c:choose>
					</c:otherwise>
				</c:choose>
			</ul>
			</nav>
				</div>
				
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			
    		<!-- 하단 푸터 부분 -->
		</div>
		<jsp:include page="../layout/footer.jsp"/>
</body>
</html>