<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 관리자</title>
<style type="text/css">
	.inputArea { margin:10px 0; }
	select { width:100px; }
	label { display:inline-block; width:70px; padding:5px; }
	.select_img img {margin:10px 0; width: 100%; height: auto; max-height: 400px;}
</style>
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
						<h1 class="h3 mb-0 text-gray-800">TopAngler Management</h1>
					</div>
					<div class="row">
						<div class="col-sm-8"></div>
						<div class="col-sm-4">
							<div class="d-flex">
								<div class="ml-auto">
									<button class="btn btn-primary" data-toggle="modal" data-target="#TopAnglerWriteModal">등록</button>
									<button class="btn btn-primary" onclick="deleteValue();">삭제</button>
								</div>
							</div>
						</div>
					</div>
                    <hr>
					<table class="table table-hover table-white">
						<colgroup>
							<col width="1%">
							<col width="7%">
							<col width="20%">
						</colgroup>
						<thead>
							<tr align="center">
								<th><input type="checkbox" id="allCheck" name="allCheck"/></th>
								<th>순위</th>
								<th>이름(angler)</th>
								<th>물고기 종류</th>
								<th>물고기 크기</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${topangler}" var="topangler">
								<tr align="center">
									<td><input type="checkbox" name="RowCheck" value="${topangler.getTid()}"></td>
									<td><font size="2">${topangler.getRanking() }위</font></td>
									<td><font size="2">${topangler.getName() }</font></td>
									<td><font size="2">${topangler.getFishname() }</font></td>
									<td><font size="2">${topangler.getFishsize() } cm</font></td>
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
								<a class="page-link" href="topangler?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
							</li>
						</c:when>
						<c:otherwise>
								<a class="page-link" href="topangler?page=${Paging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${Paging.startPageNo }" end="${Paging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq Paging.pageNo }">
								<li class="page-item disabled">
									<a class="page-link" href="topangler?page=${i}"><c:out value="${i }"/></a>
								</li>
							</c:when>
							<c:otherwise>
								<li class="page-item">
									<a class="page-link" href="topangler?page=${i}"><c:out value="${i }"/></a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${Paging.pageNo eq Paging.finalPageNo }">
							<li class="page-item disabled">
								<a class="page-link" href="topangler?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="page-item">
								<a class="page-link" href="topangler?page=${Paging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
			</nav>
			
			<!-- 탑앵글러 등록 -->
			<div class="modal fade" id="TopAnglerWriteModal" tabindex="-1" role="dialog" aria-labelledby="TopAnglerWriteModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header border-bottom-0">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-title text-center">
								<h4>탑앵글러</h4>
								<hr>
							</div>
							<div class="d-flex flex-column">
								<form id="TopAnglerWrite" name="TopAnglerWrite" action="TopAnglerWrite" method="POST" enctype="multipart/form-data">
									<div class="form-group">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text">이름(Angler)</span>
											</div>
											<input type="text" id="Name" name="name" class="form-control" placeholder="홍길동" required>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text">물고기 종류</span>
											</div>
											<input type="text" id="FishName" name="fishname" class="form-control" placeholder="청새치" required>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group my-2 mb-1">
											<div class="input-group-prepend">
												<span class="input-group-text">물고기 크기</span>
											</div>
											<input type="text" id="FishSize" name="fishsize" class="form-control" placeholder="22" required>
										</div>
									</div>
									<div class="form-group">
										<span class="input-group-text">랭킹 이미지</span>
										<div class="inputArea"> 
											<div class="select_img"> 
												<img src="" class="img-fluid">
												<input type="file" id="imgFile" name="file"/>
											</div>
										</div>
									</div>
									<button type="submit" class="btn btn-primary btn-block btn-round">탑앵글러 등록</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<jsp:include page="../layout/footer.jsp"/>
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
					var url = "TopAnglerDelete";
					var valueArr = new Array();
				    var list = $("input[name='RowCheck']");
				    for(var i = 0; i < list.length; i++){
				        if(list[i].checked){
				            valueArr.push(list[i].value);
				        }
				    }
				    if (valueArr.length == 0) {
			    		Swal.fire({
				  			title: '선택된 탑앵글러가 없습니다.',
					  		text: "삭제할 탑앵글러를 선택해주세요.",
					  		icon: 'warning',
					  		confirmButtonColor: '#3085d6',
					  		confirmButtonText: '확인',
					  	})
				    }
				    else {
				    	Swal.fire({
				  		  	title: '탑앵글러를 삭제하시겠습니까?',
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
								    url : url,
								    type : 'POST',
								    traditional : true,
								    data : {
								    	valueArr : valueArr
								    },
					                success: function(jdata){
					                    if(jdata = 1) {
					                        location.replace("topangler")
					                    }
					                }
								});
							}
				  		})
					}
				}
				
				$("#imgFile").change(function(){
					if(this.files && this.files[0]) {
						var reader = new FileReader;
						reader.onload = function(data) {
							$(".select_img img").attr("src", data.target.result).width(500);								
						}
						reader.readAsDataURL(this.files[0]);
					}
				});
			</script>
		</div>
	</div>
</body>
</html>