package com.spring.ex.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.service.ShowPackageService;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class ShowPackageController {
	@Inject
	ShowPackageService service;
	
	//북미,중남미,하와이 패키지 출력
	@RequestMapping(value = "/countrytravel1", method = RequestMethod.GET)
	public String  PackageView(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PackageTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(6);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 6;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());	
		
		List<PackageVO> packageList = service.PackageView(map);
		model.addAttribute("plist", packageList);
		model.addAttribute("Paging", paging);
		
		return "product/countryoftravel1";
		
	}
	
	//대만,동남아,서남아 패키지 출력
	@RequestMapping(value = "/countrytravel2", method = RequestMethod.GET)
	public String  PackageView2(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PackageTotalCount2();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(6);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 6;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());	
		
		List<PackageVO> packageList = service.PackageView2(map);
		model.addAttribute("plist2", packageList);
		model.addAttribute("Paging", paging);
		
		return "product/countryoftravel2";
		
	}
	
	//중국,홍콩,러시아 패키지 출력
	@RequestMapping(value = "/countrytravel3", method = RequestMethod.GET)
	public String  PackageView3(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PackageTotalCount3();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(6);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 6;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());	
		
		List<PackageVO> packageList = service.PackageView3(map);
		model.addAttribute("plist3", packageList);
		model.addAttribute("Paging", paging);
		
		return "product/countryoftravel3";
		
	}
	
	//일본 패키지 출력
	@RequestMapping(value = "/countrytravel4", method = RequestMethod.GET)
	public String  PackageView4(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PackageTotalCount4();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(6);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 6;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());	
		
		List<PackageVO> packageList = service.PackageView4(map);
		model.addAttribute("plist4", packageList);
		model.addAttribute("Paging", paging);
		
		return "product/countryoftravel4";
		
	}
	
	//여행패키지 출력
	@RequestMapping(value = "/countrytravel5", method = RequestMethod.GET)
	public String  PackageView5(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PackageTotalCount5();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(6);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 6;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());	
		
		List<PackageVO> packageList = service.PackageView5(map);
		model.addAttribute("plist5", packageList);
		model.addAttribute("Paging", paging);
		
		return "product/countryoftravel5";
		
	}
	
	//여행패키지 상세페이지 출력
	@RequestMapping(value = "/detailInfo", method = RequestMethod.GET)
	public String getPackageProductDetail(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		
		model.addAttribute("pdtail", pdtail);
		return "product/detailedinformation";
	}
	
	//여행패키지 상세페이지 출력
	@RequestMapping(value = "/detailResvation", method = RequestMethod.GET)
	public String getPackageProductDetail2(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		
		model.addAttribute("pdtail", pdtail);
		return "product/detailresvation";
	}

}
