<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/inquiry.css"/>' rel="stylesheet">
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
						<h1 class="h3 mb-0 text-gray-800">Post Management</h1>
					</div>
					<small>케어핀투어 전체 게시물 총 갯수 : <c:out value="${NoticeTotalCount + InquiryTotalCount + TravelPhotoTotalCount}"/> </small>
					<hr>
					<table class="table table-hover table-white">
						<caption style="caption-side: top;">공지사항 게시글 총 갯수 : ${NoticeTotalCount }</caption>
						<caption style="caption-side: top; margin-top:-50px; text-align:right;"><a href="noticedetail">더보기</a></caption>
						<colgroup>
							<col width="1%">
							<col width="30%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th>NID</th>
								<th>제목</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${NoticeList }" var="NoticeList">
							<tr>
								<td>${NoticeList.getnId() }</td>
								<td><a href="/ex/noticeView?nId=${NoticeList.getnId() }" target="_blank">${NoticeList.getTitle() }</a></td>
								<td>${NoticeList.getReDate() }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<table class="table table-hover table-white">
						<caption style="caption-side: top;">1:1 문의 게시글 총 갯수 : ${InquiryTotalCount }</caption>
						<caption style="caption-side: top; margin-top:-50px; text-align:right;"><a href="inquirydetail">더보기</a></caption>
						<colgroup>
							<col width="1%">
							<col width="8%">
							<col width="30%">
							<col width="5%">
							<col width="5%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th>IID</th>
								<th>카테고리</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>답변상태</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${InquiryList }" var="InquiryList">
							<tr>
								<td>${InquiryList.getiId() }</td>
								<td><span class="inquiry-category">${InquiryList.getCategory() }</span></td>
								<td><a href="/ex/inquiryView?iId=${InquiryList.getiId() }" target="_blank">${InquiryList.getTitle() }</a></td>
								<td>${InquiryList.getUserId() }</td>
								<td>${InquiryList.getReDate() }</td>
						<c:choose>
							<c:when test="${InquiryBoardVO.status eq 0}">
								<td><span class="inquiry-status status-0">답변대기</span></td>
							</c:when>
							<c:when test="${InquiryBoardVO.status eq 1}">
								<td><span class="inquiry-status status-1">답변보류</span></td>
							</c:when>
							<c:otherwise>
								<td><span class="inquiry-status status-2">답변완료</span></td>
							</c:otherwise>
						</c:choose>
							</tr>
						</c:forEach>
						</tbody>
					</table>
					<table class="table table-hover table-white">
						<caption style="caption-side: top;">여행 포토 게시글 총 갯수 : ${TravelPhotoTotalCount }</caption>
						<caption style="caption-side: top; margin-top:-50px; text-align:right;"><a href="travelphotodetail">더보기</a></caption>
						<colgroup>
							<col width="1%">
							<col width="30%">
							<col width="5%">
							<col width="5%">
							<col width="5%">
						</colgroup>
						<thead>
							<tr>
								<th>PRID</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${TravelPhotoList }" var="TravelPhotoList">
							<tr>
								<td>${TravelPhotoList.getPrid() }</td>
								<td><a href="/ex/travelphotoView?prid=${TravelPhotoList.getPrid() }" target="_blank">${TravelPhotoList.getTitle() }</a></td>
								<td>${TravelPhotoList.getUserId() }</td>
								<td>${TravelPhotoList.getRedate() }</td>
								<td>${TravelPhotoList.getHit() }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>