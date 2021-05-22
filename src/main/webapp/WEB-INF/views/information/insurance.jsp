<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1d6c0ae7305fb9210dc71640a373972b"></script>
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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/sky.png"/>);">
			<div class="container">
				<h2>여행자 보험</h2>
			</div>
		</section>
		
		<section class="tour-one">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h4>여행 출발하기 전 각종정보를 꼭 확인하시고</h4>
						<h4>더욱 편안한 여행되시길 바랍니다.</h4>
					</div>
				</div>
			
				<div class="row" style="width: 100%">
					<div style="float: none; margin: 0 auto">
						<div class="nav-control">
							<p>
							<ul class="nav nav-tabs nav-justified">
								<li class="nav-item">
									<a class="nav-link active" data-toggle="tab" href="#qwe" style="background: #f1f3f5; width: 370px; height: 100px;">
										<strong>여행보험</strong>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab" style="background: #f1f3f5; width: 370px; height: 100px;" href="#asd">
										<strong>보상기준</strong>
									</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" data-toggle="tab" style="background: #f1f3f5; width: 370px; height: 100px;" href="#zxc">
										<strong>보험약관</strong>
									</a>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane fade show active" id="qwe">
									<h3><strong>해외/국내 보험이란?</strong></h3>
									<h5 style="color:#4A4F5A;">해외·국내 여행보험은 여행 중 발생하는 사고에 대한 보상을 해주는 여행종합보험입니다.</h5>
									<table class="table">
										<tr>
											<th bgcolor="white" height="80px" style="border: solid 2px #E2E2E2;">
												<dl>
													<dt style="color: #4B89DC; font-size: 20px;">문의전화</dt>
													<dd>
														<p><b style="font-size:20px"><strong>DB손해보험 &nbsp;</strong></b> &nbsp;질병/상해 관련 : 1566-1040 휴대품관련 1899-4040 _1588-0100</p>
														<p><b style="font-size:20px"><strong>MG손해보험 &nbsp;</strong></b> &nbsp; 02-3702-2326</p>
													</dd>
												</dl>
											</th>
										</tr>
									</table>
									<br />
									
									<h3><strong>보험 적용 나이 기준</strong></h3>
									<h5 style="color:#4A4F5A;">
										해당 나이는 보험나이를 기준으로 하며, 보험나이는 피보험자의 실제 만 나이를 기준으로 6개월 미만의 끝수는 버리고
										6개월 이상의 <br />끝수는 1년으로 하여 계산하고, 이후 매년 계약 해당일에 나이가 증가하는 것으로 합니다.
									</h5>
									<table class="table">
										<tr>
											<th bgcolor="white" height="80px" border="black">
												<p><strong>[ 보험나이 계산 예시 ]</strong></p>
												<p style="color: #4A4F5A; font-size: 17px;">
													생년월일: 1988년 10월 2일, 현재(계약일): 2018년 4월 13일 ⇒ 2018년 4월 13일 -
													1988년 10월 2일 = 29년 6월 11일 = 30세<br />생년월일: 1988년 12월 2일,
													현재(계약일): 2018년 4월 13일 ⇒ 2018년 4월 13일 - 1988년 12월 2일 = 29년 4월
													11일 = 29세
												</p>
											</th>
										</tr>
									</table>
									<br />
									
									<h3><strong>해외/국내 여행자보험 보상한도액</strong></h3>
									<h5 style="color:#4A4F5A;">2020.03.19 출발부터 적용되며, 2009 7월부터 '본인분담금제도' 도입으로 의료비청구시 본인분담금을 제외한 금액만 보장됩니다.</h5>
									<br />
									<h4>DB손해보험 해외여행</h4>
									<hr color="#4A4F5A">
									<h3>해외/국내 여행자보험 보상한도액</h3>
									<p class="prg_desc">2020.03.19 출발부터 적용되며, 2009 7월부터 '본인분담금제도' 도입으로 의료비청구시 본인분담금을 제외한 금액만 보장됩니다.</p>
									<h4>DB손해보험 해외여행</h4>
									<table summary="DB손해보험 해외여행보상한도내용" style="border: solid 2px #f1f3f5; text-align: center; font-size: 18px;">
										<caption class="hide">DB손해보험 해외여행보상한도 표</caption>
										<colgroup>
											<col width="8%">
											<col width="19%">
											<col width="14%">
											<col width="14%">
											<col width="15%">
											<col width="15%">
											<col width="15%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col" colspan="2" bgcolor="#f1f3f5">구&nbsp;&nbsp;분</th>
												<th scope="col" bgcolor="#f1f3f5">만0세~14세</th>
												<th scope="col" bgcolor="#f1f3f5">만15세~69세 Ⅰ</th>
												<th scope="col" bgcolor="#f1f3f5">만15세~69세 Ⅱ</th>
												<th scope="col" bgcolor="#f1f3f5">만70세~79세</th>
												<th scope="col" bgcolor="#f1f3f5">만80세~100세</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row" rowspan="6" class="tc">상해</th>
												<th scope="row">상해사망후유장해</th>
												<td class="tc">-</td>
												<td>100,000,000원</td>
												<td>200,000,000원</td>
												<td>100,000,000원</td>
												<td>100,000,000원</td>
											</tr>
											<tr>
												<th scope="row">상해후유장해</th>
												<td>100,000,000원</td>
												<td class="tc">-</td>
												<td class="tc">-</td>
												<td class="tc">-</td>
												<td class="tc">-</td>
											</tr>
											<tr>
												<th scope="row">해외발생의료비</th>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생입원의료비</th>
												<td>2,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생외래의료비</th>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생처방조제의료비</th>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
											</tr>
											<tr>
												<th scope="row" rowspan="5" class="tc">질병</th>
												<th scope="row">(해외)여행중 질병사망 및 질병 80%이상 후유장해</th>
												<td class="tc">-</td>
												<td>30,000,000원</td>
												<td>30,000,000원</td>
												<td class="tc">-</td>
												<td class="tc">-</td>
											</tr>
											<tr>
												<th scope="row">해외발생의료비</th>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생입원의료비</th>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생외래의료비</th>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생처방조제의료비</th>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">국내발생도수치료/체외충격/증식</th>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">국내발생비급여주사료</th>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">국내발생비급여자기공명진단</th>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">배상책임(면책금1만원)</th>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>2,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">(해외)여행중 휴대품손해<br>(분실제외,면책금1만원)
												</th>
												<td>500,000원</td>
												<td>500,000원</td>
												<td>1,000,000원</td>
												<td>200,000원</td>
												<td>200,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">(해외)여행중 중대사고 구조송환비용</th>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">항공기납치담보(일당)</th>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
											</tr>
										</tbody>
									</table>
			
									<p>※ 만 14세 이하는 후유장해에 대해서만 보상합니다. (사망시 제외)</p>
									<br />
									<h4>DB손해보험 국내여행</h4>
									<hr color="#4A4F5A">
									<table summary="DB손해보험 국내여행보상한도내용" style="text-align: center; font-size: 18px;">
										<caption class="hide">DB손해보험 국내여행보상한도 표</caption>
										<colgroup>
											<col width="8%">
											<col width="22%">
											<col width="17.5%">
											<col width="17.5%">
											<col width="17.5%">
											<col width="17.5%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col" colspan="2" bgcolor="#f1f3f5">구&nbsp;&nbsp;분</th>
												<th scope="col" bgcolor="#f1f3f5">만0세~14세</th>
												<th scope="col" bgcolor="#f1f3f5">만15세~69세</th>
												<th scope="col" bgcolor="#f1f3f5">만70세~79세</th>
												<th scope="col" bgcolor="#f1f3f5">만80세~100세</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row" rowspan="5">상해</th>
												<th scope="row">상해사망후유장해</th>
												<td class="tc">-</td>
												<td>50,000,000원</td>
												<td>30,000,000원</td>
												<td>20,000,000원</td>
											</tr>
											<tr>
												<th scope="row">상해후유장해</th>
												<td>30,000,000원</td>
												<td>-</td>
												<td>-</td>
												<td>-</td>
											</tr>
											<tr>
												<th scope="row">국내발생입원의료비</th>
												<td>1,000,000원</td>
												<td>2,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생외래의료비</th>
												<td>100,000원</td>
												<td>100,000원</td>
												<td>100,000원</td>
												<td>100,000원</td>
											</tr>
											<tr>
												<th scope="row">국내발생처방조제의료비</th>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
											</tr>
											<tr>
												<th scope="row" class="tc">질병</th>
												<th scope="row">질병사망</th>
												<td>-</td>
												<td>5,000,000원</td>
												<td>-</td>
												<td>-</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">배상책임</th>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>2,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">휴대품손해</th>
												<td>200,000원</td>
												<td>200,000원</td>
												<td>200,000원</td>
												<td>200,000원</td>
											</tr>
										</tbody>
									</table>
									<br />
			
									<h4>MG손해보험 해외여행</h4>
									<hr color="#4A4F5A">
									<table summary="DB손해보험 국내여행보상한도내용"
										style="text-align: center; font-size: 18px;">
										<colgroup>
											<col width="8%">
											<col width="19%">
											<col width="14%">
											<col width="14%">
											<col width="15%">
											<col width="15%">
											<col width="15%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col" colspan="2" bgcolor="#f1f3f5">구분</th>
												<th scope="col" bgcolor="#f1f3f5">만0세~14세</th>
												<th scope="col" bgcolor="#f1f3f5">만15세~69세Ⅰ</th>
												<th scope="col" bgcolor="#f1f3f5">만15세~69세Ⅱ</th>
												<th scope="col" bgcolor="#f1f3f5">만70세~79세</th>
												<th scope="col" bgcolor="#f1f3f5">만80세~100세</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th colspan="2" scope="row" class="tc">상해 사망/후유장해</th>
												<td>-</td>
												<td>100,000,000원</td>
												<td>200,000,000원</td>
												<td>100,000,000원</td>
												<td>100,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">상해 후유장해</th>
												<td>100,000,000</td>
												<td>-</td>
												<td>-</td>
												<td>-</td>
												<td>-</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">(해외)여행중 질병사망 및<br>질병 80%이상 후유장해</th>
												<td>-</td>
												<td>30,000,000원</td>
												<td>30,000,000원</td>
												<td>-</td>
												<td>-</td>
											</tr>
											<tr>
												<th scope="row" rowspan="4" class="tc">상해</th>
												<th scope="row">국내입원의료</th>
												<td>2,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내외래비</th>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
											</tr>
											<tr>
												<th scope="row">국내처방조제비</th>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
											</tr>
											<tr>
												<th scope="row">해외의료비</th>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th scope="row" rowspan="4" class="tc">질병</th>
												<th scope="row">국내입원의료비</th>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
											</tr>
											<tr>
												<th scope="row">국내외래비</th>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
												<td>250,000원</td>
											</tr>
											<tr>
												<th scope="row">국내처방조제비</th>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
												<td>50,000원</td>
											</tr>
											<tr>
												<th scope="row">해외의료비</th>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
												<td>1,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row">특약1(도수,체외,증식)</th>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
												<td>3,500,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row">특약2(주사제)</th>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
												<td>2,500,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row">특약3(MRI)</th>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">배상책임</th>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
												<td>5,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">(해외)여행중 휴대품손해<br>(분실제외,면책금1만원)
												</th>
												<td>500,000원</td>
												<td>500,000원</td>
												<td>1,000,000원</td>
												<td>200,000원</td>
												<td>200,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">(해외)여행중 중대사고 구조송환비용</th>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
												<td>3,000,000원</td>
											</tr>
											<tr>
												<th colspan="2" scope="row" class="tc">항공기납치(일당)</th>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
												<td>70,000원</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="tab-pane fade" id="asd">
									<br />
									<h5 style="color:#4A4F5A;">
										금융위원회는 09.07.16 보험업감독 규정 개정안에서 건강보험 재정 개선을 위해 [자기부담금제도]를<br />도입하였습니다.
										이에 따라 의료비 청구인 경우 [자기부담금]을 제외한 치료실비만 보장됨을 알려드립니다.
									</h5>
									<br />
									<h4 align="center" style="color: #4B89DC;">DB/MG손해보험(해외)</h4>
									<br />
									<h3>
										<strong>DB/MG 손해보험 해외보험 보상기준</strong>
									</h3>
									<br />
									<h5><strong>해외여행보험의 보상내역</strong></h5>
									<hr color="black">
									<div class="font">
										<table summary="해외여행보험의 보상내역내용" style="font-size: 18px;">
											<caption class="caption_hide">해외여행보험의 보상내역</caption>
											<colgroup>
												<col style="width: 100px;" />
												<col style="width: 100px;" />
												<col style="width: auto;" />
											</colgroup>
											<thead>
												<tr>
													<th scope="col" colspan="2" bgcolor="#f1f3f5"><strong>구분</strong></th>
													<th scope="col" bgcolor="#f1f3f5">보장내용</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row" colspan="2">상해사망후유장해</th>
													<td>
														<p>
															피보험자가 해외여행도중 상해의 직접결과로써 사망하거나 약관상 장해분류표에서 정한 각 장해지급률에<br>
															해당하는 장해 상태가 되었을경우.
														</p>
													</td>
												</tr>
												<tr>
													<th scope="row" rowspan="4">실손의료비 상해<br>/ 질병</th>
													<th scope="row">해외발생<br>의료비</th>
													<td>피보험자가 해외여행 중 입은 상해 또는 질병으로 인해 해외의료기관에서 의사의 치료를 받은 때에는 보험
														<br>가입금액을 한도로 피보험자가 실제 부담한 의료비 전액 보상 (척추지압술,침술은 US$ 1,000.00 한도로<br>보상)
														<br>- 치료를 받던 중 보험기간이 만료되었을 경우에는 보험기간 종료일로부터 180일까지 보상(보험기간 종료일은 제외)
													</td>
												</tr>
												<tr>
													<th scope="row">국내발생<br>의료비</th>
													<td>피보험자가 해외여행 중 입은 상해 또는 질병으로 인해 국내의료기관에 입원하여 치료를 받은 경우.<br>
														-국민건강보험법에서 정한 요양급여 또는 의료급여법에서 정한 의료급여 중 본인부담금의 90% 해당액과 비급여의
														80% <br>해당액의 합계액 -실제사용병실과 기준병실과의 차액은 50%보상(1일평균금액
														10만원한도)<br> *국민건강보험법 미적용 시 실제부담액의 40% 보상<br> - 치료를
														받던 중 보험기간이 만료되었을 경우에는 계속 중인 입원에 대하여 보험기간 종료일로부터 180일까지 보상<br>(보험기간
														종료일은 제외)
													</td>
												</tr>
												<tr>
													<th scope="row">국내발생<br>외래의료비</th>
													<td>피보험자가 해외여행중에 입은 상해 또는 질병으로 국내병원에서 통원하여 치료를 받은경우.
														<br>-국민건강보험법에서 정한 요양급 또는 의료급여법에서 정한 의료급여 중 본인부담금과 비급여의
														<br>합계액에서 공제금액(병원별 공제금액과 보상대상의료비의 급여 10%해당액과 비급여 20% 해당액의 합산액
														<br> 중 큰 금액)을 차감하고 가입금액 한도로 보상.
														<br> -공제금액: 의원-1만원, 병원-1만5천원, 종합전문요양기관-2만원
														<br> *국민건강보험법 미적용 시 실제부담액의 40% 보상
														<br> -치료를 받던 중 보험기간이 만료되었을 경우에는 계속 중인 통원치료에 대하여 보험기간 종료일로부터
														<br> 180일이내(방문 90회, 처방전 90건)로 보상.
													</td>
												</tr>
												<tr>
													<th scope="row">국내발생<br>처방조제<br>의료비</th>
													<td>피보험자가 해외여행중에 입은 상해 또는 질병으로 국내병원에서 치료를 받은 후 처방조제를 받은 경우.
														<br> -처방전 1건당 국민건강보험범에서 정한 요양급여 또는 의료급여법에서 정한 의료급여 중 본인부담금과
														<br> 비급여의 합계약에서 공제금액(8천원과 보상대상의 의료비급여10%해당액과 비급여20%해당액의 합산
														<br>액중 큰 금액)을 차감하고 가입금액 한도로 보상.
														<br>-공제금액:1회당 8천원
														<br> *국민건강보험법 미적용 시 실제부담액의 40% 보상
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">(해외)여행중 질병사망 및 질병 80%이상 후유장해</th>
													<td>피보험자가 해외여행 중에 질병으로 사망하거나 보험기간 중에 진단확정된 질병으로 약관상 장해분류표에
														<br>서 정한 장해지급률이 80%이상에 해당하는 장해상태가 되었을때 보험증권에 기재된 보험가입금액을
														<br> 지급
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2" rowspan="2">국내도수치료/체외충격/증식</th>
													<td>피보험자가 해외여행중 입은 상해 또는 질병의 치료목적으로 국내병원에 입원 또는 통원하여 비급여 도수치료
														<br> 체외충격파치료 증식치료 를 받는경우
													</td>
												</tr>
												<tr>
													<td>1회당 2만원과 보상대상의료비의 30% 중 큰 금액 공제. 계약일로부터 1년단위로 350만원 이내 50회까<br>지 보상</td>
												</tr>
												<tr>
													<th scope="row" colspan="2" rowspan="2">국내비급여주사료</th>
													<td>피보험자가 해외여행중 입은 상해 질병의 치료목적으로 국내병원에 입원 또는 통원하여 주사치료를 받아
														<br> 본인이 실제로 부담한 비급여 주사료
													</td>
												</tr>
												<tr>
													<td>입원.통원 1회당 2만원과 보상대상의료비의 30% 중 큰 금액 공제. 계약일로부터 1년단위로 250만원 이
														<br>내에서 입원 통원 합산하여 50회까지 보상
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2" rowspan="2">국내자기공명진단</th>
													<td>피보험자가 해외여행중 입은 상해 질병의 치료목적으로 국내병원에 입원 또는 통원하여 자기공명영상진단
														<br>을 받아 본인이 실제로 부담한 비급여의료비
													</td>
												</tr>
												<tr>
													<td>1회당 2만원과 보상대상의료비의 30% 중 큰 금액 공제 .계약일로부터 1년단위로 연간 300만원 한도내<br> 보상</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">배상책임</th>
													<td>피보험자가 해외여행 중에 생긴 사고로 타인의 신체의 장해 또는 재물의 손해에 대한 법률상의 배상책임을
													<br> 부담함으로써 입은 손해를 보상 (공제금액-1만원)
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">(해외)여행중 휴대품손해 (분실제외)</th>
													<td>해외여행도중 우연한 사고(도난,파손)로 휴대품에 손해가 생길 경우 1조(또는 1쌍,1개)에 대하여 20만원
														<br>을 한도로 보험가입금액 내에서 실제손해액을 보상. 단, 통화, 유가증권,신용카드, 쿠폰, 항공권, 여권, 자<br>동차, 동.식물, 콘택트렌즈 등은 해당사항 없음(자기부담금 1만원)
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">(해외)여행중 중대사고 구조송환비용</th>
													<td>다음의 사유로 계약자,피보험자 또는 피보험자의 법정상속인이 부담하는 비용을 보상
														<br>-해외여행 중 피보험자가 탑승한 항공기,선박이 행방불명 또는 조난된경우<br> -산악등반 중에 조난된 경우
														<br> -해외여행중 사고에 따라 긴급수색구조 등이 필요한 상태로 된 것이 경찰 등에 공공기관에 의하여 확인된<br> 경우
														<br> -해외여행 중 상해로 인하여 사망한 경우 또는 14일 이상 계속 입원한 경우
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">항공기납치</th>
													<td>해외여행도중 피보험자가 승객으로서 탑승한 항공기가 납치됨에 따라 예정목적지에 도착할 수 없게 된 경<br>우 매일 7만원씩 20일을 한도(최고 140만원)로 보상
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<p>
										* 실손의료비(상해/질병)는 보험금을 지급할 다수계약이 체결되어 있는 경우에는 비례보상합니다. 다만, 이미 가입한 보험계약에서 보
										<br> 상한 금액이 본인이 부담한 의료비를 초과하였을 때에는 보험금이 지급되지 않을 수 있습니다.
									</p>
									<p>* 보상하는 손해, 보장하지 아니하는 손해등 기타 세부적인 사항은 약관 내용에 따라 제한 될 수 있으니 반드시 약관을 참조하시기 바랍니다.</p>
									<br>
									<h4>보상시 필요한서류</h4>
									<hr color="#4A4F5A">
									<div class="tbl tbl_datasty_1">
										<table summary="보상시 필요한 서류" style="font-size: 18px;">
											<caption class="caption_hide">보상시 필요한 서류</caption>
											<colgroup>
												<col style="width: 100px;" />
												<col style="width: 100px;" />
												<col>
											</colgroup>
											<thead>
												<tr>
													<th scope="col" colspan="2" bgcolor="#f1f3f5"><strong>사고종류</strong></th>
													<th scope="col" bgcolor="#f1f3f5"><strong>구비서류</strong></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row" colspan="2">공통</th>
													<td>본인명의통장사본</td>
												</tr>
												<tr>
													<th scope="row" rowspan="2">상해<br>(질병)</th>
													<th scope="row">사망</th>
													<td>사망진단서(또는 사체검안서), 피보험자의 호적등본, 위임장(필요시)</td>
												</tr>
												<tr>
													<th scope="row">치료비</th>
													<td>보험금청구서,입-퇴원확인서,진단명기재되어있는초진차트,현지병원영수증,국내병원영수증,약국영수증,지급결의서(교통사고<br>피해시),등본또는주민증사본(미성년자의경우)</td>
												</tr>
												<tr>
													<th scope="row" rowspan="2">배상<br>책임</th>
													<th scope="row">대인</th>
													<td>사고경위서,제3자의 진단서 및 치료비 영수증</td>
												</tr>
												<tr>
													<th scope="row">대물</th>
													<td>사고경위서,손해증빙서류 및 손상물 수리견적서,여행사-통장,사업자등록증(여행사에서선지급)</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">(해외)여행중 휴대품손해 (분실제외)</th>
													<td>사고증명서(도난증명서, 현지경찰확인서 등)
														<br> 손해명세서(손상물 수리견적서, 파손된 휴대품의 사진 등)
														<br> 피해품의 구입가격, 구입처 등이 적힌 서류
														<br> 여권(입출국도장,사진부분),등본-주민증사본(미성년자경우)<br> 경찰신고안되었을경우-목격자확인서,문답서,목격자여권사본
													</td>
												</tr>
												<tr>
													<th scope="row" colspan="2">(해외)여행중 중대사고 구조송환비용</th>
													<td>사고증명서(사망진단서, 입원확인서 등)<br> 지출된 비용의 명세서 및 영수증
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<table class="table" style="font-size: 18px;">
										<tr>
											<th bgcolor="white" height="80px" style="border: solid 2px #E2E2E2;">
												<p>*주의사항</p>
												<ul>
													<li>상해사고/질병 발생시: 의료기관치료시 병원에서 진단서, 치료영수증 구비/약국이용시 영수증 구비</li>
													<li>휴대폰 도난사고 발생시: 도난사고 발생사실을 인근 경찰서에 신고/ 호텔에서 도난사고 발생시 프론트에 신고하여 ​확인<br>증 수령
													</li>
													<li>현지에서 준비하셔야 할 서류는 귀국 전 미리 준비해오셔야 합니다. (진단서, 영수증 도난확인서 등)</li>
												</ul>
											</th>
										</tr>
									</table>
									<br />
									<h4>DB손해보험 SOS 우리말 지원 서비스</h4>
									<p>해외여행 중에 상해,질병 등으로 어려움을 당할 때 언제든지 DB손해보험 SOS우리말 지원서비스에 연락주시면 24시간 연중무휴 언제라도 한국어로 상담해 드립니다.</p>
									<h5>서비스 대상 및 내용</h5>
			
									<table summary="서비스 대상 및 내용" style="font-size: 18px;">
										<caption class="caption_hide">서비스 대상 및 내용</caption>
										<colgroup>
											<col style="width: 100px;" />
											<col style="width: 140px;" />
											<col style="width: auto;" />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" rowspan="8" bgcolor="#f1f3f5">서비스 대상</th>
												<td rowspan="8" class="bd_right">
													<p>-여행정보 <br> -여권 및 휴대품<br> -분실 시 서비스<br> -긴급 연락 서비스</p>
												</td>
												<th scope="col" class="ta_c" bgcolor="#f1f3f5" style="text-align: center;">서울(신공항영업소)</th>
											</tr>
											<tr>
												<td>-의료상담 주선 <br> -현지의사, 의료기관 안내<br> -현지의사와의 진료예약 알선<br> -현지병원 입원수속 알선</td>
											</tr>
											<tr>
												<th scope="col" class="ta_c" bgcolor="#f1f3f5" style="text-align: center;">보험금 청구방법 안내</th>
											</tr>
											<tr>
												<td>- 보험금 청구에 필요한 서류, 절차 안내</td>
											</tr>
											<tr>
												<th scope="col" class="ta_c" bgcolor="#f1f3f5" style="text-align: center;">휴대품 및 여권 분실시 처리</th>
											</tr>
											<tr>
												<td>-여행 중 여권이나 휴대품을 잃어 버렸을 때 이를 회수하기 위한 절차 또는 방법 안내</td>
											</tr>
											<tr>
												<th scope="col" class="ta_c" bgcolor="#f1f3f5" style="text-align: center;">여행정보</th>
											</tr>
											<tr>
												<td>-예방접종 및 비자에 관한 정보제공<br>-여행지의 기후와 환율에 관한 정보제공-인근대사관 또는 영사관의 주소, 전화번호, 근무시간에 관한 정보제공</td>
											</tr>
										</tbody>
									</table>
									<br>
									<table class="table">
										<tr>
											<th bgcolor="white" height="80px"
												style="border: solid 2px #E2E2E2;">
												<p>*주의사항</p>
												<ul>
													<li>상해사고/질병 발생시: 의료기관치료시 병원에서 진단서, 치료영수증 구비/약국이용시 영수증 구비
													<li>휴대폰 도난사고 발생시: 도난사고 발생사실을 인근 경찰서에 신고/ 호텔에서 도난사고 발생시 프론트에 신고하여 확인증 수령</li>
													<li>현지에서 준비하셔야 할 서류는 귀국 전 미리 준비해오셔야 합니다. (진단서, 영수증 도난확인서 등)</li>
												</ul>
											</th>
										</tr>
									</table>
									<br/>
									<h4>국가별 서비스 이용 전화번호</h4>
									<p class="prg_desc">- Collect Call(수신자 부담전화) : 822-3140-1722, 전세계 이용가능</p>
									<p class="prg_desc">- Toll Free(장거리 무료전화)</p>
									<hr color="#4A4F5A">
									<div class="tbl tbl_datasty_1 type_th2">
										<table summary="국가별 서비스 이용전화번호" style="font-size: 18px;">
											<caption class="caption_hide">국가별 서비스 이용전화번호</caption>
											<colgroup>
												<col style="width: 100px;" />
												<col style="width: auto;" />
												<col style="width: 100px;" />
												<col style="width: auto;" />
											</colgroup>
											<thead>
												<tr>
													<th scope="col" bgcolor="#f1f3f5" style="text-align: center;">국가</th>
													<th scope="col" bgcolor="#f1f3f5" style="text-align: center;">전화번호</th>
													<th scope="col" bgcolor="#f1f3f5" style="text-align: center;">국가</th>
													<th scope="col" bgcolor="#f1f3f5" style="text-align: center;">전화번호</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">네덜란드</th>
													<td>0800-022-8051</td>
													<th scope="row" bgcolor="#f1f3f5">일본</th>
													<td>0066-33-882-137</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">독일</th>
													<td>0800-186-0457</td>
													<th scope="row" bgcolor="#f1f3f5">중국(상해이북)</th>
													<td>10800-820-0044</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">말레이지아</th>
													<td>1-800-80-7995</td>
													<th scope="row" bgcolor="#f1f3f5">중국(상해이남)</th>
													<td>10800-282-0044</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">미국(본토)</th>
													<td>1-888-779-7055</td>
													<th scope="row" bgcolor="#f1f3f5">캐나다</th>
													<td>1-800-469-5254</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">벨기에</th>
													<td>0800-7-2885</td>
													<th scope="row" bgcolor="#f1f3f5">태국</th>
													<td>001-800-821-07702</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">스위스</th>
													<td>0800-55-8862</td>
													<th scope="row" bgcolor="#f1f3f5">프랑스</th>
													<td>0800-90-3433</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">싱가포르</th>
													<td>800-8211-150</td>
													<th scope="row" bgcolor="#f1f3f5">필리핀</th>
													<td>1-800-1821-0230</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">영국</th>
													<td>0800-899882</td>
													<th scope="row" bgcolor="#f1f3f5">하와이</th>
													<td>1-800-322-0180</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">이탈리아</th>
													<td>8008-71248</td>
													<th scope="row" bgcolor="#f1f3f5">호주</th>
													<td>1-800-141-560</td>
												</tr>
												<tr>
													<th scope="row" bgcolor="#f1f3f5">인도네시아</th>
													<td>001-803-821-07707</td>
													<th scope="row" bgcolor="#f1f3f5">홍콩</th>
													<td>800-93-3231</td>
												</tr>
											</tbody>
										</table>
									</div>
									<br>
									<h4>MG손해보험 24시간 우리말 지원서비스(82-2-360-2512)</h4>
									<table summary="MG손해보험 24시간 우리말 지원서비스" style="font-size: 18px;">
										<hr color="#4A4F5A">
										<caption class="caption_hide">MG손해보험 24시간 우리말 지원서비스</caption>
										<colgroup>
											<col style="width: 100px;" />
											<col style="width: 100px;" />
											<col style="width: auto;" />
										</colgroup>
										<tbody>
											<tr>
												<th scope="row" rowspan="7">의료 지원 서비스</th>
												<th scope="row" rowspan="7">대인</th>
												<td>24시간 전문의료진 의료 조언</td>
											</tr>
											<tr>
												<td>현지 의료 기관 안내</td>
											</tr>
											<tr>
												<td>현지 병원 입원 알선</td>
											</tr>
											<tr>
												<td>현지 병원 입원 예약 지원</td>
											</tr>
											<tr>
												<td>현지 의료진과의 의사소통지원</td>
											</tr>
											<tr>
												<td>긴급 의료 후송/본국 송환</td>
											</tr>
											<tr>
												<td>유해 송환 서비스</td>
											</tr>
											<tr>
												<th scope="row" rowspan="8">해외 여행 편의서비스</th>
												<th scope="row" rowspan="8">해외 여행/출장 전 또는 도중에</th>
												<td>여행정보 안내</td>
											</tr>
											<tr>
												<td>비자/예방 접종 정보</td>
											</tr>
											<tr>
												<td>유실물/여권 분실 지원</td>
											</tr>
											<tr>
												<td>통역업체 알선 및 안내</td>
											</tr>
											<tr>
												<td>현지 환율/기후 안내</td>
											</tr>
											<tr>
												<td>대사관 안내</td>
											</tr>
											<tr>
												<td>긴급 메시지 전달</td>
											</tr>
											<tr>
												<td>긴급 통역 지원 서비스</td>
											</tr>
											<tr>
												<th scope="row" rowspan="3">클레임 지원서비스</th>
												<th scope="row" rowspan="3">해외 여행/출장 전 또는 도중에</th>
												<td>청구 관련 서류 안내</td>
											</tr>
											<tr>
												<td>청구 관련 절차 안내</td>
											</tr>
											<tr>
												<td>클레임 부서 연락처 안내</td>
											</tr>
										</tbody>
									</table>
								</div>
			
								<div class="tab-pane fade" id="zxc">
									<ul>
										<li>
											<h5>DB손해보험</h5>
											<h4>
												<strong>해외여행보험 약관</strong>
											</h4>
											<button type="button" style="width: 330px; heigth: 110px; background: blue; color: white; font-size: 20px;" onclick="window.open('/Content/TravelInfo/tourinfo/DBIns_oversea_trip_agreement.pdf');">다운로드</button>
										</li>
										<li>
											<hr>
											<h5>MG손해보험</h5>
											<h4>
												<strong>해외여행보험 약관</strong>
											</h4>
											<button type="button" style="width: 330px; heigth: 110px; background: blue; color: white; font-size: 20px;" onclick="window.open('/Content/TravelInfo/tourinfo/MGIns_oversea_trip_agreement.pdf');">다운로드</button>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>