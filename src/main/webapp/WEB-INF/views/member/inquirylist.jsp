<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 회원 정보</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			
			<jsp:include page="sidemypage.jsp"/>
			<form action="inquiry1" method="POST">   
			<div class="col-md-8">
				<h1>1:1 문의 내역</h1>
				<hr>
				<table class="table table-hover table-white">
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
						</tr>
					</thead>
					<c:forEach items="${InquiryList1}" var="InquiryList1">
					<tbody>					
						<tr>
					<%-- 	<c:choose>
							<c:when test = "${sessionScope.member.getUserID() eq InquiryList1.userId"> --%>
								<td>${InquiryList1.iId }</td>
								<td><a href="inquirydetails">${InquiryList1.title }</a></td>
						<%-- 		</c:when>
							</c:choose> --%>
						</tr>						
					</tbody>
					</c:forEach>
				</table>
			</div>
			</form>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>