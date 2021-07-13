package com.spring.ex.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.admin.service.AdminBannerService;
import com.spring.ex.service.TravelReviewService;
import com.spring.ex.util.UploadFileUtils;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.ReplyVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelReviewController {
	
	@Inject
	TravelReviewService service;
	@Inject
	AdminBannerService serviceBanner;
	
	//여행포토 작성페이지 배너 출력
	@RequestMapping(value = "/travelphotoWrite", method = RequestMethod.GET)
	public String TravelphotoWriteView(Model model) throws Exception{
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(18));
		
		return "ranking/travelphotoWrite";
	}
	
	//여행 포토 작성
	@RequestMapping(value = "/travelphotoWrite", method = RequestMethod.POST)
	public String TravelPhotoWrite(TravelPhotoVO vo ,MultipartFile file, HttpServletRequest request) throws Exception {
		String Path = request.getSession().getServletContext().getRealPath("resources/images/TravelPhotoReview/");
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());	
		}

		vo.setS_file_name(fileName);
				
		service.TravelPhotoWrite(vo);
		
		return "redirect:travelphoto";
	}
	
	//여행 포토 수정
	@RequestMapping(value = "/travelphotoModify", method = RequestMethod.POST)
	public String TravelPhotoModify(TravelPhotoVO vo, MultipartFile file, HttpServletRequest request) throws Exception {
		String Path = request.getSession().getServletContext().getRealPath("resources/images/TravelPhotoReview/");
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			new File(Path + request.getParameter("imgFile")).delete();
			String fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
	  
			vo.setS_file_name(fileName);
		}
		else {
			vo.setS_file_name(request.getParameter("imgFile"));
		}
		
		service.TravelPhotoModify(vo);
		
		return "redirect:travelphoto";
	}
	
	//여행 포토 수정 화면
	@RequestMapping(value = "/travelphotoModifyView", method = {RequestMethod.GET, RequestMethod.POST})
	public String TravelPhotoModifyView(TravelPhotoVO travelPhotoVO, Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(18));
		
		List<Map<String, Object>> fileList = service.TravelPhotoSelectFileList(travelPhotoVO.getPrid());
		
		model.addAttribute("update", service.TravelPhotoView(travelPhotoVO.getPrid()));
		model.addAttribute("file", fileList);
		
		return "ranking/travelphotoModify";
	}
	
	//여행 포토 출력
	@RequestMapping(value = "/travelphoto", method = RequestMethod.GET)
	public String TravelPhotoList(HttpServletRequest request, Model model) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(18));
		
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
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(18));
		
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
	
	//탑앵글러 등록
	@RequestMapping(value = "/TopAnglerWrite", method = RequestMethod.POST)
	public String TopAnglerWrite(TopAnlgerVO vo, MultipartFile file, HttpServletRequest request) throws Exception {
		
		String Path = request.getSession().getServletContext().getRealPath("resources/images/topangler");
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
		}
		
		vo.setS_file_fish(fileName);
		service.TopAnglerWrite(vo);
		
		return "redirect:topangler";
	}
	
	//탑앵글러 출력
	@RequestMapping(value = "/topangler", method = RequestMethod.GET)
	public String TopAnglerView(Model model, HttpServletRequest request) throws Exception {
		//배너 출력
		model.addAttribute("BannerRespectivelyView", serviceBanner.BannerRespectivelyView(17));
		
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