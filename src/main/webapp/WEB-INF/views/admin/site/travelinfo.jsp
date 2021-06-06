<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">.ck-content{height:600px;}</style>
<style type="text/css">.infoSection{margin:16px 8px 0;padding:32px 29px 30px;text-align:left;border:1px solid #dadada;border-radius:2px;background:#fff}</style>
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
									<button class="btn btn-primary" data-toggle="modal" data-target="#visaInfoModal">수정</button>
									<details>
										<summary>비자정보 더보기</summary>
										<div class="infoSection">
											<div id="edit">
												<c:out escapeXml="false" value="${fn:replace(fn:replace(VisaInfo.getVisaContent(), '&lt;', '<'), '&gt;', '>')}"/>
											</div>
										</div>
									</details>
								</c:if>
							</div>
							<div class="col-md-6">
								<c:if test="${SuppliesInfo ne null }">
									<button class="btn btn-primary" data-toggle="modal" data-target="#suppliesInfoModal">수정</button>
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
			</script>
    		
			<!-- 비자정보 수정 Modal 부분 -->
			<div class="modal fade" id="visaInfoModal" tabindex="-1" role="dialog" aria-labelledby="visaInfoModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-xl" role="document">
					<div class="modal-content">
						<div class="modal-header border-bottom-0">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-title text-center">
								<h4>비자 정보</h4>
							</div>
							<div class="d-flex flex-column text-center">
								<form action="visaInfoModify" method="POST" id="TravelInfo" name="TravelInfo">
									<div class="form-group">
										<textarea id="TravelContent" name="visaContent"><c:out escapeXml="false" value="${fn:replace(fn:replace(VisaInfo.getVisaContent(), '&lt;', '<'), '&gt;', '>')}"/></textarea>
									</div>
									<input type="hidden" id="VID" name="VID" value="${VisaInfo.getVID() }">
									<div class="form-group">
										<div class="d-flex">
											<div class="ml-auto">
												<button class="btn btn-primary" type="submit">수정</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 여행준비물 수정 Modal 부분 -->
			<div class="modal fade" id="suppliesInfoModal" tabindex="-1" role="dialog" aria-labelledby="suppliesInfoModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered modal-xl" role="document">
					<div class="modal-content">
						<div class="modal-header border-bottom-0">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-title text-center">
								<h4>여행준비물</h4>
							</div>
							<div class="d-flex flex-column text-center">
								<form action="suppliesInfoModify" method="POST" id="TravelInfo" name="TravelInfo">
									<div class="form-group">
										<textarea id="TravelContent1" name="suppliesContent"><c:out escapeXml="false" value="${fn:replace(fn:replace(SuppliesInfo.getSuppliesContent(), '&lt;', '<'), '&gt;', '>')}"/></textarea>
									</div>
									<input type="hidden" id="SID" name="SID" value="${SuppliesInfo.getSID() }">
									<div class="form-group">
										<div class="d-flex">
											<div class="ml-auto">
												<button class="btn btn-primary" type="submit">수정</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
    		
    		<script src='<c:url value="/resources/js/ckeditor.js"/>'></script>
		</div>
	</div>
</body>
</html>