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
			var url = "SelectDelete";    // Controller로 보내고자 하는 URL (.dh부분은 자신이 설정한 값으로 변경해야됨)
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 글이 없습니다.");
		    }
		    else{
				var chk = confirm("정말 삭제하시겠습니까?");				 
				$.ajax({
				    url : url,                    // 전송 URL
				    type : 'POST',                // GET or POST 방식
				    traditional : true,
				    data : {
				    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
				    },
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("삭제 성공");
	                        location.replace("notice")
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
						<h1 class="h3 mb-0 text-gray-800">Notice Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-4"></div>
						<div class="col-sm-4"></div>
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary" onclick="location.href='addnotice'">등록</button>
									<button type="button" class="btn btn-primary" onclick="updateValue()">수정</button>
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
									<input type="checkbox" name="allCheck">
								</th>
								<th>No</th>
								<th>제목</th>
								<th>작성일</th>
								<th>중요</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${NoticeList }" var="NoticeBoardVO">
								<tr>
									<c:choose>
										<c:when test="${NoticeBoardVO.important ne 'Y' }">
											<td><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.nId }</a></td>
											<td>${NoticeBoardVO.title }</td>
											<td>${NoticeBoardVO.reDate }</td>
											<td>${NoticeBoardVO.important}</td>
										</c:when>
										<c:otherwise>
											<td style="background: rgb(120,215,255);"><input type="checkbox" name="RowCheck" value="${NoticeBoardVO.nId }"></td>
											<td style="background: rgb(120,215,255);"><a href="noticeView?nId=${NoticeBoardVO.nId }">${NoticeBoardVO.nId }</a></td>
											<td style="background: rgb(120,215,255);">${NoticeBoardVO.title }</td>
											<td style="background: rgb(120,215,255);">${NoticeBoardVO.reDate }</td>
											<td style="background: rgb(120,215,255);">${NoticeBoardVO.important }</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 게시글 페이징 처리(기준 10개) -->
				<nav aria-label="Page navigation">
					<ul class="pagination justify-content-center">
						<c:choose>
							<c:when test="${Title ne null }">
								<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="noticeSearch?title=${Title }&page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="noticeSearch?title=${Title }&page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.firstPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="notice?page=${Paging.prevPageNo}">Previus</a>
										</li>
									</c:otherwise>
								</c:choose>
								<!-- 페이지 갯수만큼 버튼 생성 -->
								<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
									<c:choose>
										<c:when test="${i eq Paging.pageNo }">
											<li class="page-item disabled">
												<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:when>
										<c:otherwise>
											<li class="page-item">
												<a class="page-link" href="notice?page=${i}"><c:out value="${i }"/></a>
											</li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
								<c:choose>
									<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
										<li class="page-item disabled">
											<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="notice?page=${Paging.nextPageNo}">Next</a>
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
		</div>
	</div>
</body>
</html>