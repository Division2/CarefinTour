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
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$(".update_btn").on("click", function(){
				formObj.attr("action", "/ex/update");
				formObj.attr("method", "get");
				formObj.submit();				
			})
			
			// 삭제
			$(".delete_btn").on("click", function(){
				formObj.attr("action", "/ex/delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
			
			// 취소
			$(".list_btn").on("click", function(){
				
				location.href = "/ex/mylist";
			})
		})
	</script>
<title>케어핀투어 - 여행 포토</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	
		<div class="container">
			<div class="row">
			<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form name="readForm" role="form" method="post">
					<input type="hidden" id="prid" name="prid" value="${read.prid}" />
					<table>
						<tbody>
							<tr>
								<td>
									<label for="bno">글 번호</label><input type="text" id="prid" name="prid" value="${read.prid}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="title">제목</label><input type="text" id="title" name="title" value="${read.title}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="content">내용</label><textarea id="content" name="content"><c:out value="${read.content}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${read.name}" />
								</td>
							</tr>
							<tr>
								<td>
									<label for="regdate">작성날짜</label>
									<fmt:formatDate value="${read.redate}" pattern="MM-dd"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
					<button type="submit" class="update_btn">수정</button>
					<button type="submit" class="delete_btn">삭제</button>
					<button type="submit" class="list_btn">목록</button>	
					</div>
				</form>
			</section>
			<hr />
		</div>
			</div>
		</div>
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>