<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>케어핀투어 - 고객센터</title>
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
</head>
<body>
	<jsp:include page="../layout/header.jsp"/>

	<div class="container">
		<div class="row">
			<!-- 고객센터 사이드바 -->
			<jsp:include page="sidesupport.jsp"/>
			
			<div class="col-md-8">
				<h1>자주 찾는 질문</h1>
				<hr>
				<div class="col">
					<!-- 질문별 카테고리 -->
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#all">전체</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#overseas">해외여행</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#theme">테마여행</a>
						</li>
					</ul>
					<!-- 질문별 카테고리 내용부분 -->
					<div class="tab-content">
						<div class="tab-pane fade show active" id="all">
							<div id="accordion">
								<div class="card">
									<!-- FAQ 질문부분 -->
									<div class="card-header" id="headingOne">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
												호텔 요금 방금 봤는데 다시 검색하니까 요금이 확인되지를 않습니다?
											</button>
										</h5>
									</div>
									<!-- FAQ 답변부분 -->
									<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
										<div class="card-body">
											객실 요금 및 보유 상황은 실시간으로 변동되므로, 다른 고객님께 준비된 객실이 판매된 경우 동일 요금 조회가 불가능할 수 있습니다.
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="overseas">
							<div id="accordion">
								<div class="card">
									<!-- FAQ 질문부분 -->
									<div class="card-header" id="headingOne">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
												케어핀투어 사이트외에 해외박람회 상품을 이용하고 싶은데요
											</button>
										</h5>
									</div>
									<!-- FAQ 답변부분 -->
									<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
										<div class="card-body">
											케어핀투어 해외박람회 견적문을 통해서 문의를 주시면 가능합니다.
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="theme">
							<div id="accordion">
								<div class="card">
									<!-- FAQ 질문부분 -->
									<div class="card-header" id="headingOne">
										<h5 class="mb-0">
											<button class="btn btn-link" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
												24시간이내 회신이 무슨 뜻인가요? 
											</button>
										</h5>
									</div>
									<!-- FAQ 답변부분 -->
									<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
										<div class="card-body">
											해당 요금으로 확보된 객실이 소진된 상태로, 예약 요청하실 경우 영업일 기준으로 24시간 이내에 객실 확정 여부를 알려드릴 수 있으며, 주말 및 공휴일 예약시 다음 영업일로부터 24시간 이내 처리되고 있습니다.
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>