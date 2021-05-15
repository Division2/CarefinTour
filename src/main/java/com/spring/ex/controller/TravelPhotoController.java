package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.TravelPhotoService;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelPhotoController {
	
	@Inject
	TravelPhotoService service;
	
	//게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public void postWrite(TravelPhotoVO travelPhotoVO , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.addphoto(travelPhotoVO,mpRequest);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='list'</script>");
			out.close();
		}   
	}
	
	//게시물 출력
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PhotoTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(8);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 8;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TravelPhotoVO> List = service.list(map);
		
		model.addAttribute("list", List);
		model.addAttribute("Paging", paging);
		
		return "ranking/travelphoto";
	}
	
	//마이게시물 출력
	@RequestMapping(value = "/mylist", method = RequestMethod.GET)
	public String mylist(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.PhotoTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(12);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 12;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TravelPhotoVO> List = service.mylist(map);
		
		model.addAttribute("mylist", List);
		model.addAttribute("Paging", paging);
		
		return "ranking/myaddphoto";
	}
	
	//게시물 조회
	@RequestMapping(value = "/readView", method = {RequestMethod.GET, RequestMethod.POST})
	public String read(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		
		model.addAttribute("read", service.read(travelPhotoVO.getPrid()));
		
		return "ranking/travelphotoview";
	}
	
	//게시판 수정뷰
	@RequestMapping(value = "/updateView", method = {RequestMethod.GET, RequestMethod.POST})
	public String updateView(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		
		List<Map<String, Object>> fileList = service.selectFileList(travelPhotoVO.getPrid());
		
		model.addAttribute("update", service.read(travelPhotoVO.getPrid()));
		model.addAttribute("file", fileList);
		
		return "ranking/updateView";
	}
	
	//게시판 수정
	@RequestMapping(value = "/update", method = {RequestMethod.GET, RequestMethod.POST})
	public String update(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest, @RequestParam(value="fileNoDel[]") String[] files, @RequestParam(value="fileNameDel[]") String[] fileNames) throws Exception {
		
		service.update(travelPhotoVO,files,fileNames,mpRequest);
		
		return "redirect:/list";
	}

	//게시판 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(TravelPhotoVO travelPhotoVO) throws Exception {
		
		service.delete(travelPhotoVO.getPrid());
		
		return "redirect:/list";
	}
	
	//탑앵글러 출력
	@RequestMapping(value = "/topangler", method = RequestMethod.GET)
	public String topanglerView(Model model, HttpServletRequest request) throws Exception {
		
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
		
		List<TopAnlgerVO> topanglerList = service.topanglerView(map);
		
		model.addAttribute("topangler", topanglerList);
		model.addAttribute("Paging", paging);
		
		return "ranking/topangler";
	}
	
	//탑앵글러 등록 요청
	@RequestMapping(value = "/topanglerWrite", method = RequestMethod.POST)
	public void topanglerWrite(TopAnlgerVO topAnlgerVO, MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.topanglerWrite(topAnlgerVO, mpRequest);
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='topangler'</script>");
			out.close();
		}   
	}
}