<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

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
									<td style="background: rgb(198, 198, 198);">이름</td>
									<td>${MyPageInquiryQuestion.getName() }</td>
									<td style="background: rgb(198, 198, 198);">등록일</td>
									<td>${MyPageInquiryQuestion.getReDate() }</td>
								</tr>
								<tr>
									<td style="background: rgb(198, 198, 198);">카테고리</td>
									<td>${MyPageInquiryQuestion.getCategory() }</td>
									<td style="background: rgb(198, 198, 198);">답변여부</td>
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
									<td style="background: rgb(198, 198, 198);">제목</td>
									<td colspan="3"><c:out escapeXml="false" value="${MyPageInquiryQuestion.getTitle() }"/></td>
								</tr>
								<tr>
									<td style="background: rgb(198, 198, 198);">내용</td>
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
									<td style="background: rgb(198, 198, 198);">내용</td>
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
	
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>