package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CareController {
	
	//메인 홈페이지
	@RequestMapping("main")
	public String main() {
		return "index";
	}
	
	//아이디 찾기
	@RequestMapping("findID")
	public String findID() {
		return "customer/findId";
	}

	//비밀번호 찾기
	@RequestMapping("findPassword")
	public String findPassword() {
		return "customer/findPassword";
	}
	
	/*
	 * 해외 여행(상품, 테마)
	 * 미주/중남미/하와이/
	 * 대만/동남아/서남아
	 * 중국/홍콩/러시아
	 * 유럽/아프리카
	 * 일본
	 * 
	 * 검색결과화면
	 * 
	 * 낚시/골프/허니문
	 */
	@RequestMapping("countrytravel1")
	public String country1() {
		return "product/countryoftravel1";
	}
	@RequestMapping("countrytravel2")
	public String country2() {
		return "product/countryoftravel2";
	}
	@RequestMapping("countrytravel3")
	public String country3() {
		return "product/countryoftravel3";
	}
	@RequestMapping("countrytravel4")
	public String country4() {
		return "product/countryoftravel4";
	}
	@RequestMapping("countrytravel5")
	public String country5() {
		return "product/countryoftravel5";
	}
	@RequestMapping("travelSearch")
	public String countrysearch() {
		return "product/travelSearch";
	}
	@RequestMapping("detailInfo")
	public String detailInfo() {
		return "product/detailedinformation";
	}
	@RequestMapping("detailResvation")
	public String detailres() {
		return "product/detailresvation";
	}
	@RequestMapping("detailResvation2")
	public String detailres2() {
		return "product/detailresvation2";
	}
	@RequestMapping("fishing")
	public String fishing() {
		return "theme/fishing";
	}
	@RequestMapping("golf")
	public String golf() {
		return "theme/golf";
	}
	@RequestMapping("honeymoon")
	public String honeymoon() {
		return "theme/honeymoon";
	}
	
	//호텔 예약
	@RequestMapping("hotelreservation")
	public String hotelreservation() {
		return "hotel/hotelreservation";
	}
	@RequestMapping("hoteldetail")
	public String hoteldetail() {
		return "hotel/hoteldetail";
	}
	
	//여행 후기(탑앵글러, 여행포토)
	@RequestMapping("topangler")
	public String topangler() {
		return "ranking/topangler";
	}
	@RequestMapping("topanglerWrite")
	public String topanglerWrite() {
		return "ranking/topanglerWrite";
	}
	@RequestMapping("travelphoto")
	public String travelphoto() {
		return "ranking/travelphoto";
	}
	@RequestMapping("travelphotoWrite")
	public String travelphotoWrite() {
		return "ranking/travelphotoWrite";
	}
	@RequestMapping("travelphotoView")
	public String travelphotoView() {
		return "ranking/travelphotoView";
	}
	@RequestMapping("travelphotoModify")
	public String travelphotoModify() {
		return "ranking/travelphotoModify";
	}
	@RequestMapping("myaddphoto")
	public String myaddphoto() {
		return "ranking/myaddphoto";
	}

	//여행정보
	@RequestMapping("exchangeinfo")
	public String exchangeinfo() {
		return "travelinfo/exchangeinfo";
	}
	@RequestMapping("supplies")
	public String supplies() {
		return "travelinfo/supplies";
	}
	@RequestMapping("timedifferenceinfo")
	public String timedifferenceinfo() {
		return "travelinfo/timedifferenceinfo";
	}
	@RequestMapping("visainfo")
	public String visainfo() {
		return "travelinfo/visainfo";
	}
	@RequestMapping("weatherinfo")
	public String weatherinfo() {
		return "travelinfo/weatherinfo";
	}
	
	//고객센터(공지사항, 문의하기, 자주 찾는 질문(FAQ)
	@RequestMapping("support")
	public String support() {
		return "customer/support";
	}
	@RequestMapping("notice")
	public String notice() {
		return "customer/notice";
	}
	@RequestMapping("noticeWrite")
	public String noticewrite() {
		return "customer/noticeWrite";
	}
	@RequestMapping("noticeView")
	public String noticeview() {
		return "customer/noticeView";
	}
	@RequestMapping("noticeModifyView")
	public String noticemodify() {
		return "customer/noticeModify";
	}
	@RequestMapping("inquiry")
	public String inquiry() {
		return "customer/inquiry";
	}
	@RequestMapping("inquiryWrite")
	public String inquirywrite() {
		return "customer/inquiryWrite";
	}
	@RequestMapping("inquiryView")
	public String inquiryview() {
		return "customer/inquiryView";
	}
	
	//회원가입 도로명주소 API
	@RequestMapping("jusoPopup")
	public String findJuso() {
		return "layout/jusoPopup";
	}
	//마이페이지 도로명주소 API
	@RequestMapping("jusoPopup2")
	public String findJuso2() {
		return "mypage/jusoPopup";
	}
	
	//하단 Information(회사 개요, 여행 약관(국내, 해외) 여행자 보험)
	@RequestMapping("company")
	public String company() {
		return "information/companyoverview";
	}
	@RequestMapping("domestictttac")
	public String domestictttac() {
		return "information/domestictravel";
	}
	@RequestMapping("overseattac")
	public String overseattac() {
		return "information/overseastravel";
	}
	@RequestMapping("insurance")
	public String insurance() {
		return "information/insurance";
	}
	
	//마이페이지(마이페이지, 예약내역, 마일리지, 정보수정, 1:1문의, 회원 탈퇴)
	@RequestMapping("mypage")
	public String mypage() {
		return "mypage/mypage";
	}
	@RequestMapping("booking")
	public String booking() {
		return "mypage/booking";
	}
	@RequestMapping("mileage")
	public String mileage() {
		return "mypage/mileage";
	}
	@RequestMapping("/info")
	public String info() {
		return "mypage/info";
	}
	@RequestMapping("inquirylist")
	public String inquirylist() {
		return "mypage/inquirylist";
	}
	@RequestMapping("inquirydetails")
	public String inquirydetails() {
		return "mypage/inquirydetails";
	}
	@RequestMapping("/withdrawal")
	public String withdrawal() {
		return "mypage/withdrawal";
	}
	
	//---------------- Admin Section ----------------
	//메인 홈페이지
	@RequestMapping("admin/main")
	public String admin_main() {
		return "admin/index";
	}
	
	//사이트 관리(배너 관리, 호텔, 패키지, 테마 패키지, 여행 정보)
	@RequestMapping("admin/banner")
	public String admin_banner() {
		return "admin/site/banner";
	}
	@RequestMapping("admin/hotel")
	public String admin_hotel() {
		return "admin/site/hotelproduct";
	}
	@RequestMapping("admin/packageproduct")
	public String admin_package() {
		return "admin/site/packageproduct";
	}
	@RequestMapping("admin/insertpackage")
	public String admin_insertpackage() {
		return "admin/site/insertpackage";
	}
	@RequestMapping("admin/info")
	public String admin_info() {
		return "admin/site/travelinfo";
	}
	
	//회원 관리
	@RequestMapping("admin/member")
	public String admin_member() {
		return "admin/member/memberlist";
	}
	//회원 상세정보 관리
	@RequestMapping("admin/memberView")
	public String admin_memberView() {
		return "admin/member/memberView";
	}
	
	//주문 관리
	@RequestMapping("admin/order")
	public String admin_order() {
		return "admin/order/orderlist";
	}
	@RequestMapping("admin/addorder")
	public String admin_addorder() {
		return "admin/order/addorder";
	}
	
	//통계(방문자, 게시글 작성 수, 기간별 매출)
	@RequestMapping("admin/board")
	public String admin_boardstatistics() {
		return "admin/statistics/boardstatistics";
	}
	@RequestMapping("admin/noticedetail")
	public String admin_noticedetail() {
		return "admin/statistics/noticestatistics";
	}
	@RequestMapping("admin/inquirydetail")
	public String admin_inquirydetail() {
		return "admin/statistics/inquirystatistics";
	}
	@RequestMapping("admin/travelphotodetail")
	public String admin_travelphotodetail() {
		return "admin/statistics/travelphotostatistics";
	}
	@RequestMapping("admin/period")
	public String admin_periodstatistics() {
		return "admin/statistics/periodstatistics";
	}
	@RequestMapping("admin/visit")
	public String admin_visitstatistics() {
		return "admin/statistics/visitstatistics";
	}
	
	//고객센터(공지사항, 1:1문의, FAQ 목록)
	@RequestMapping("admin/notice")
	public String admin_notice() {
		return "admin/customer/notice";
	}
	@RequestMapping("admin/inquiry")
	public String admin_inquiry() {
		return "admin/customer/inquiry";
	}
	@RequestMapping("admin/faq")
	public String admin_faq() {
		return "admin/customer/faq";
	}
	
	//고객센터 등록 & 수정 (공지사항, FAQ 목록)
	@RequestMapping("admin/noticeWrite")
	public String admin_noticeWrite() {
		return "admin/customer/noticeWrite";
	}
	@RequestMapping("admin/noticeModify")
	public String admin_noticeModify() {
		return "admin/customer/noticeModify";
	}
	@RequestMapping("admin/faqWrite")
	public String admin_faqWrite() {
		return "admin/customer/faqWrite";
	}
	@RequestMapping("admin/faqModify")
	public String admin_faqModify() {
		return "admin/customer/faqModify";
	}
}