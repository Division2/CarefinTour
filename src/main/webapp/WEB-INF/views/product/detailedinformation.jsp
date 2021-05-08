<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='<c:url value="/resources/css/section.css"/>' rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- Bootstrap core CSS -->
</head>
<body>
	<jsp:include page="../layout/header.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="card mt-4">
					<img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
					<div class="card-body">
						<h3 class="card-title">여행패키지 이름</h3>
						<h4>가격</h4>
						<table class="table table-hover table-white">
							<tr>
								<th align="center">예약 현황</th>
								<td align="center">현재예약 및 최소출발 인원</td>
							</tr>
							<tr>
								<th align="center">여행 기간</th>
								<td align="center">여행 기간 및 항공사 ex )3박5일 아시아나 항공</td>
							</tr>
							<tr>
								<th align="center">요약설명</th>
								<td align="center">ex) 어디호텔 숙박 유니버셜 스튜디오 자유이용권 선상식사 하루 자유일정</td>
							</tr>
							<tr>
								<th align="center">여행여정</th>
								<td align="center">인천 - 일본(3) - 기내(1) - 인천</td>
							</tr>
							<tr>
								<th align="center">미팅장소</th>
								<td align="center">인천국제공항 1터미널 3층 N카운터 14번 출입구앞</td>
							</tr>

						</table>
					</div>
				</div>
			</div>


			<div class="col-md-4">
				<div class="card my-4">
					<h5 class="card-header">상품가격</h5>

					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<div class="col-xs-4">
										<p>
											<b>성인 <!--성인-->
												<div class="select">
													<select id="jq_id_adultCnt" class="jq_cl_personCnt"
														style="float: right;">
														<option value="1" selected="selected">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
													</select>
												</div>
											</b>
										<p>
											<b>가격</b>
										</p>






										<p>
											<span>가격</span>
										</p>

									</div>
									<div class="prices price-2">
										<p>
											<b>아동</b> <b class="jq_cl_childSalePrice">가격</b>
										</p>
										<div class="priceSelect">
											<!--아동-->
											<div class="select">
												<select id="jq_id_childCnt" class="jq_cl_personCnt">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</select>
											</div>
											<p></p>
										</div>
										<!--아동//-->
									</div>
									<div class="prices price-3">
										<p>
											<b>유아</b> <b class="jq_cl_infantSalePrice">가격</b>
										</p>
										<div class="priceSelect">
											<!--유아-->
											<div class="select">
												<select id="jq_id_infantCnt" class="jq_cl_personCnt">
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</select>
											</div>
											<p></p>
										</div>
										<!--유아//-->
									</div>
									<p>
										<span>총 금액 </span><span id="jq_id_priceTotal" class="won">총
											합산액</span>

										<script type="text/javascript">
											function gopagePost() {

												document.myForm.action = "detailresvation";
												document.myForm.method = "post";
												document.myForm.submit();
											}
										</script>
									<form name="myForm">
										<input type="hidden" name="abc" value="예약하기" /> <input
											type="button" onclick="gopagePost()" value="예약하기" />
									</form>



									<!--  <input type='button' value='예약하기' onClick="location.href= 'detailresvation.jsp'"> -->

									</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../layout/footer.jsp" />
</body>
</html>