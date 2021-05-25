<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
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
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
<title>CarefinTour</title>
</head>
<body>
	<!-- 페이지 로딩 이미지 -->
	<div class="preloader">
		<img src='<c:url value="/resources/images/loader.png"/>' class="preloader__image" alt="">
	</div>
	<!-- 페이지 로딩 이미지 -->
	
	<!-- 메인 영역 -->
	<div class="page-wrapper">
		<jsp:include page="../layout/header.jsp"/>
		<script src='<c:url value="resources/js/Authority.js"/>'></script>
	
		<c:if test="${sessionScope.member eq null}">
			<script>AuthCheck();</script>
		</c:if>
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>마이페이지</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li>CarefinTour</li>
				</ul>
			</div>
		</section>

		<section class="tour-one">
			<div class="container">
				<div class="row">
					<!-- 마이페이지 사이드바 -->
					<jsp:include page="sidemypage.jsp"/>
					
					<div class="col-md-8">
						<h1>1:1 문의 내역</h1>
						<hr>
						<div class="card">
							<div class="card-body">
								<h3><i class="fas fa-battery-quarter"></i> 상담내용</h3>
								<table class="table">
									<tbody>
										<tr>
											<td id="stresstable">이름</td>
											<td>${MyPageInquiryQuestion.getName() }</td>
											<td id="stresstable">등록일</td>
											<td>${MyPageInquiryQuestion.getReDate() }</td>
										</tr>
										<tr>
											<td id="stresstable">카테고리</td>
											<td>${MyPageInquiryQuestion.getCategory() }</td>
											<td id="stresstable">답변여부</td>
									<c:choose>
										<c:when test="${MyPageInquiryQuestion.getStatus() eq 0}">
											<td><span class="inquiry-status status-0">답변대기</span></td>
										</c:when>
										<c:when test="${MyPageInquiryQuestion.getStatus() eq 1}">
											<td><span class="inquiry-status status-1">답변보류</span></td>
										</c:when>
										<c:otherwise>
											<td><span class="inquiry-status status-2">답변완료</span></td>
										</c:otherwise>
									</c:choose>
										</tr>
										<tr>
											<td id="stresstable">제목</td>
											<td colspan="3"><c:out escapeXml="false" value="${MyPageInquiryQuestion.getTitle() }"/></td>
										</tr>
										<tr>
											<td id="stresstable">내용</td>
											<td colspan="3">
												<div style="width:500px; height: 300px;">
													<c:out escapeXml="false" value="${fn:replace(MyPageInquiryQuestion.getContent(), crlf, '<br>')}"/>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<br>
						<c:if test="${MyPageInquiryAnswer ne null}">
						<h6 class="border-bottom pb-2 mb-0"></h6>
						<br>
						<div class="card">
							<div class="card-body">
								<div class="d-flex">
									<h3><i class="fas fa-battery-three-quarters"></i> 답변내용</h3>
									<div class="ml-auto">
										<small class="text-muted">답변시각 : ${MyPageInquiryAnswer.getReDate() }</small>
									</div>
								</div>
								<table class="table">
									<tbody>
										<tr>
											<td id="stresstable">내용</td>
											<td colspan="3">
												<div style="width:500px; height: 300px;">
													<c:out escapeXml="false" value="${fn:replace(MyPageInquiryAnswer.getAnswerContent(), crlf, '<br>')}"/>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<br>
						</c:if>
					</div>
				</div>
			</div>
		</section>
	
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>