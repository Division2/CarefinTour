package com.spring.ex.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminStatisticsService;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TravelPhotoVO;
import com.spring.ex.vo.VisitVO;

@Controller
public class AdminStatisticsController {
	
	@Inject private AdminStatisticsService service;
	
	//방문자 전체 출력
	@RequestMapping(value = "/admin/visit", method = RequestMethod.GET)
	public String visitView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.visitorTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(15);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 15;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<VisitVO> List = service.visitorAllView(map);
		
		model.addAttribute("VisitList", List);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/visitstatistics";
	}
	
	//방문자 검색 출력
	@RequestMapping(value = "/admin/visitSearch", method = RequestMethod.GET)
	public String visitSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.visitorSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(15);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 15;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		List<VisitVO> List = service.visitorSearchView(map);
		
		model.addAttribute("VisitList", List);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/visitstatistics";
	}
	
	//게시글 작성 수(공지사항)
	@RequestMapping(value = "/admin/board", method = RequestMethod.GET)
	public String NoticeBoardStatisticsView(Model model) throws Exception {
		
		List<NoticeBoardVO> NoticeList = service.NoticeBoardStatisticsView();
		List<InquiryVO> InquiryList = service.InquiryBoardStatisticsView();
		List<TravelPhotoVO> TravelPhotoList = service.TravelPhotoBoardStatisticsView();
		
		model.addAttribute("NoticeList", NoticeList);
		model.addAttribute("NoticeTotalCount", service.NoticeBoardStatisticsTotalCount());
		
		model.addAttribute("InquiryList", InquiryList);
		model.addAttribute("InquiryTotalCount", service.InquiryBoardStatisticsTotalCount());
		
		model.addAttribute("TravelPhotoList", TravelPhotoList);
		model.addAttribute("TravelPhotoTotalCount", service.TravelPhotoBoardStatisticsTotalCount());
		
		return "admin/statistics/boardstatistics";
	}
	
	//게시글 작성 수(공지사항 상세)
	@RequestMapping(value = "/admin/noticedetail", method = RequestMethod.GET)
	public String NoticeBoardStatisticsDetailView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.NoticeBoardStatisticsTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<NoticeBoardVO> NoticeList = service.NoticeBoardStatisticsDetailView(map);
		
		model.addAttribute("NoticeList", NoticeList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/noticestatistics";
	}
	
	//게시글 작성 수(1:1 문의 상세)
	@RequestMapping(value = "/admin/inquirydetail", method = RequestMethod.GET)
	public String InquiryBoardStatisticsDetailView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.InquiryBoardStatisticsTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<InquiryVO> InquiryList = service.InquiryBoardStatisticsDetailView(map);
		
		model.addAttribute("InquiryList", InquiryList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/inquirystatistics";
	}
	
	//게시글 작성 수(여행 포토 상세)
	@RequestMapping(value = "/admin/travelphotodetail", method = RequestMethod.GET)
	public String TravelPhotoBoardStatisticsDetailView(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.TravelPhotoBoardStatisticsTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TravelPhotoVO> TravelPhotoList = service.TravelPhotoBoardStatisticsDetailView(map);
		
		model.addAttribute("TravelPhotoList", TravelPhotoList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/travelphotostatistics";
	}
	
	//게시글 작성 수(공지사항 상세 검색)
	@RequestMapping(value = "/admin/noticedetailsearch", method = RequestMethod.GET)
	public String NoticeBoardStatisticsDetailSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.NoticeBoardStatisticsSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		List<NoticeBoardVO> NoticeList = service.NoticeBoardStatisticsSearchDetailView(map);
		
		model.addAttribute("NoticeList", NoticeList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/noticestatistics";
	}
	
	//게시글 작성 수(1:1 문의 상세 검색)
	@RequestMapping(value = "/admin/inquirydetailsearch", method = RequestMethod.GET)
	public String InquiryBoardStatisticsDetailSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.InquiryBoardStatisticsSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		List<InquiryVO> InquiryList = service.InquiryBoardStatisticsSearchDetailView(map);
		
		model.addAttribute("InquiryList", InquiryList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/inquirystatistics";
	}
	
	//게시글 작성 수(여행 포토 상세 검색)
	@RequestMapping(value = "/admin/travelphotodetailsearch", method = RequestMethod.GET)
	public String TravelPhotoBoardStatisticsDetailSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.TravelPhotoBoardStatisticsSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		List<TravelPhotoVO> TravelPhotoList = service.TravelPhotoBoardStatisticsSearchDetailView(map);
		
		model.addAttribute("TravelPhotoList", TravelPhotoList);
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/travelphotostatistics";
	}
	
	//공지사항 상세 선택 삭제
	@RequestMapping(value = "/admin/noticeSelectDelete", method = RequestMethod.POST)
	public String NoticeDelete(HttpServletRequest request) throws Exception {
		
		String[] ajaxMsg = request.getParameterValues("valueArr");
		
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			service.NoticeSelectDelete(ajaxMsg[i]);
		}
		return "redirect:noticedetail";
	}
	
	//1:1 문의 상세 선택 삭제
	@RequestMapping(value = "/admin/inquirySelectDelete", method = RequestMethod.POST)
	public String InquiryDelete(HttpServletRequest request) throws Exception {
		
		String[] ajaxMsg = request.getParameterValues("valueArr");
		
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			service.InquirySelectDelete(ajaxMsg[i]);
		}
		return "redirect:inquirydetail";
	}
	
	//여행 포토 상세 선택 삭제
	@RequestMapping(value = "/admin/travelphotoSelectDelete", method = RequestMethod.POST)
	public String TravelPhotoDelete(HttpServletRequest request) throws Exception {
		
		String[] ajaxMsg = request.getParameterValues("valueArr");
		
		int size = ajaxMsg.length;
		for(int i = 0; i < size; i++) {
			service.TravelPhotoSelectDelete(ajaxMsg[i]);
		}
		return "redirect:travelphotodetail";
	}
	
	//기간별 매출 통계 출력
	@RequestMapping(value = "/admin/period", method = RequestMethod.GET)
	public String RevenueByPeriod(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.TotalOrderCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(5);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 5;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		model.addAttribute("OrderList", service.RevenueByPeriod(map));
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/periodstatistics";
	}
	
	//기간별 매출 검색 출력
	@RequestMapping(value = "/admin/periodSearch", method = RequestMethod.GET)
	public String PeriodSearchView(HttpServletRequest request, Model model) throws Exception {
		
		String start_date = request.getParameter("start_date");
		String end_date = request.getParameter("end_date");
		
		HashMap<String, String> totalMap = new HashMap<String, String>();
		totalMap.put("start_date", start_date);
		totalMap.put("end_date", end_date);
		
		int totalCount = service.getPriodSearchTotalCount(totalMap);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(5);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 5;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		
		model.addAttribute("OrderList", service.PeriodSearchView(map));
		model.addAttribute("Paging", paging);
		
		return "admin/statistics/periodstatistics";
	}
}