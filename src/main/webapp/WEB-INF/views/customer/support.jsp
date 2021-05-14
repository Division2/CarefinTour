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
	<script src='<c:url value="resources/js/Board.js"/>'></script>
	
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
<style>
.question-tab {margin-bottom:60px;padding-left:1px;*zoom:1}
.question-tab:after {content:'';display:block;clear:both}
.question-tab li {float:left;margin-left:-1px}
.question-tab li a {display:block;height:58px;padding:0 16px 0 15px;border:1px solid #e2e2e2;font-size:18px;line-height:58px;color:#767676;letter-spacing:-0.008em;text-align:center}
.question-tab li:first-child a {border-left:1px solid #e2e2e2}
.question-tab li.s-active a {position:relative;border:1px solid #3c3c3c;color:#3c3c3c}
.question-tab li.s-active:first-child a {margin-left:0}
.question-list {border-top:2px solid #3c3c3c}
.question-list li {border-bottom:1px solid #e2e2e2}
.question-list li .ico {position:absolute;left:1px;width:24px;height:24px;background:url(/asset/v2/images/common/sp_greencar.png?v=191128) no-repeat;font:0/0 dotum !important}
.question-list .question {display:block;position:relative;padding:29px 120px 29px 65px;line-height:1.5;color:#3c3c3c}
.question-list .question .ico {top:28px;left:20px;background-position:-89px 0}
.question-list .question .arr {position:absolute;top:35px;right:20px;width:14px;height:8px;background:url(/asset/v2/images/common/sp_greencar.png?v=191128) no-repeat -210px -99px}
.question-list .question.s-active .arr {background-position:-191px -99px}
.question-list .answer {display:none}
.question-list .s-active+.answer {display:block}
.question-list .answer .cont {position:relative;padding:23px 120px 30px 65px;font-size:13px;line-height:1.5;color:#767676}
.question-list .answer * {font-family:'Noto Sans KR','맑은고딕','Malgun Gothic','MGothic',sans-serif,'돋움',Dotum,'굴림',Gulim !important;font-size:13px !important;line-height:1.5}
.question-list .answer b, .question-list .answer strong {font-weight: 600 !important}
.question-list .answer .ico {top:22px;left:20px;background-position:-118px 0}
.question-list .box-nodata {height:79px}
.answer .cont > p {margin: 0 0 .5rem;}
</style>
         <ul class="question-list">
          
          

          
          

          
          
            
              <li>
                <a class="question" href="#1FWC5v5bpUm5dycLN4IeVVQ=="><span class="ico">질문</span>예약한 장소가 아닌 다른 그린존에 반납이 가능한가요<span class="arr"></span></a>

                <div class="answer">
                  <div class="cont">
                    <span class="ico">답변</span><p><small>왕복으로 예약하신 경우&nbsp;<br />
대여하신 그린존으로 반납해주셔야 합니다.&nbsp;<br />
(그린존/프리존 편도 서비스 제외)</small></p>

<p><small>각 차량은 소속된 그린존(주차장)에&nbsp;<br />
차량번호 등록하여 주차 중으로 정해진 그린존이 아닌 경우,&nbsp;<br />
일반 차량으로 간주되어 주차비가 발생됩니다.</small></p>

<p><small>이로 인한 비용 발생(차량 이동, 주차)시&nbsp;<br />
패널티(주차비, 견인비용)가 별도 청구되오니 주의 부탁 드립니다.&nbsp;</small></p>

<p><small>부득이한 상황으로 지정된 그린존에 반납이 불가한 경우<br />
고객센터(080-2000-3000)으로 연락하시어 상담 부탁드리며<br />
주차하신 위치는 그린댓글에 기재하시어 이후 사용자가&nbsp;<br />
차량 위치를 확인하는데 혼동이 없도록 배려 부탁드립니다.</small></p>
                  </div>
                </div>
              </li>
              </ul>
					<!-- 질문별 카테고리 내용부분 -->
					<div class="tab-content">
						<div class="tab-pane fade show active" id="all">
							<div id="accordion">
								<div class="card">
								<c:forEach items="${faqAllList}" var="List">
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
									</c:forEach>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="overseas">
						<c:forEach items="${faqOtherList }" var="List">
							<div id="accordion">
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
							</div>
							</c:forEach>
						</div>
						<div class="tab-pane fade" id="theme">
						<c:forEach items="${faqOtherList }" var="List">
							<div id="accordion">
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
							</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/footer.jsp"/>
</body>
</html>