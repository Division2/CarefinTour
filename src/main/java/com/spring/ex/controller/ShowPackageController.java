package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.service.ShowPackageService;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.OrderVO;
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
	
	//허니문패키지 출력
		@RequestMapping(value = "/honeymoon", method = RequestMethod.GET)
		public String  PackageView6(Model model, HttpServletRequest request) throws Exception {
			
			int totalCount = service.PackageTotalCount6();
			int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
			
			PagingVO paging = new PagingVO();
			paging.setPageNo(page);
			paging.setPageSize(6);
			paging.setTotalCount(totalCount);
			page = (page - 1) * 6;
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("Page", page);
			map.put("PageSize", paging.getPageSize());	
			
			List<PackageVO> packageList = service.PackageView6(map);
			model.addAttribute("plist6", packageList);
			model.addAttribute("Paging", paging);
			
			return "theme/honeymoon";
			
		}
		
		//낚시패키지 출력
		@RequestMapping(value = "/fishing", method = RequestMethod.GET)
		public String  PackageView7(Model model, HttpServletRequest request) throws Exception {
			
			int totalCount = service.PackageTotalCount7();
			int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
			
			PagingVO paging = new PagingVO();
			paging.setPageNo(page);
			paging.setPageSize(6);
			paging.setTotalCount(totalCount);
			page = (page - 1) * 6;
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("Page", page);
			map.put("PageSize", paging.getPageSize());	
			
			List<PackageVO> packageList = service.PackageView7(map);
			model.addAttribute("plist7", packageList);
			model.addAttribute("Paging", paging);
			
			return "theme/fishing";
			
		}
		
		//골프패키지 출력
		@RequestMapping(value = "/golf", method = RequestMethod.GET)
		public String  PackageView8(Model model, HttpServletRequest request) throws Exception {
			
			int totalCount = service.PackageTotalCount8();
			int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
			
			PagingVO paging = new PagingVO();
			paging.setPageNo(page);
			paging.setPageSize(6);
			paging.setTotalCount(totalCount);
			page = (page - 1) * 6;
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("Page", page);
			map.put("PageSize", paging.getPageSize());	
			
			List<PackageVO> packageList = service.PackageView8(map);
			model.addAttribute("plist5", packageList);
			model.addAttribute("Paging", paging);
			
			return "theme/golf";
			
		}
	
	//여행패키지 상세페이지 출력
	@RequestMapping(value = "/detailInfo", method = RequestMethod.GET)
	public String getPackageProductDetail(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		
		model.addAttribute("pdtail", pdtail);
		return "product/detailedinformation";
	}
	
	//여행패키지 예약페이지 출력
	@RequestMapping(value = "/detailResvation", method = RequestMethod.GET)
	public String getPackageProductDetail2(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		
		model.addAttribute("pdtail", pdtail);
		return "product/detailresvation";
	}
	
	//여행패키지 예약페이지 출력
		@RequestMapping(value = "/detailResvation2", method = RequestMethod.GET)
		public String getPackageProductDetail3(Model model, HttpServletRequest request)  throws Exception {
			int pid = Integer.parseInt(request.getParameter("PID"));
			PackageVO pdtail =  service.ProductPackageDetail(pid);
			
			model.addAttribute("pdtail", pdtail);
			return "product/detailresvation2";
		}
	
	 //여행패키지 예약내역 작성
  	@RequestMapping(value = "/detailResvationAdd", method = RequestMethod.POST)
  	public String Write(OrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		vo.setProductname(request.getParameter("productname"));
  		vo.setPhonenum(request.getParameter("phonenum"));
  		vo.setUserId(request.getParameter("userId"));
  		vo.setName(request.getParameter("name"));
  		service.OrderWrite(vo);
  		
  		return "index";
  		
  	}
  	
	 //여행패키지 예약보류 작성
  	@RequestMapping(value = "/detailResvationAdd2", method = RequestMethod.POST)
  	public String Write2(OrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		vo.setProductname(request.getParameter("productname"));
  		vo.setPhonenum(request.getParameter("phonenum"));
  		vo.setUserId(request.getParameter("userId"));
  		vo.setName(request.getParameter("name"));
  		service.OrderWrite2(vo);
  		
  		return "index";
  		
  	}
  	
  	 //여행패키지 비회원 예약 작성
  	@RequestMapping(value = "/detailResvationAdd3", method = RequestMethod.POST)
  	public String Write3(OrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		vo.setProductname(request.getParameter("productname"));
  		vo.setPhonenum(request.getParameter("phonenum"));
  		vo.setUserId(request.getParameter("userId"));
  		vo.setName(request.getParameter("name"));
  		service.OrderWrite3(vo);
  		
  		return "index";
  		
  	}
  	
  //비회원 예약 패키지 출력
  	@RequestMapping(value = "/NonMemberView", method = RequestMethod.POST)
  	public @ResponseBody int NonMemberView(OrderVO vo) throws Exception {
  		int result = 1;

  		OrderVO nonmember = service.NonMemberView(vo);
  		if (nonmember == null) {
			result = 0;
		}
  		
  		return result;
  		
  	}
  	
  //여행패키지 예약 상태변경
  	@RequestMapping(value = "/detailModify", method = RequestMethod.POST)
  	public void Modify(OrderVO vo, HttpServletResponse response) throws Exception {
  		
  		int result = service.detailModify(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='main'</script>");
  			out.close();
  		}
  	}
	
	

}