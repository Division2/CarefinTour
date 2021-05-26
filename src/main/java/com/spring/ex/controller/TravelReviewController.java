package com.spring.ex.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.TravelReviewService;
import com.spring.ex.util.UploadFileUtils;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelReviewController {
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	TravelReviewService service;
	
	//여행 포토 작성
	@RequestMapping(value = "/travelphotoWrite", method = RequestMethod.POST)
	public String TravelPhotoWrite(TravelPhotoVO vo ,MultipartFile file, HttpServletRequest req) throws Exception {
		  String Path = req.getSession().getServletContext().getRealPath("resources/imgUpload/");
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());	
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}
		
		vo.setS_file_name(fileName);
				
		service.TravelPhotoWrite(vo);
		
		return "redirect:travelphoto";
	}
	
	// 상품 수정
	@RequestMapping(value = "/travelphotoModify", method = RequestMethod.POST)
	public String TravelPhotoModify(TravelPhotoVO vo, MultipartFile file, HttpServletRequest req) throws Exception {
		String Path = req.getSession().getServletContext().getRealPath("resources/imgUpload/");
	// 새로운 파일이 등록되었는지 확인
	 if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
	  // 기존 파일을 삭제
	  new File(Path + req.getParameter("s_file_name")).delete();
	  
	  // 새로 첨부한 파일을 등록
	  String fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
	  
	  vo.setS_file_name(fileName);
	  
	 } else {  // 새로운 파일이 등록되지 않았다면
	  // 기존 이미지를 그대로 사용
	  vo.setS_file_name(req.getParameter("s_file_name"));
	  
	 }
	 
	 service.TravelPhotoModify(vo);
	 
	 return "redirect:travelphoto";
	}
	
	
	//여행 포토 수정 화면
	@RequestMapping(value = "/travelphotoModifyView", method = {RequestMethod.GET, RequestMethod.POST})
	public String TravelPhotoModifyView(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		
		List<Map<String, Object>> fileList = service.TravelPhotoSelectFileList(travelPhotoVO.getPrid());
		
		model.addAttribute("update", service.TravelPhotoView(travelPhotoVO.getPrid()));
		model.addAttribute("file", fileList);
		
		return "ranking/travelphotoModify";
	}
	
	

	//여행 포토 출력
	@RequestMapping(value = "/travelphoto", method = RequestMethod.GET)
	public String TravelPhotoList(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.TravelPhotoTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(9);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 9;
		
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
	public String TravelPhotoView(TravelPhotoVO travelPhotoVO, HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = service.TravelPhotoReplyTotalCount(travelPhotoVO.getPrid());
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(5);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 5;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("prid", travelPhotoVO.getPrid());
		
		service.TravelPhotoBoardHit(travelPhotoVO.getPrid());

		model.addAttribute("content", service.TravelPhotoView(travelPhotoVO.getPrid()));
		model.addAttribute("reply", service.TravelPhotoReplyView(map));
		model.addAttribute("replyPaging", paging);
		model.addAttribute("replyCount", service.TravelPhotoReplyTotalCount(travelPhotoVO.getPrid()));
		
		return "ranking/travelphotoView";
	}
	

	

	//여행 포토 삭제
	@RequestMapping(value = "/travelphotoDelete", method = RequestMethod.GET)
	public String TravelPhotoDelete(HttpServletRequest request) throws Exception {
		
		int prid = Integer.parseInt(request.getParameter("prid"));
		
		int result = service.TravelPhotoDelete(prid);
		System.out.println("게시글 삭제" + result);
		
		return "redirect:travelphoto";
	}
	
	//여행 포토 댓글 작성
	@RequestMapping(value = "/travelreplyWrite", method = RequestMethod.POST)
	public @ResponseBody int TravelPhotoReplyWrite(ReplyVO vo) throws Exception {
		
		return service.TravelPhotoReplyWrite(vo);
	}
	
	//여행 포토 댓글 수정
	@RequestMapping(value = "travelreplyModify", method = RequestMethod.POST)
	public @ResponseBody int TravelPhotoReplyModify(ReplyVO vo) throws Exception {
		
		return service.TravelPhotoReplyModify(vo);
	}
	
	//여행 포토 댓글 삭제
	@RequestMapping(value = "/travelreplyDelete", method = RequestMethod.GET)
	public String TravelPhotoReplyDelete(HttpServletRequest request) throws Exception {
		
		int prid = Integer.parseInt(request.getParameter("prid"));
		int prrid = Integer.parseInt(request.getParameter("prrid"));
		service.TravelPhotoReplyDelete(prrid);
		
		return "redirect:travelphotoView?prid=" + prid;
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