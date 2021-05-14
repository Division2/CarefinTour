<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
	<style>
ul.faq {
	list-style-type: none;
}
ul.faq li {
	float: left;
	border: 1px solid #bcbcbc;
	padding: 10px;
}
	</style>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>
	<script src='<c:url value="resources/js/Board.js"/>'></script>
	
	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>자주 찾는 질문</h1>
				<hr>
				<div class="d-flex">
					<div class="mx-auto">
						<ul class="faq">
							<li><a href="support">전체</a></li>
							<li><a href="support?category=해외여행">해외여행</a></li>
							<li><a href="support?category=테마여행">테마여행</a></li>
						</ul>
					</div>
				</div>
				<br>
				<c:choose>
					<c:when test="${param.category eq null }">
						<div id="accordion">
							<h4>전체</h4>
							<hr>
							<c:forEach items="${faqAllList}" var="List">
							<div class="card">
								<!-- FAQ 질문부분 -->
								<div class="card-header" id="heading${List.getfId()}">
									<h5 class="mb-0">
										<button class="btn btn-link" data-toggle="collapse" data-target="#collapse${List.getfId()}" aria-expanded="true" aria-controls="collapse${List.getfId()}">
											<c:out escapeXml="false" value="${List.getTitle()}"/>
										</button>
									</h5>
								</div>
								<!-- FAQ 답변부분 -->
								<div id="collapse${List.getfId()}" class="collapse" aria-labelledby="heading${List.getfId()}" data-parent="#accordion">
									<div class="card-body">
										<c:out escapeXml="false" value="${List.getContent()}"/>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</c:when>
					<c:when test="${param.category ne null }">
						<div id="accordion">
							<c:forEach items="${faqOtherList}" var="List">
							<h4><c:out value="${List.getCategory() }"/></h4>
							<hr>
							<div class="card">
								<!-- FAQ 질문부분 -->
								<div class="card-header" id="heading${List.getfId()}">
									<h5 class="mb-0">
										<button class="btn btn-link" data-toggle="collapse" data-target="#collapse${List.getfId()}" aria-expanded="true" aria-controls="collapse${List.getfId()}">
											<c:out escapeXml="false" value="${List.getTitle()}"/>
										</button>
									</h5>
								</div>
								<!-- FAQ 답변부분 -->
								<div id="collapse${List.getfId()}" class="collapse" aria-labelledby="heading${List.getfId()}" data-parent="#accordion">
									<div class="card-body">
										<c:out escapeXml="false" value="${List.getContent()}"/>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp"/>
	
</body>
</html>