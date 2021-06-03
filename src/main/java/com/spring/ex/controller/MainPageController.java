package com.spring.ex.controller;

<<<<<<< HEAD
=======
import java.util.HashMap;
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.MainPageService;
<<<<<<< HEAD
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;
=======
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour

@Controller
public class MainPageController {

	@Inject
	MainPageService service;
	
	//메인 하단 여행포토 리뷰
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String NewTravelPhotoList(Model model) throws Exception {
		
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
	
<<<<<<< HEAD
	
=======
	//메인에서 지역, 출발일, 테마로 패키지 상품 검색
	@RequestMapping(value = "/travelSearch", method = RequestMethod.GET)
	public String travelSearch(PackageVO vo, HttpServletRequest request, Model model) throws Exception {
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
<<<<<<< HEAD
	
	//메인에서(정확히는 헤더에 있음) 이름으로 패키지 상품 검색
	@RequestMapping(value = "/travelNameSearch", method = RequestMethod.GET)
	public String travelNameSearch(PackageVO vo, HttpServletRequest request, Model model) throws Exception {
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
=======
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
>>>>>>> branch 'master' of https://github.com/Division2/CarefinTour
}