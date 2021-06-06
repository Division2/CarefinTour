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
						<h1 class="h3 mb-0 text-gray-800">Order Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-8">
							<form action="orderSearch" method="GET" class="form-inline">
							<select class="form-control">
								<option>작성자</option>
							</select> <input type="text" name="userId" id="userId"
								class="form-control ml-1 mr-1" placeholder="작성자 아이디를 입력" required>
							<button type="submit" class="btn px-3 thm-btn-psd">
								<i class="fas fa-search"></i>
							</button>
							
							</form>
						</div>	
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button type="button" class="btn btn-primary" onclick="location.href='order'">목록</button>
								<!-- 	<button type="button" class="btn btn-primary" onclick="location.href='addorder'">등록</button> -->
								<button type="button"  class="btn btn-danger" onclick="deleteValue()">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
					<table class="table table-hover table-white">
						<thead>
							<tr>
								<th>
									<input type="checkbox" name=allCheck>
								</th>
								<th>OID</th>
								<th>예약번호</th>
								<th>상품명</th>
								<th>아이디</th>
								<th>주문자</th>
								<th>연락처</th>
								<th>주문일자</th>
								<th>출발일</th>
								<th>결제금액</th>
								<th>결제상태</th>
								<th>회원</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${AdminOrderList}" var="AdminOrderList">
							<tr>
								<td><input type="checkbox" name="RowCheck" value="${AdminOrderList.getoId()}"></td>
								<td>${AdminOrderList.getoId()}</td>
								<td>${AdminOrderList.getpId()}</td>
								<td>${AdminOrderList.getProductname()}</td>
								<td>${AdminOrderList.getUserId()}</td>
								<td>${AdminOrderList.getName()}</td>
								<td>${AdminOrderList.getPhonenum()}</td>
								<td>${AdminOrderList.getOrderdate()}</td>
								<td>${AdminOrderList.getStartdate()}</td>
								<td>${AdminOrderList.getPayment()}</td>
								<c:choose>
									<c:when test="${AdminOrderList.paymentstatus eq 1}">
										<td><span>결제보류</span></td>
									</c:when>
									<c:when test="${AdminOrderList.paymentstatus eq 2}">
										<td><span>결제완료</span></td>
									</c:when>
								</c:choose>
								<c:choose>
									<c:when test="${AdminOrderList.paymentstatus eq 1}">
										<td><span>비회원</span></td>
									</c:when>
									<c:otherwise>
										<td><span>회원</span></td>
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
										<li class="page-item disabled">
											<a class="page-link" href="orderSearch?userId=${userId }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="orderSearch?userId=${userId }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="orderSearch?userId=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="orderSearch?userId=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="orderSearch?userId=${userId }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="orderSearch?userId=${userId }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="order?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="order?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="order?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="order?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="order?page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="order?page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>
					</ul>
				</nav>
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
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
					var url = "OrderDelete";    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
					var valueArr = new Array();
				    var list = $("input[name='RowCheck']");
				    for(var i = 0; i < list.length; i++){
				        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
				            valueArr.push(list[i].value);
				        }
				    }
				    if (valueArr.length == 0){
			    		Swal.fire({
				  			title: '선택된 예약이 없습니다.',
					  		text: "삭제하실 예약를 선택해주세요.",
					  		icon: 'warning',
					  		confirmButtonColor: '#3085d6',
					  		confirmButtonText: '확인',
					  	})
				    }else{
				    	Swal.fire({
				  		  	title: '예약 을 삭제하시겠습니까?',
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
					                    	 location.replace("order")
					                    	  
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
		</div>
	</div>
</body>
</html>