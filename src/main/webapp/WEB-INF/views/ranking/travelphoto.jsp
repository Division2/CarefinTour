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
			<h1>여행 포토</h1>
			<div class="ml-auto">
				<button class="btn btn-primary" onclick="location.href='addphoto'">등록</button>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-sm-3">
				<section>
					<table>
					<c:forEach var="list" items="${list}">
							<a href="#">
								<img src='<c:url value="/resources/image/photoreview_folder/${list.s_file_name}"/>' alt="로고">
							</a>
							<h6>
								<a href="#"><c:out value="${list.title}"/></a>
							</h6>
							<p>
								<span class="sr-only">작성자 </span>
								<span class="sv_member"><c:out value="${list.name}"/></span>
								<br>
								<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
								<span class="sr-only">작성일 </span><i class="far fa-clock"></i><fmt:formatDate value="${list.redate}" pattern="MM-dd"/>
							</p>							
						</c:forEach>	
					</table>
				</section>	
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
			<div class="col-sm-3">
				<section>
					<a href="#">
						<img src='<c:url value="/resources/image/gallery/iu.jpg"/>' alt="로고">
					</a>
						<h6>
							<a href="#">갤러리 테스트</a>
						</h6>
					<p>
						<span class="sr-only">작성자 </span>
						<span class="sv_member">박성동</span>
						<br>
						<span class="sr-only">조회 </span><i class="fas fa-eye"></i> 363<br>
						<span class="sr-only">작성일 </span><i class="far fa-clock"></i> 04-28
					</p>
				</section>
			</div>
		</div>
	</div>
	
	<jsp:include page="../layout/footer.jsp" />
</body>
</html>