package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.TravelReviewService;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelReviewController {
	
	@Inject
	TravelReviewService service;
	
	//여행 포토 작성
	@RequestMapping(value = "/TravelPhotoWrite", method = RequestMethod.POST)
	public void TravelPhotoWrite(TravelPhotoVO travelPhotoVO , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.TravelPhotoWrite(travelPhotoVO, mpRequest);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='travelphoto'</script>");
			out.close();
		}
	}
	
	//여행 포토 출력
	@RequestMapping(value = "/travelphoto", method = RequestMethod.GET)
	public String TravelPhotoList(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.TravelPhotoTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(8);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 8;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TravelPhotoVO> List = service.TravelPhotoList(map);
		
		model.addAttribute("TravelPhotoList", List);
		model.addAttribute("Paging", paging);
		
		return "ranking/travelphoto";
	}
	
	//여행 포토 조회
	@RequestMapping(value = "/travelphotoView", method = RequestMethod.GET)
	public String TravelPhotoView(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		
		service.TravelPhotoBoardHit(travelPhotoVO.getPrid());

		model.addAttribute("content", service.TravelPhotoView(travelPhotoVO.getPrid()));
		
		  model.addAttribute("reply",service.TravelPhotoReplyView(travelPhotoVO.getPrid()));
		 
		
		return "ranking/travelphotoView";
	}
	
	//여행 포토 수정 화면
	@RequestMapping(value = "/travelphotoModifyView", method = {RequestMethod.GET, RequestMethod.POST})
	public String TravelPhotoModifyView(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		
		List<Map<String, Object>> fileList = service.TravelPhotoSelectFileList(travelPhotoVO.getPrid());
		
		model.addAttribute("update", service.TravelPhotoView(travelPhotoVO.getPrid()));
		model.addAttribute("file", fileList);
		
		return "ranking/travelphotoModify";
	}
	
	//여행 포토 수정(사진 & 내용)
	@RequestMapping(value = "/travelphotoModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String TravelPhotoModify(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest, @RequestParam(value="fileNoDel[]") String[] files, @RequestParam(value="fileNameDel[]") String[] fileNames) throws Exception {
		
		service.TravelPhotoModify(travelPhotoVO, files, fileNames, mpRequest);
		
		return "redirect:/travelphoto";
	}

	//여행 포토 삭제
	@RequestMapping(value = "/travelphotoDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String TravelPhotoDelete(HttpServletRequest request) throws Exception {
		
		int prid = Integer.parseInt(request.getParameter("prid"));
		
		int result = service.TravelPhotoDelete(prid);
		System.out.println("게시글 삭제" + result);
		return "redirect:/travelphoto";
		
	}
	
	//여행 포토 내 게시글 리스트
	@RequestMapping(value = "/myaddphoto", method = RequestMethod.GET)
	public String MyTravelPhotoMyList(Model model, HttpServletRequest request, MemberVO vo, HttpSession session) throws Exception {
		
		MemberVO sessioninfo = (MemberVO)session.getAttribute("member");
		System.out.println("Session : " + sessioninfo.getUserID());
		
		int totalCount = service.MyPhotoTotalCount(sessioninfo);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(12);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 12;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TravelPhotoVO> List = service.TravelPhotoMyList(map);
		
		model.addAttribute("TravelPhotoMyList", List);
		model.addAttribute("Paging", paging);
		
		return "ranking/myaddphoto";
	}
	
	//탑앵글러 출력
	@RequestMapping(value = "/topangler", method = RequestMethod.GET)
	public String TopAnglerView(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.TopAnglerTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TopAnlgerVO> topanglerList = service.TopAnglerView(map);
		
		model.addAttribute("topangler", topanglerList);
		model.addAttribute("Paging", paging);
		
		return "ranking/topangler";
	}
}