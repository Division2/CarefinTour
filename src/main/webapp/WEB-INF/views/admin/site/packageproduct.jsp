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

<script type="text/javascript">
	//체크박스 선택 관련
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
	//삭제버튼 눌렀을 때 실행 
	function deleteValue(){
		var url = "PackageSelectDelete";    // Controller로 보내고자 하는 URL
		var valueArr = new Array();
	    var list = $("input[name='RowCheck']");
	    for(var i = 0; i < list.length; i++){
	        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
	            valueArr.push(list[i].value);
	        }
	    }
	    if (valueArr.length == 0){
    		Swal.fire({
	  			title: '선택된 상품이 없습니다.',
		  		text: "삭제하실 여행패키지를 선택해주세요.",
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
		                        location.replace("packageproduct")
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
						<h1 class="h3 mb-0 text-gray-800">Package Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<select class="form-control">
								<option>지역</option>
								<option>미주/중남미/하와이</option>
								<option>대만/동남아/서남아</option>
								<option>중국/홍콩/러시아</option>
								<option>유럽/아프리카</option>
								<option>일본</option>
							</select>
						</div>
						<div class="col-sm-2">
							<select class="form-control">
								<option>테마</option>
								<option>낚시</option>
								<option>허니문</option>
								<option>골프</option>
								<option>해외</option>
							</select>
						</div>
						<div class="col-sm-5">
							<input type="text" placeholder="상품명을 입력하세요.">
							<button type="button" class="btn px-3 btn-primary">
								<i class="fas fa-search"></i>
							</button>
						</div>
						<div class="col-sm-3">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary"  onclick="location.href='insertpackage'">등록</button>
									<button class="btn btn-primary" onclick="deleteValue();">삭제</button>
								</div>
							</div>
						</div>
                    </div>
                    <br>
							
					<table class="table table-hover table-white">
						<thead>
							<tr align="center">
								<th><input type="checkbox" id="allCheck" name="allCheck"/></th>
								<th>상품코드</th>
								<th>상품명</th>
								<th>테마</th>
								<th>지역</th>
								<th>출발 및 도착일</th>
								<th>등록일</th>
								<th>현재인원</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${plist}" var="plist">
								<tr align="center">
									<td><input type="checkbox" name="RowCheck" value="${plist.getPid()}"></td>
									<td><font size="3"><a href="packageProductDetail?PID=${plist.getPid()}">${plist.getPid()}</a></font></td>
									<td><font size="2">${plist.getProductname()}</font></td>
									
									<td><font size="2">${plist.getTheme()}</font></td>
									<td><font size="2">${plist.getArea()}</font></td>
									<td><font size="2">${plist.getStartravelperiod()}~${plist.getArrivaltravelperiod()}</font></td>
									<td><font size="2">${plist.getRedate()}</font></td>
									<td><font size="2">${plist.getReservationstatus() }</font></td>
									<td><font size="2">${plist.getHit()}</font></td>
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
								<a class="page-link" href="packageproduct?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="packageproduct?page=${Paging.prevPageNo }">Previus</a>
							</li>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="packageproduct?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="packageproduct?page=${i}"><c:out value="${i}"/></a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="packageproduct?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="packageproduct?page=${Paging.nextPageNo }">Next</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			
			<jsp:include page="../layout/footer.jsp"/>
		</div>
	</div>
</body>
</html>