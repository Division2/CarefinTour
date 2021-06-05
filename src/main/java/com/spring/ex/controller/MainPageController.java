package com.spring.ex.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminBannerService;
import com.spring.ex.service.MainPageService;
import com.spring.ex.vo.BannerVO;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class MainPageController {

	@Inject
	MainPageService service;
	@Inject
	AdminBannerService serviceBanner;
	
	//메인 하단 여행포토 리뷰
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String NewTravelPhotoList(Model model) throws Exception {
		//메인 배너(상단 - 1,  하단 - 2) 출력
		model.addAttribute("BannerRespectivelyView1", serviceBanner.BannerRespectivelyView(1));
		model.addAttribute("BannerRespectivelyView2", serviceBanner.BannerRespectivelyView(2));
		
		//메인 최신 포토리뷰 3개 출력
		model.addAttribute("NewTravelPhotoList", service.NewTravelPhotoList());
		
		//메인 추천usa쪽패키지 상품출력
		model.addAttribute("UsaPackageViewList", service.UsaPackageViewList());
		
		//메인 추천중국쪽패키지 상품출력
		model.addAttribute("ChinaPackageViewList", service.ChinaPackageViewList());
		
		//메인 추천동남아패키지 상품출력
		model.addAttribute("MylPackageViewList", service.MylPackageViewList());
		
		//메인 추천일본패키지 상품출력
		model.addAttribute("JapanPackageViewList", service.JapanPackageViewList());
		
		//메인 추천서핑패키지 상품출력
		model.addAttribute("SurfingPackageViewList", service.SurfingPackageViewList());
		
		//메인 추천유럽패키지 상품출력
		model.addAttribute("EuPackageViewList", service.EuPackageViewList());
		
		//메인 최신리뷰 8개
		model.addAttribute("LineReview", service.LineReview());
		
		return "index";
	}
	
	//메인에서 지역, 출발일, 테마로 패키지 상품 검색
	@RequestMapping(value = "/travelSearch", method = RequestMethod.GET)
	public String travelSearch(PackageVO vo, HttpServletRequest request, Model model) throws Exception {
		//검색결과 배너
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(19));
		
		//받아오기
		String searchArea = request.getParameter("searchArea");
		String searchStartDate = request.getParameter("searchStartDate");
		String searchTheme = request.getParameter("searchTheme");
		
		HashMap<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("searchArea", searchArea);
		searchMap.put("searchStartDate", searchStartDate);
		searchMap.put("searchTheme", searchTheme);
		
		//페이징
		int totalCount = service.getMainProductPackageSearchTotalCount(searchMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("searchArea", searchArea);
		map.put("searchStartDate", searchStartDate);
		map.put("searchTheme", searchTheme);
		
		//검색 및 결과값 담기
		List<PackageVO> plist = service.MainProductPackageSearch(map);
		
		model.addAttribute("plist", plist);
		model.addAttribute("Paging", paging);
		model.addAttribute("searchArea", searchArea);
		model.addAttribute("searchStartDate", searchStartDate);
		model.addAttribute("searchTheme", searchTheme);
		
		return "/product/travelSearch";
	}
	
	//메인에서(정확히는 헤더에 있음) 이름으로 패키지 상품 검색
	@RequestMapping(value = "/travelNameSearch", method = RequestMethod.GET)
	public String travelNameSearch(PackageVO vo, HttpServletRequest request, Model model) throws Exception {
		//검색결과 배너
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(19));
		
		//받아오기
		String searchKeyword = request.getParameter("searchKeyword");
		
		HashMap<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("searchKeyword", searchKeyword);
		
		//페이징
		int totalCount = service.getMainNameProductPackageSearchTotalCount(searchMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("searchKeyword", searchKeyword);
		
		//검색 및 결과값 담기
		List<PackageVO> plist = service.MainNameProductPackageSearch(map);
		
		model.addAttribute("plist", plist);
		model.addAttribute("Paging", paging);
		model.addAttribute("searchKeyword", searchKeyword);
		
		return "/product/travelSearch";
	}
}