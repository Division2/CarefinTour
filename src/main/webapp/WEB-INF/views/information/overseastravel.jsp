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
		
		<section class="page-header" style="background-image: url(<c:url value="/resources/images/banner_main/${BannerRespectivelyView.getS_file_name()}"/>);">
			<div class="container">
				<h2>여행 약관(국내 &#38; 해외)</h2>
			</div>
		</section>
		
		<!-- 여행 약관 -->
		<section class="tour-one">
			<div class="container">
				<div class="row">
					<!-- 여행약관 사이드바 -->
					<jsp:include page="sidetripservice.jsp"/>   
					<div class="col-md-8">
						<h1>해외 여행</h1>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="all">
								<div id="accordion">
									<div class="card"></div>
									<textarea class="form-control" style="resize: none;" cols="30" rows="20">
제1조(목적)
이 약관은 (주)케어핀투어(이하 “여행사”라 합니다)와 여행자가 체결한 국외여행계약의 세부 이행 및 준수사항을 정함을 목적으로 합니다.
제2조(용어의 정의)
여행의 종류 및 정의, 해외여행수속대행업의 정의는 다음과 같습니다.
1. 기획여행 : 여행사가 미리 여행목적지 및 관광일정, 여행자에게 제공될 운송 및 숙식서비스 내용(이하 ‘여행서비스’라 함), 여행요금을 정하여 광고 또는 기타 방법으로 여행자를 모집하여 실시하는 여행.
2. 희망여행 : 여행자(개인 또는 단체)가 희망하는 여행조건에 따라 여행사가 운송․숙식․관광 등 여행에 관한 전반적인 계획을 수립하여 실시하는 여행.
3. 해외여행 수속대행(이하 ‘수속대행계약’이라 함) : 여행사가 여행자로부터 소정의 수속대행요금을 받기로 약정하고, 여행자의 위탁에 따라 다음에 열거하는 업무(이하 ‘수속대행업무’라 함)를 대행하는 것.
1) 사증, 재입국 허가 및 각종 증명서 취득에 관한 수속
2) 출입국 수속서류 작성 및 기타 관련업무
제3조(여행사와 여행자 의무)
여행의 종류 및 정의, 해외여행수속대행업의 정의는 다음과 같다. 
① 여행사는 여행자에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․운송․숙박 등 여행계획의 수립 및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.
② 여행자는 안전하고 즐거운 여행을 위하여 여행자간 화합도모 및 여행사의 여행질서 유지에 적극 협조하여야 합니다.
제4조(계약의 구성)
① 여행계약은 여행계약서(붙임)와 여행약관․여행일정표(또는 여행 설명서)를 계약내용으로 합니다.
② 여행계약서에는 여행사의 상호, 소재지 및 관광진흥법 제9조에 따른 보증보험 등의 가입(또는 영업보증금의 예치 현황) 내용이 포함되어야 합니다.
③ 여행일정표(또는 여행설명서)에는 여행일자별 여행지와 관광내용․교통수단․쇼핑횟수․숙박장소․식사 등 여행실시일정 및 여행사 제공 서비스 내용과 여행자 유의사항이 포함되어야 합니다.
제5조(계약체결의 거절)
여행사는 여행자에게 다음 각 호의 1에 해당하는 사유가 있을 경우에는 여행자와의 계약체결을 거절할 수 있습니다.
1. 질병, 신체이상 등의 사유로 개별관리가 필요하거나, 단체여행(다른 여행자의 여행에 지장을 초래하는 등)의 원활한 실시에 지장이 있다고 인정되는 경우
2. 계약서에 명시한 최대행사인원이 초과된 경우
제6조(특약)
여행사와 여행자는 관련법규에 위반되지 않는 범위 내에서 서면(전자문서를 포함한다. 이하 같다)으로 특약을 맺을 수 있습니다.
이 경우 여행사는 특약의 내용이 표준약관과 다르고 표준약관보다 우선 적용됨을 여행자에게 설명하고 별도의 확인을 받아야 합니다.
제7조(계약서 등 교부 및 안전정보 제공)
여행사는 여행자와 여행계약을 체결한 경우 계약서와 약관 및 여행일정표(또는 여행설명서)를 각 1부씩 여행자에게 교부하고, 여행목적지에 관한 안전정보를 제공하여야 합니다.
또한 여행 출발 전 해당 여행지에 대한 안전정보가 변경된 경우에도 변경된 안전정보를 제공하여야 합니다.
제8조(계약서 및 약관 등 교부 간주)
다음 각 호의 경우 여행계약서와 여행약관 및 여행일정표(또는 여행설명서)가 교부된 것으로 간주합니다.
1. 여행자가 인터넷 등 전자정보망으로 제공된 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 동의하고 여행계약의 체결을 신청한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우
2. 여행사가 팩시밀리 등 기계적 장치를 이용하여 제공한 여행계약서, 약관 및 여행일정표(또는 여행설명서)의 내용에 대하여 여행자가 동의하고 여행계약의 체결을 신청하는 서면을 송부한 데 대해 여행사가 전자정보망 내지 기계적 장치 등을 이용하여 여행자에게 승낙의 의사를 통지한 경우
제9조(여행사의 책임)
여행사는 여행 출발시부터 도착시까지 여행사 본인 또는 그 고용인, 현지여행사 또는 그 고용인 등(이하 ‘사용인’이라 함)이 제3조제1항에서 규정한 여행사 임무와 관련하여 여행자에게 고의 또는 과실로 손해를 가한 경우 책임을 집니다.
제10조(여행요금)
① 여행계약서의 여행요금에는 다음 각 호가 포함됩니다. 다만, 희망여행은 당사자간 합의에 따릅니다.
1. 항공기, 선박, 철도 등 이용운송기관의 운임(보통운임기준)
2. 공항, 역, 부두와 호텔사이 등 송영버스요금
3. 숙박요금 및 식사요금
4. 안내자경비
5. 여행 중 필요한 각종세금
6. 국내외 공항․항만세
7. 관광진흥개발기금
8. 일정표내 관광지 입장료
9. 기타 개별계약에 따른 비용
② 제1항에도 불구하고 반드시 현지에서 지불해야 하는 경비가 있는 경우 그 내역과 금액을 여행계약서에 별도로 구분하여 표시하고, 여행사는 그 사유를 안내하여야 합니다.
③ 여행자는 계약체결시 계약금(여행요금 중 10%이하 금액)을 여행사에게 지급하여야 하며, 계약금은 여행요금 또는 손해배상액의 전부 또는 일부로 취급합니다.
④ 여행자는 제1항의 여행요금 중 계약금을 제외한 잔금을 여행출발 7일전까지 여행사에게 지급하여야 합니다.
⑤ 여행자는 제1항의 여행요금을 당사자가 약정한 바에 따라 카드, 계좌이체 또는 무통장입금 등의 방법으로 지급하여야 합니다.
⑥ 희망여행요금에 여행자 보험료가 포함되는 경우 여행사는 보험회사명, 보상내용 등을 여행자에게 설명하여야 합니다.
제11조(여행요금의 변경)
① 국외여행을 실시함에 있어서 이용운송․숙박기관에 지급하여야 할 요금이 계약체결시보다 5%이상 증감하거나 여행요금에 적용된 외화환율이 계약체결시보다 2% 이상 증감한 경우 여행사 또는 여행자는 그 증감된 금액 범위 내에서 여행요금의 증감을 상대방에게 청구할 수 있습니다.
② 여행사는 제1항의 규정에 따라 여행요금을 증액하였을 때에는 여행 출발일 15일전에 여행자에게 통지하여야 합니다.
제12조(여행조건의 변경요건 및 요금 등의 정산)
① 계약서 등에 명시된 여행조건은 다음 각 호의 1의 경우에 한하여 변경될 수 있습니다.
1. 여행자의 안전과 보호를 위하여 여행자의 요청 또는 현지사정에 의하여 부득이하다고 쌍방이 합의한 경우
2. 천재지변, 전란, 정부의 명령, 운송‧숙박기관 등의 파업‧휴업 등으로 여행의 목적을 달성할 수 없는 경우
② 여행사가 계약서 등에 명시된 여행일정을 변경하는 경우에는 해당 날짜의 일정이 시작되기 전에 여행자의 서면 동의를 받아야 합니다. 이때 서면동의서에는 변경일시, 변경내용, 변경으로 발생하는 비용이 포함되어야 합니다.
③ 천재지변, 사고, 납치 등 긴급한 사유가 발생하여 여행자로부터 여행일정 변경 동의를 받기 어렵다고 인정되는 경우에는 제2항에 따른 일정변경 동의서를 받지 아니할 수 있습니다. 다만, 여행사는 사후에 서면으로 그 변경 사유 및 비용 등을 설명하여야 합니다.
④ 제1항의 여행조건 변경 및 제11조의 여행요금 변경으로 인하여 제10조 제1항의 여행요금에 증감이 생기는 경우에는 여행출발 전 변경 분은 여행출발 이전에, 여행 중 변경 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.
⑤ 제1항의 규정에 의하지 아니하고 여행조건이 변경되거나 제16조 내지 제18조의 규정에 의한 계약의 해제․해지로 인하여 손해배상액이 발생한 경우에는 여행출발 전 발생 분은 여행 출발 이전에, 여행 중 발생 분은 여행종료 후 10일 이내에 각각 정산(환급)하여야 합니다.
⑥ 여행자는 여행출발 후 자기의 사정으로 숙박, 식사, 관광 등 여행요금에 포함된 서비스를 제공받지 못한 경우 여행사에게 그에 상응하는 요금의 환급을 청구할 수 없습니다. 다만, 여행이 중도에 종료된 경우에는 제18조에 준하여 처리합니다.
제13조(여행자 지위의 양도)
① 여행자가 개인사정 등으로 여행자의 지위를 양도하기 위해서는 여행사의 승낙을 받아야 합니다. 이때 여행사는 여행자 또는 여행자의 지위를 양도받으려는 자가 양도로 발생하는 비용을 지급할 것을 조건으로 양도를 승낙할 수 있습니다.
② 전항의 양도로 발생하는 비용이 있을 경우 여행사는 기한을 정하여 그 비용의 지급을 청구하여야 합니다.
③ 여행사는 계약조건 또는 양도하기 어려운 불가피한 사정 등을 이유로 제1항의 양도를 승낙하지 않을 수 있습니다.
④ 제1항의 양도는 여행사가 승낙한 때 효력이 발생합니다. 다만, 여행사가 양도로 인해 발생한 비용의 지급을 조건으로 승낙한 경우에는 정해진 기한 내에 비용이 지급되는 즉시 효력이 발생합니다.
⑤ 여행자의 지위가 양도되면, 여행계약과 관련한 여행자의 모든 권리 및 의무도 그 지위를 양도 받는 자에게 승계됩니다.
제14조(여행사의 하자담보 책임)
① 여행자는 여행에 하자가 있는 경우에 여행사에게 하자의 시정 또는 대금의 감액을 청구할 수 있습니다. 다만, 그 시정에 지나치게 많은 비용이 들거나 그 밖에 시정을 합리적으로 기대할 수 없는 경우에는 시정을 청구할 수 없습니다.
② 여행자는 시정 청구, 감액 청구를 갈음하여 손해배상을 청구하거나 시정 청구, 감액 청구와 함께 손해배상을 청구 할 수 있습니다.
③ 제1항 및 제2항의 권리는 여행기간 중에도 행사할 수 있으며, 여행종료일부터 6개월 내에 행사하여야 합니다.
제15조(손해배상)
① 여행사는 현지여행사 등의 고의 또는 과실로 여행자에게 손해를 가한 경우 여행사는 여행자에게 손해를 배상하여야 합니다.
② 여행사의 귀책사유로 여행자의 국외여행에 필요한 사증, 재입국 허가 또는 각종 증명서 등을 취득하지 못하여 여행자의 여행일정에 차질이 생긴 경우 여행사는 여행자로부터 절차대행을 위하여 받은 금액 전부 및 그 금액의 100%상당액을 여행자에게 배상하여야 합니다.
③ 여행사는 항공기, 기차, 선박 등 교통기관의 연발착 또는 교통체증 등으로 인하여 여행자가 입은 손해를 배상하여야 합니다. 다만, 여행사가 고의 또는 과실이 없음을 입증한 때에는 그러하지 아니합니다.
④ 여행사는 자기나 그 사용인이 여행자의 수하물 수령, 인도, 보관 등에 관하여 주의를 해태(懈怠)하지 아니하였음을 증명하지 아니하면 여행자의 수하물 멸실, 훼손 또는 연착으로 인한 손해를 배상할 책임을 면하지 못합니다.
제16조(여행출발 전 계약해제)
① 여행사 또는 여행자는 여행 출발 전 이 여행계약을 해제할 수 있습니다. 이 경우 발생하는 손해액은 ‘소비자분쟁해결기준’(공정거래위원회 고시)에 따라 배상합니다.
1. 여행자의 여행계약 해제 요청이 있는 경우(여행자의 취소 요청 시)
- 여행개시(출발일) ~30일전까지 취소 통보 시 - 계약금 환급
- 여행개시(출발일) 29~20일전까지 취소 통보 시 - 여행요금의 10% 배상
- 여행개시(출발일) 19~10일전까지 취소 통보 시 - 여행요금의 15% 배상
- 여행개시(출발일) 9~8일전까지 취소 통보 시 - 여행요금의 20% 배상
- 여행개시(출발일) 7~1일전까지 취소 통보 시 - 여행요금의 30% 배상
- 여행개시(출발일) 당일 취소 통보 시 - 여행요금의 50% 배상
2. 여행사의 귀책사유로 여행사가 취소하는 경우(손해배상)
- 여행개시 ~30일전까지 통보 시 - 계약금 환급
- 여행개시(출발일) 29~20일전까지 통보 시 - 여행요금의 10% 배상
- 여행개시(출발일) 19~10일전까지 통보 시 - 여행요금의 15% 배상
- 여행개시(출발일) 9~8일전까지 통보 시 - 여행요금의 20% 배상
- 여행개시(출발일) 7~1일전까지 통보 시 - 여행요금의 30% 배상
- 여행(출발일) 당일 취소 통보 시 - 여행요금의 50% 배상
* 천재지변, 전란, 정부의 명령, 운송•숙박기관 등의 파업• 휴업 등으로 여행의 목적을 달성할 수 없는 사유로 취 소하는 경우 – 계약금 환급
② 여행사 또는 여행자는 여행출발 전에 다음 각 호의 1에 해당하는 사유가 있는 경우 상대방에게 제1항의 손해배상액을 지급하지 아니하고 이 여행계약을 해제할 수 있습니다.
1. 여행사가 해제할 수 있는 경우
가. 제12조 제1항 제1호 및 제2호 사유의 경우
나. 여행자가 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때
다. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우
라. 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우
2. 여행자가 해제할 수 있는 경우
가. 제12조 제1항 제1호 및 제2호의 사유가 있는 경우
나. 여행사가 제21조에 따른 공제 또는 보증보험에 가입하지 아니 하였거나 영업보증금을 예치하지 않은 경우
다. 여행자의 3촌 이내 친족이 사망한 경우
*당사제출용 증빙서류
- 친족을 확인 할 수 있는 서류(가족관계증명서 등…)
- 진단서 또는 사체검안서(사망진단서)
- 그 밖의 필요서류
라. 질병 등 여행자의 신체에 이상이 발생하여 여행에의 참가가 불가능한 경우
*당사제출용 증빙서류
- 진단서
- 그 밖의 필요 서류
마. 배우자 또는 직계존비속이 신체이상으로 3일 이상 병원(의원)에 입원하여 여행 출발 전까지 퇴원이 곤란한 경우 그 배우자 또는 보호자 1인
*당사제출용 증빙서류
- 친족을 확인할 수 있는 서류(가족관계증명서 등…)
- 진단서
- 그 밖의 필요서류
바. 여행사의 귀책사유로 계약서 또는 여행일정표(여행설명서)에 기재된 여행일정대로의 여행실시가 불가능해진 경우
사. 제10조제1항의 규정에 의한 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우
제17조(최저행사인원 미 충족시 계약해제)
① 여행사는 최저행사인원이 충족되지 아니하여 여행계약을 해제하는 경우 여행출발 7일전까지 여행자에게 통지하여야 합니다.
② 여행사가 여행참가자 수 미달로 전항의 기일내 통지를 하지 아니하고 계약을 해제하는 경우 이미 지급받은 계약금 환급 외에 다음 각 목의 1의 금액을 여행자에게 배상하여야 합니다.
가. 여행출발 1일전까지 통지시 : 여행요금의 30%
나. 여행출발 당일 통지시 : 여행요금의 50%
제18조(여행출발 후 계약해지)
① 여행사 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우 각 당사자는 여행계약을 해지할 수 있습니다. 다만, 그 사유가 당사자 한쪽의 과실로 인하여 생긴 경우에는 상대방에게 손해를 배상하여야 합니다.
② 제1항에 따라 여행계약이 해지된 경우 귀환운송 의무가 있는 여행사는 여행자를 귀환운송 할 의무가 있습니다.
③ 제1항의 계약해지로 인하여 발생하는 추가 비용은 그 해지사유가 어느 당사자의 사정에 속하는 경우에는 그 당사자가 부담하고, 양 당사자 누구의 사정에도 속하지 아니하는 경우에는 각 당사자가 추가 비용의 50%씩을 부담합니다.
④ 여행자는 여행에 중대한 하자가 있는 경우에 그 시정이 이루어지지 아니하거나 계약의 내용에 따른 이행을 기대할 수 없는 경우에는 계약을 해지할 수 있습니다.
⑤ 제4항에 따라 계약이 해지된 경우 여행사는 대금청구권을 상실합니다. 다만, 여행자가 실행된 여행으로 이익을 얻은 경우에는 그 이익을 여행사에게 상환하여야 합니다.
⑥ 제4항에 따라 계약이 해지된 경우 여행사는 계약의 해지로 인하여 필요하게 된 조치를 할 의무를 지며, 계약상 귀환운송 의무가 있으면 여행자를 귀환 운송하여야 합니다. 이 경우 귀환운송비용은 원칙적으로 여행사가 부담하여야 하나, 상당한 이유가 있는 때에는 여행사는 여행자에게 그 비용의 일부를 청구할 수 있습니다.
제19조(여행의 시작과 종료)
여행의 시작은 탑승수속(선박인 경우 승선수속)을 마친 시점으로 하며, 여행의 종료는 여행자가 입국장 보세구역을 벗어나는 시점으로 합니다. 다만, 계약내용상 국내이동이 있을 경우에는 최초 출발지에서 이용하는 운송수단의 출발시각과 도착시각으로 합니다.
제20조(설명의무)
여행사는 계약서에 정하여져 있는 중요한 내용 및 그 변경사항을 여행자가 이해할 수 있도록 설명하여야 합니다.
제21조(보험가입 등)
여행사는 이 여행과 관련하여 여행자에게 손해가 발생한 경우 여행자에게 보험금을 지급하기 위한 보험 또는 공제에 가입하거나 영업보증금을 예치하여야 합니다.
제22조(기타사항)
① 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 여행사 또는 여행자가 합의하여 결정하되, 합의가 이루어지지 아니한 경우에는 관계법령 및 일반관례에 따릅니다.
② 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 이 표준약관의 내용과 달리 정할 수 있습니다.
									</textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 여행 약관 -->
		
		<jsp:include page="../layout/footer.jsp"/>
	</div>
	<!-- 메인 영역 -->
</body>
</html>