<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/page-header-contact.png"/>);">
			<div class="container">
				<h2>여행 포토</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a>CarefinTour</a></li>
				</ul>
			</div>
		</section>
		
		<section class="blog-list">
			<div class="container">
				<div class="blog-details__image">
				<c:if test="${content.s_file_name ne null}">
					<img src='<c:url value="/resources/image/photoreview_folder/${content.s_file_name}"/>' alt="" class="img-fluid">
				</c:if>
				</div>
				<div class="blog-details__content">
					<ul class="list-unstyled blog-one__meta">
						<li><a href="#"><i class="far fa-user-circle"></i> ${content.userId}</a></li>
						<li><a href="#"><i class="far fa-eye"></i> ${content.hit }</a></li>
						<li><a href="#"><i class="far fa-comments"></i> ${replyCount } Comments</a></li>
						<li><a href="#"><i class="far fa-clock"></i> ${content.redate }</a></li>
					</ul>
					<h3>${content.title}</h3>
					<br>
					<p><c:out escapeXml="false" value="${fn:replace(content.content, crlf, '<br>')}"/></p>
				</div>
				<br>
				<c:forEach items="${reply }" var="reply">
				<div class="comment-one">
					<div class="comment-one__single">
						<div class="comment-one__image">
							<img src='<c:url value="/resources/image/ranking/user1.jpg"/>' alt="">
						</div>
						<div class="comment-one__content">
							<p><i class="far fa-clock"></i> ${reply.getRegDate() }</p>
							<h3>${reply.getUserID() }</h3>
							<p id="replyContentSection${reply.getPrrId() }">
								<c:out escapeXml="false" value="${reply.getContent() }"/>
							</p>
							<ul class="list-unstyled blog-one__meta">
							<c:if test="${sessionScope.member.getUserID() eq reply.getUserID() }">
								<li><a href="javascript:void(0)" onclick="test(${reply.getPrrId() }, '${reply.getContent() }')"><i class="far fa-edit"></i> 수정</a></li>
								<li><a href="javascript:void(0)" onclick="TravelPhotoReplyDelete(${param.prid }, ${reply.getPrrId()})"><i class="fas fa-trash-alt"></i> 삭제</a></li>
							</c:if>
							</ul>
						</div>
					</div>
				</div>
				</c:forEach>
				
				<!-- 댓글 페이징 처리(기준 5개) -->
				<div class="post-pagination">
					<!-- 첫 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${replyPaging.pageNo eq replyPaging.firstPageNo }">
							<a class="disabledLink" href="travelphotoView?prid=${param.prid }&page=${replyPaging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:when>
						<c:otherwise>
							<a class="page-link" href="travelphotoView?prid=${param.prid }&page=${replyPaging.prevPageNo}"><i class="fa fa-angle-left"></i></a>
						</c:otherwise>
					</c:choose>
					<!-- 페이지 갯수만큼 버튼 생성 -->
					<c:forEach var="i" begin="${replyPaging.startPageNo }" end="${replyPaging.endPageNo }" step="1">
						<c:choose>
							<c:when test="${i eq replyPaging.pageNo }">
								<a class="active disabledLink" href="travelphotoView?prid=${param.prid }&page=${i}"><c:out value="${i }"/></a>
							</c:when>
							<c:otherwise>
								<a href="travelphotoView?prid=${param.prid }&page=${i}"><c:out value="${i }"/></a>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<!-- 마지막 페이지면 Disabled 아니라면 Enabled -->
					<c:choose>
						<c:when test="${replyPaging.pageNo eq replyPaging.finalPageNo }">
							<a class="disabledLink" href="travelphotoView?prid=${param.prid }&page=${replyPaging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:when>
						<c:otherwise>
							<a href="travelphotoView?prid=${param.prid }&page=${replyPaging.nextPageNo}"><i class="fa fa-angle-right"></i></a>
						</c:otherwise>
					</c:choose>
				</div>
				<br>
				<div class="comment-form">
					<h3 class="comment-form__title">댓글 작성</h3>
					<form action="travelreplyWrite" method="POST" class="contact-one__form">
						<div class="row low-gutters">
							<div class="col-md-12">
								<div class="input-group">
									<textarea id="replyContent" name="Content" placeholder="댓글을 입력하세요..."></textarea>
								</div>
							</div>
							<input type="hidden" id="replyAuthor" name="UserID" value="${sessionScope.member.getUserID() }">
							<input type="hidden" id="prId" name="prId" value="${param.prid }">
							<div class="col-md-12">
								<div class="input-group">
									<button type="button" onclick="" id="btnReplyWrite" name="btnReplyWrite" class="thm-btn contact-one__btn">작성하기</button>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="d-flex">
					<div class="ml-auto">
						<form name="postUpdate" method="POST">
						<!-- 세션의 ID와 게시글 작성자가 같을 경우에만 수정, 삭제 권한을 줌 -->
						<c:if test="${sessionScope.member.getUserID() eq content.userId }">
							<button class="thm-btn-psd" type="button" onclick="location.href='travelphotoModifyView?prid=${content.prid}'">수정</button>
							<button class="thm-btn-psd" type="button" onclick="TravelPhotoDelete()">삭제</button>
						</c:if>
							<button class="thm-btn-psd" type="button" onclick="location.href='travelphoto'">목록</button>
						</form>
					</div>
				</div>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp" />
		<script src='<c:url value="resources/js/Board.js"/>'></script>
	</div>
	<!-- 메인 영역 -->
</body>
</html>