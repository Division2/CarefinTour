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
		<jsp:include page="../layout/header.jsp" />
	
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/backgrounds/goo.png"/>);">
			<div class="container">
				<h2>비자 정보</h2>
				<ul class="thm-breadcrumb list-unstyled">
					<li><a href="weatherinfo">날씨</a></li>
					<li><a href="exchangeinfo">환율</a></li>
					<li><a href="timedifferenceinfo">시차</a></li>
					<li><a href="visainfo">비자</a></li>
					<li><a href="supplies">여행준비</a></li>
				</ul>
			</div>
		</section>
	
		<section class="tour-one">
			<div class="container">
				<h5>여행 출발하기 전 각종 정보를 꼭 확인하시고</h5>
				<h5>더욱 편안한 여행되시길 바랍니다.</h5>
				<hr>
				<div class="visaInfoWrap">
					<div class="prg_box">
						<h3>비자</h3>
						<p class="prg_desc">
							해당 국가에 입국할 수 있다는 것을 허가해주는 입국 허가증입니다.<br />
							비자는 국가와 방문목적에 따라 체류기간이나 구비서류가 서로 상이합니다.<br />
							최근 우리나라는 많은 나라와 비자 면제 협정을 맺고 있어 대부분 비자가 필요치 않으나,허용하는 기간을 초과하거나 협정을 맺지 않은 국가를 방문할 때에는 반드시 체류목적에 맞는 비자를 받아야 합니다.<br />
							비자에는 입국의 종류와 목적, 체류기간 등이 명시되어 있으며, 여권의 사증에 스탬프를 찍거나 스티커를 발급합니다.
						</p>
					</div>
	
					<div class="prg_box">
						<h3>비자의 종류</h3>
						<p class="prg_desc">
							여권발급 신청시 유효기간이 남아있는 여권 소지자는 여권을 반납하여야 함<br />
							(단, 유효기간연장 재발급 신청시에는 유효기간이 만료하였더라도 제시하여야 함)
						</p>
	
						<ul class="visaKind">
							<li>
								<p class="title">방문목적</p>
								<p class="desc">관광비자, 학생비자, 방문비자, 이민비자, 취업비자, ARRIVAL 비자, 문화공연 비자, 주재원비자, 경유비자</p>
							</li>
							<li>
								<p class="title">체류기간</p>
								<p class="desc">영주비자/임시비자</p>
							</li>
							<li>
								<p class="title">사용횟수별</p>
								<p class="desc">단수비자/복수비자</p>
							</li>
						</ul>
					</div>
					<div class="prg_box">
						<h3>무비자 입국 가능 국가</h3>
						<div class="tbl tbl_datasty_1">
							<table summary="무비자 입국 가능 국가내용">
								<caption class="hide">무비자 입국 가능 국가내용표</caption>
								<colgroup>
									<col style="width: 150px;" />
									<col style="width: auto;" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col">지역</th>
										<th scope="col">국가</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">아시아</th>
										<td>일 본(90일), 홍 콩(90일), 마카오(90일), 베트남(15일), 필리핀(21일), 대만(30일), 팔라우(30일), 브루나이(30일)</td>
									</tr>
									<tr>
										<th scope="row">미주</th>
										<td>미국(90일, 비자면제프로그램의 적용을 받은자에 한함), 가이아나(30일), 온두라스(30일),
											우루과이(30일), 파라과이(30일), 과테말라(90일), 베네수엘라(90일), 아르헨티나(90일),
											에콰도르(90일), 파나마(90일)
										</td>
									</tr>
									<tr>
										<th scope="row">유럽</th>
										<td>보스니아(30일), 사이프러스(90일), 산마리노(90일), 세르비아(90일),
											모나코(90일), 몬테네그로(90일), 슬로베니아(90일), 크로아티아(90일), 안도라(90일),
											헤르체고비아(90일), 우크라이나(90일), 그루지아(90일)
										</td>
									</tr>
									<tr>
										<th scope="row">오세아니아</th>
										<td>괌(15일), 사모아(60일), 솔로몬군도(1년내 90일), 바누아투(1년내 120일), 나우루(14일)</td>
									</tr>
									<tr>
										<th scope="row">아프리카</th>
										<td>마다가스가르(15일이내), 모리셔스(16일), 통가(30일), 남아프리카공화국(30일), 세이쉘(30일), 스와질란드(60일)</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
	
					<div class="prg_box">
						<h3>비자 서류 준비</h3>
						<ul class="visaPrepare">
							<li>
								<div class="country">
									<img src="resources/image/usa.png" />
									<p>미국</p>
								</div>
								<div class="country_desc">
									<p>미국은 최대 90일간 비자없이 관광 및 상용 목적에 한해 미국을 방문할 수 있도록 허용하는
										제도(VWP)를 운영하고 있습니다. 허나, 아래의 네가지 경우에는 VWP를 적용받을 수 없습니다. ESTA 신청
										후 '여행 미승인'을 받을 경우, 현행과 같이 비자를 받아야 하기 때문에 ESTA 신청은 최소한 1달 여유를
										두고 하셔야 합니다.
									</p>
									<ul>
										<li>1. 90일 이상 체류하는 경우</li>
										<li>2. 유학, 취업, 취재, 이민 등 여타의 목적으로 방문하는 경우</li>
										<li>3. 미국비자 발급이 거절되었거나, 입국 거부 또는 추방된 적이 있는 경우</li>
										<li>4. ESTA를 통해 비자 발급이 필요하다는 통보를 받은 경우</li>
									</ul>
									<a href="https://esta.cbp.dhs.gov/​" target="_blank"> ESTA 바로가기 </a>
									<p class="prg_desc_etc">※ 홈페이지 접속 후 우측 상단 Change Language 클릭 후 한국어를 선택해주세요.​</p>
									<p class="prg_desc_etc">※ 이전에 받은 미국비자의 기간이 남아있으신 분은 기존 비자를 이용하여 미국 입국이 가능합니다. 또한, 하와이 역시, 미국 본토와 동일하게 적용됩니다.</p>
								</div>
							</li>
							<li>
								<div class="country">
									<img src="resources/image/china.png" />
									<p>중국</p>
								</div>
								<div class="country_desc">
									<p>중국영사부에서는 2007년 9월 1일부터 중국비자의 개인접수를 받지 않습니다. 지정여행사를 통해서만
										중국비자 신청이 가능합니다. 발급 기간이 보통 일주일 이내로 소요되며, 단수비자, 복수비자, 단체비자 등이 있습니다.
									</p>
								</div>
							</li>
							<li>
								<div class="country">
									<img src="resources/image/china.png" />
									<p>하이난<span>(중국 해남도)</span>도착비자</p>
								</div>
								<div class="country_desc">
									<p>해남도는 관광 특구지역으로 단체 입국자 5인 이상일 경우 무비자 형식으로 입국이 가능합니다.
										5인 미만 입국시에는 위에서 언급한 방법으로 한국에서 별도의 중국비자를 받으셔야 합니다
									</p>
								</div>
							</li>
							<li>
								<div class="country">
									<img src="resources/image/cuba.png" />
									<p>쿠바</p>
								</div>
								<div class="country_desc">
									<p>쿠바는 쿠바대사관이 한국에 없기 때문에 경유지나 출발지에서 미리 관광비자를 구매하여 입국해야 합니다.
										우리나라에서도 여행사를 통해 비자 구입 대행이 가능하며, 관광비자의 경우 30일간 유효합니다. 한가지 주의하실
										점은, 쿠바 입국시 받은 카드를 잃어버리면 안된다는 것입니다. 쿠바 입국시 출입국관리소에 관광비자 카드를
										제출하게 되는데, 이때 출입국 심사관이 비자카드를 반 찢어서 도장을 찍어 돌려주게 됩니다. 이 카드는 쿠바를
										출국할 때도 체크하기 때문에 버리지 말고 소지하고 있어야 합니다.
									</p>
								</div>
							</li>
							<li>
								<div class="country">
									<img src="resources/image/bolivia.png" />
									<p>볼리비아</p>
								</div>
								<div class="country_desc">
									<p class="prg_desc">볼리비아를 입국하실 때는 필수적으로 황열병 예방접종 및 비자를 받으셔야 합니다.</p>
									<h4>황열병 예방접종</h4>
									<p class="prg_desc">황열병 예방접종은 황열 감염 위험지역 도착 최소 10일 전에 접종하여야
										하며, 항체는 접종 10일 후에 형성되여 약 99% 이상의 예방효과가 있습니다. 면역력은 평생 유지 됩니다.
										다만, 복용하고 계신 약, 앓고 있으신 질병 등에 따라 황열병 접종 불가한 경우가 생길 수도 있기 때문에 접종
										전 의사와 상담하여 해당사항을 확인해야 합니다. 황열병 예방접종은 백신이 있는 병원에 예약을 하고 접종을 해야
										합니다. 질병관리본부 국립검역소 사이트를 참고하셔서, 가장 가까운 병원에 전화 및 예약하면 됩니다.
									</p>
									<a href="http://nqs.cdc.go.kr/nqs/quarantine/national/ino/ino_in.jsp" class="prg_desc_etc" target="_blank"> 예방접종 바로가기
										<img src="/Images/2013/Common/icon_go_1.gif" alt="" />
									</a>
									<h4>볼리비아 비자</h4>
									<p class="prg_desc">볼리비아 비자를 받는 방법은 3가지가 있습니다.</p>
									<ul>
										<li>
											<strong>1. 볼리비아 입국 첫 도시에서 도착비자 발급</strong><br />
											볼리비아 공항에 도착해서 받는 도착비자가 있으며 발급 수수료는 USD$92~95/1인 정도 발생합니다.
										</li>
										<li><strong>2. 여행사 대행 진행 (참좋은여행사의 경우 1인 수수료 5만원)</strong></li>
										<li><strong>3. 서울 시청역에 위치한 볼리비아 대사관에서 직접 비자 발급 (수수료 무료 )</strong></li>
									</ul>
									<p class="prg_desc_etc">
										* 50세 이하의 모든 신청자는
										<a class="fc_blue" href="https://www.embolcorea.com/visa-turismo" target="_blank">
											<strong>https://www.embolcorea.com/visa-turismo</strong>
										</a>
										접속하시어 홈페이지 상단 우측온라인 비자신청 바로가기 버튼을 이용하여 온라인 포털에서 미리 신청을 하시고 마지막
										단계에서 생성되는 신청서를 인쇄해서 오셔야 합니다. 온라인 신청서와 모든 서류를 준비하신 후 수,목,금 오전
										09:30 - 12:00 까지 별도의 예약없이 대사관을 방문하시면 서류에 이상이 없는 경우 당일 발급됩니다.
									</p>
									<p class="prg_desc_etc">* 50세 이상이신 분들 중 온라인 신청이 어려우신 분들은
										이메일을 통하여 월/화 오전시간에 직접신청 예약이 가능하시며 이 경우 신청서를 제외한 기타 구비서류만 준비해서 오시면 됩니다.
									</p>
									<p class="prg_desc_etc">* 미성년자가 부모님 중 한분과 여행하거나 부모님 동행없이
										타인과 여행하는 경우 부모님 여행동의 허가서가 필요합니다. 해당 서류는 한국어로 작성 &gt; 스페인어 번역
										&gt; 번역공증 &gt; 외교부영사인증 &gt; 볼리비아 영사인증 절차가 필요합니다. 해당 업무는
										jfelisa0911@gmail.com으로 문의바랍니다. (문의 시 전화번호를 남겨주셔야 합니다.)
									</p>
									<p class="prg_desc_etc">* 관광비자는 무료 비자이며 받으신 후 90일내 입국하시고 입국 이후부터30일간 유효합니다.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
	
		<jsp:include page="../layout/footer.jsp" />
	</div>
</body>
</html>