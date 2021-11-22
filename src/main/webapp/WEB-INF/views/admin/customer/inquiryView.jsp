<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%pageContext.setAttribute("crlf", "\r\n"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
<style>#stresstable { background: rgb(245,245,245); }</style>
<title>케어핀투어 관리자</title>
</head>
<body id="page-top">
    <div id="wrapper">
    	<!-- 좌측 배너 부분 -->
		<jsp:include page="../layout/banner.jsp"/>
		<!-- 좌측 배너 부분 -->
		<div id="content-wrapper" class="d-flex flex-column">
				<!-- 상단 헤더 부분 -->
				<jsp:include page="../layout/header.jsp"/>
				<!-- 상단 헤더 부분 -->
						<div class="container-fluid">
							<h1>1:1 문의</h1>
							<hr>
							<div class="card">
								<div class="card-body">
									<h3><i class="fas fa-battery-quarter"></i> 상담내용</h3>
									<table class="table">
										<tbody>
											<tr>
												<td id="stresstable">이름</td>
												<td>${content.getName() }</td>
												<td id="stresstable">등록일</td>
												<td>${content.getReDate() }</td>
											</tr>
											<tr>
												<td id="stresstable">카테고리</td>
												<td>${content.getCategory() }</td>
												<td id="stresstable">답변여부</td>
										<c:choose>
											<c:when test="${content.getStatus() eq 0}">
												<td><span class="inquiry-status status-0">답변대기</span></td>
											</c:when>
											<c:when test="${content.getStatus() eq 1}">
												<td><span class="inquiry-status status-1">답변보류</span></td>
											</c:when>
											<c:otherwise>
												<td><span class="inquiry-status status-2">답변완료</span></td>
											</c:otherwise>
										</c:choose>
											</tr>
											<tr>
												<td id="stresstable">제목</td>
												<td colspan="3"><c:out escapeXml="false" value="${content.getTitle() }"/></td>
											</tr>
											<tr>
												<td id="stresstable">내용</td>
												<td colspan="3">
													<div style="width:500px; height: 300px;">
														<c:out escapeXml="false" value="${fn:replace(content.getContent(), crlf, '<br>')}"/>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<br>
							<c:if test="${answerContent ne null}">
							<h6 class="border-bottom pb-2 mb-0"></h6>
							<br>
							<div class="card">
								<div class="card-body">
									<div class="d-flex">
										<h3><i class="fas fa-battery-three-quarters"></i> 답변내용</h3>
										<div class="ml-auto">
											<small class="text-muted">답변시각 : ${answerContent.getReDate() }</small>
										</div>
									</div>
									<table class="table">
										<tbody>
											<tr>
												<td id="stresstable">내용</td>
												<td colspan="3">
													<div style="width:500px; height: 300px;">
														<c:out escapeXml="false" value="${fn:replace(answerContent.getAnswerContent(), crlf, '<br>')}"/>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<br>
							</c:if>
							
							<div class="d-flex">
								<div class="ml-auto">
								<c:if test="${answerContent ne null && sessionScope.member ne null && sessionScope.member.getGrade() eq 'Admin'}">
									<button class="btn btn-primary" type="button" data-toggle="modal" data-target="#AnswerEditModal">수정</button>
									<button class="btn btn-danger" type="button"  onclick="answerInquiryDelete2()">삭제</button>
								</c:if>
								<c:if test="${answerContent ne null}">
									<button class="btn btn-primary" type="button" onclick="location.href='inquiry'">목록</button>
								</c:if>
								</div>
							</div>
							
							<c:if test="${sessionScope.member ne null && sessionScope.member.getGrade() eq 'Admin' && answerContent eq null }">
							<h6 class="border-bottom pb-2 mb-0"></h6>
							<br>
							<form name="inquiryAnswerWrite" action="inquiryAnswerWrite" method="POST">
								<div class="bg-white rounded shadow-sm">
									<textarea id="answerContent" name="answerContent" class="form-control" rows="3" placeholder="답글을 입력해 주세요" required></textarea>
									<input type="hidden" id="iId" name="iId" value="${param.iId }">
									<button type="button" class="btn btn-primary" id="btnInquiryAnswerWrite" name="btnInquiryAnswerWrite" style="width: 100%;">등 록</button>
								</div>
							</form>
							</c:if>
							<br>
							<div class="d-flex">
								<div class="ml-auto">
								<c:if test="${answerContent eq null}">
									<button class="btn btn-primary" type="button" onclick="location.href='inquiry'">목록</button>
								</c:if>
								</div>
							</div>
							<br>
						</div>
					
						
					
					<!-- 답변 수정 Modal -->
					<div class="modal fade" id="AnswerEditModal" tabindex="-1" role="dialog" aria-labelledby="AnswerEditModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header border-bottom-0">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
								</div>
								<div class="modal-body">
									<div class="form-title text-center">
										<h4>답변내용 수정</h4>
									</div>
									<div class="d-flex flex-column text-center">
										<form id="AnswerContentModify" name="AnswerContentModify" action="inquiryModify" method="POST">
											<div class="form-group">
												<textarea id="answerEditContent" name="answerContent" class="form-control" rows="3"><c:out escapeXml="false" value="${fn:replace(answerContent.getAnswerContent(), '<br>', crlf)}"/></textarea>
											</div>
											<input type="hidden" id="iId" name="iId" value="<%=request.getParameter("iId")%>">
											<button type="submit" class="btn btn-primary btn-block btn-round">수정하기</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>		
				</div>
				<!-- 본문 -->
			</div>
			<jsp:include page="../layout/footer.jsp"/>
</body>
</html>