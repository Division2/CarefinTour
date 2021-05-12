<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href='<c:url value="/resources/css/layout.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	
		<div class="container">
			<div class="d-flex">
				<h1>여행후기 수정</h1>
				<div class="ml-auto">
				</div>
			</div>
			<hr>
			<div class="row">
				<section id="container">
					<form name="updateForm" role="form" method="post" action="/ex/update">
						<input type="hidden" name="prid" value="${update.prid}" readonly="readonly"/>
						<table>
							<tbody>
								<tr>
									<td>
										<label for="title">제목</label><input type="text" id="title" name="title" value="${update.title}"/>
									</td>
								</tr>	
								<tr>
									<td>
										<label for="content">내용</label><textarea id="content" name="content"><c:out value="${update.content}" /></textarea>
									</td>
								</tr>
								<tr>
									<td>
										<label for="writer">작성자</label><input type="text" id="name" name="name" value="${update.name}" readonly="readonly"/>
									</td>
								</tr>
								<tr>
									<td>
										<label for="regdate">작성날짜</label>
										<fmt:formatDate value="${update.redate}" pattern="MM-dd"/>					
									</td>
								</tr>		
							</tbody>			
						</table>
						<div>
							<button type="submit" class="update_btn">저장</button>
							<button type="submit" class="cancel_btn">취소</button>
						</div>
					</form>
				</section>
			</div>
		</div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>