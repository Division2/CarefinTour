package com.spring.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CareController {
	
	//메인 홈페이지
	@RequestMapping("main")
	public String main() {
		return "index";
	}
	
	/*
	 * 해외 여행(상품, 테마)
	 * 미주/중남미/하와이/
	 * 대만/동남아/서남아
	 * 중국/홍콩/러시아
	 * 유럽/아프리카
	 * 일본
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
	@RequestMapping("detailInfo")
	public String detailInfo() {
		return "product/detailedinformation";
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
	@RequestMapping("travelphoto")
	public String travelphoto() {
		return "ranking/travelphoto";
	}
	@RequestMapping("addphoto")
	public String addphoto() {
		return "ranking/addphoto";
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
	@RequestMapping("inquire")
	public String inquire() {
		return "customer/inquire";
	}
	@RequestMapping("addinquire")
	public String addinquire() {
		return "customer/addinquire";
	}
	//도로명주소 API
	@RequestMapping("jusoPopup")
	public String findJuso() {
		return "layout/jusoPopup";
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
		return "member/mypage";
	}
	@RequestMapping("booking")
	public String booking() {
		return "member/booking";
	}
	@RequestMapping("mileage")
	public String mileage() {
		return "member/mileage";
	}
	@RequestMapping(value="/info", method = RequestMethod.GET)
	public String info() {
		return "member/info";
	}
	@RequestMapping("inquirylist")
	public String inquirylist() {
		return "member/inquirylist";
	}
	@RequestMapping("inquirydetails")
	public String inquirydetails() {
		return "member/inquirydetails";
	}
	@RequestMapping(value="/withdrawal", method = RequestMethod.GET)
	public String withdrawal() throws Exception {
		return "member/withdrawal";
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
	@RequestMapping("admin/package")
	public String admin_package() {
		return "admin/site/packageproduct";
	}
	@RequestMapping("admin/theme")
	public String admin_theme() {
		return "admin/site/themeproduct";
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
	//주문 관리
	@RequestMapping("admin/order")
	public String admin_order() {
		return "admin/order/orderlist";
	}
	//통계(방문자, 게시글 작성 수, 기간별 매출)
	@RequestMapping("admin/board")
	public String admin_boardstatistics() {
		return "admin/statistics/boardstatistics";
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
	@RequestMapping("admin/inquire")
	public String admin_inquire() {
		return "admin/customer/inquire";
	}
	@RequestMapping("admin/faq")
	public String admin_faq() {
		return "admin/customer/faq";
	}
	//고객센터 등록 & 수정 (공지사항, FAQ 목록)
	@RequestMapping("admin/addnotice")
	public String admin_addnotice() {
		return "admin/customer/addnotice";
	}
	@RequestMapping("admin/modifynotice")
	public String admin_modifynotice() {
		return "admin/customer/modifynotice";
	}
	@RequestMapping("admin/addfaq")
	public String admin_addfaq() {
		return "admin/customer/addfaq";
	}
	@RequestMapping("admin/modifyfaq")
	public String admin_modifyfaq() {
		return "admin/customer/modifyfaq";
	}
	//호텔예약
	@RequestMapping("detailresvation")
	public String detailresvation() {
		return "product/detailresvation";
	}
}