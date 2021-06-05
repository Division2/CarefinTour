<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/sb-admin-2.min.css"/>' rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/js/sb-admin-2.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.min.js"/>'></script>
<script src='<c:url value="/resources/js/bootstrap.bundle.min.js"/>'></script>
<script src='<c:url value="/resources/js/jquery.easing.min.js"/>'></script>
<title>케어핀투어 관리자</title>
<style type="text/css">
.container-fluid{
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-gap: 20px;
/* 	row-gap: 10px; */
}
</style>
</head>
<body>
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
				<div class="d-sm-flex align-items-center justify-content-between mb-4">
					<h1 class="h3 mb-0 text-gray-800">&emsp;Banner Management</h1>
				</div>
				<hr class="text-gray-800" ><br>
				<h5 class="h3 mb-0 text-gray-800">&nbsp;메인 및 상품</h5><br>
				<div class="container-fluid" align="center"> 			
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 1 or blist.BID == 2 or blist.BID == 20 or blist.BID == 19}">
							<div style="width:100%">
								<div class="tour-one__single">
									<div class="tour-one__content">
										<font style="vertical-align: inherit;" size="4"> ${blist.BannerCategory}</font>
										<div align="right">
											<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
										</div>
									</div>
									<div class="tour-one__image">
										<c:choose>
											<c:when test="${blist.s_file_name eq null}">
												<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
											</c:when>
											<c:otherwise>
												<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div><br>	
				
				<hr class="text-gray-800" ><br>
				<h5 class="h3 mb-0 text-gray-800">&emsp;해외여행</h5><br>
				<div class="container-fluid" align="center">
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 3 or blist.BID == 4 or blist.BID == 5 or blist.BID == 6 or blist.BID == 7}">
							<div style="width:100%">
								<div class="tour-one__single">
									<div class="tour-one__content">
										<font style="vertical-align: inherit;" size="4"> ${blist.BannerCategory}</font>
										<div align="right">
											<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
										</div>
									</div>
									<div class="tour-one__image">
										<c:choose>
											<c:when test="${blist.s_file_name eq null}">
												<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
											</c:when>
											<c:otherwise>
												<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div>
				
				<hr class="text-gray-800" ><br>
				<h5 class="h3 mb-0 text-gray-800">&emsp;테마여행</h5><br>
				<div class="container-fluid" align="center">
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 8 or blist.BID == 9 or blist.BID == 10}">
							<div style="width:100%">
								<div class="tour-one__single">
									<div class="tour-one__content">
										<font style="align-content: center;" size="4"> ${blist.BannerCategory}</font>
										<div align="right">
											<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
										</div>
									</div>
									<div class="tour-one__image">
										<c:choose>
											<c:when test="${blist.s_file_name eq null}">
												<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
											</c:when>
											<c:otherwise>
												<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div>
				
				<hr class="text-gray-800" ><br>
				<h5 class="h3 mb-0 text-gray-800">&emsp;국내호텔</h5><br>
				<div class="container-fluid" align="center">
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 11 or blist.BID == 21}">
							<div style="width:100%">
								<div class="tour-one__single">
									<div class="tour-one__content">
										<font style="align-content: center;" size="4"> ${blist.BannerCategory}</font>
										<div align="right">
											<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
										</div>
									</div>
									<div class="tour-one__image">
										<c:choose>
											<c:when test="${blist.s_file_name eq null}">
												<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
											</c:when>
											<c:otherwise>
												<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div>
				
				<hr class="text-gray-800" ><br>
				<h5 class="h3 mb-0 text-gray-800">&emsp;여행정보</h5><br>
				<div class="container-fluid" align="center">
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 12 or blist.BID == 13 or blist.BID == 14 or blist.BID == 15 or blist.BID == 16}">
							<div style="width:100%">
								<div class="tour-one__single">
									<div class="tour-one__content">
										<font style="align-content: center;" size="4"> ${blist.BannerCategory}</font>
										<div align="right">
											<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
										</div>
									</div>
									<div class="tour-one__image">
										<c:choose>
											<c:when test="${blist.s_file_name eq null}">
												<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
											</c:when>
											<c:otherwise>
												<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div>
				
				<hr class="text-gray-800"><br>
				<h5 class="h3 mb-0 text-gray-800">&emsp;여행후기</h5><br>
				<div class="container-fluid" align="center">
					<c:forEach items="${blist}" var="blist">
					<c:choose>	
						<c:when test="${blist.BID == 17 or blist.BID == 18}">
							<div style="width:100%">
								<div>
									<font style="align-content: center;" size="4"> ${blist.BannerCategory}</font>
									<div align="right">
										<button class="btn btn-primary" onclick="location.href='bannerModifyView?Bid=${blist.BID}'">변경</button>
									</div>
								</div>
								
								<div>
									<c:choose>
										<c:when test="${blist.s_file_name eq null}">
											<img src='<c:url value="/resources/images/noImage.png"/>' width="100%" height="200">
										</c:when>
										<c:otherwise>
											<img src='<c:url value="/resources/images/banner_main/${blist.s_file_name}" />' alt="" width="100%" height="200px">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</c:when>
					</c:choose>	
					</c:forEach>
				</div>		
				<hr class="text-gray-800" >
				
				<!-- 본문 -->
			</div>
			<!-- 하단 푸터 부분 -->
			<jsp:include page="../layout/footer.jsp"/>
    		<!-- 하단 푸터 부분 -->
		</div>
	</div>
</body>
</html>