<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
<style type="text/css">.ck-content{height:300px;}</style>
<style type="text/css">.infoSection{margin:16px 8px 0;padding:32px 29px 30px;text-align:left;border:1px solid #dadada;border-radius:2px;background:#fff}</style>
<script>
$(document).ready(function() {
	//비자 정보 버튼 눌렀을 때
	$('#visaInfoWrite').click(function() {
		//form의 action과 textarea의 name 속성을 변경
		$("#TravelInfo").attr("action", "visaInfoWrite");
		$("#TravelContent").attr("name","visaContent");
	})
	
	//여행준비물 버튼 눌렀을 때
	$('#travelSuppliesWrite').click(function() {
		//form의 action과 textarea의 name 속성을 변경
		$("#TravelInfo").attr("action", "travelSuppliesWrite");
		$("#TravelContent").attr("name","suppliesContent");
	})
})

function test(zz) {
	var htmls = "";
	
	
	htmls += '<button class="btn btn-primary" onclick="">취소</button>';
	htmls += '<form action="visaInfoWrite" method="POST" id="TravelInfo" name="TravelInfo">';
	htmls += '<div class="form-group">';
	htmls += '<textarea id="TravelContent" name="visaContent">'+zz+'</textarea>';
	htmls += '</div>';
	htmls += '<div class="form-group">';
	htmls += '<div class="d-flex">';
	htmls += '<div class="ml-auto">';
	htmls += '<button class="btn btn-primary" type="submit">등록</button>';
	htmls += '</div>';
	htmls += '</div>';
	htmls += '</div>';
	htmls += '</form>';
	
	$("#edit").html(htmls);
	
	ClassicEditor.create(document.querySelector('#TravelContent'))
	.then(editor => {
		console.log(editor);
	})
	.catch(error => {
		console.error(error);
	});
	
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
						<h1 class="h3 mb-0 text-gray-800">Travel Information Management</h1>
					</div>
					<hr>
					<div class="row">
						<div class="col-md-4">
							<c:if test="${VisaInfo eq null }">
								<button class="btn btn-primary" type="button" id="visaInfoWrite" name="visaInfoWrite">비자정보</button>
							</c:if>
							<c:if test="${SuppliesInfo eq null }">
								<button class="btn btn-primary" type="button" id="travelSuppliesWrite" name="travelSuppliesWrite">여행준비물</button>
							</c:if>
						</div>
					</div>
					<br>
					<div id="InputSection">
						<c:choose>
							<c:when test="${VisaInfo eq null }">
								<form action="visaInfoWrite" method="POST" id="TravelInfo" name="TravelInfo">
									<div class="form-group">
										<textarea id="TravelContent" name="visaContent"></textarea>
									</div>
									<div class="form-group">
										<div class="d-flex">
											<div class="ml-auto">
												<button class="btn btn-primary" type="submit">등록</button>
											</div>
										</div>
									</div>
								</form>
							</c:when>
							<c:when test="${SuppliesInfo eq null }">
								<form action="travelSuppliesWrite" method="POST" id="TravelInfo" name="TravelInfo">
									<div class="form-group">
										<textarea id="TravelContent" name="suppliesContent"></textarea>
									</div>
									<div class="form-group">
										<div class="d-flex">
											<div class="ml-auto">
												<button class="btn btn-primary" type="submit">등록</button>
											</div>
										</div>
									</div>
								</form>
							</c:when>
						</c:choose>
						<c:if test="${VisaInfo eq null || SuppliesInfo eq null }">
							<hr>
						</c:if>
						<div class="row">
							<div class="col-md-6">
								<c:if test="${VisaInfo ne null }">
									<details>
										<summary>비자정보 더보기</summary>
										<div class="infoSection">
											<div id="edit">
												<button class="btn btn-primary" onclick="test('${VisaInfo.getVisaContent()}')">수정</button>
												<c:out escapeXml="false" value="${fn:replace(fn:replace(VisaInfo.getVisaContent(), '&lt;', '<'), '&gt;', '>')}"/>
											</div>
										</div>
									</details>
								</c:if>
							</div>
							<div class="col-md-6">
								<c:if test="${SuppliesInfo ne null }">
									<details>
										<summary>여행준비물 더보기</summary>
										<div class="infoSection">
											<c:out escapeXml="false" value="${fn:replace(fn:replace(SuppliesInfo.getSuppliesContent(), '&lt;', '<'), '&gt;', '>')}"/>
										</div>
									</details>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
    		<script src="${pageContext.request.contextPath}/resources/js/ckeditor.js"></script>
		</div>
	</div>
</body>
</html>