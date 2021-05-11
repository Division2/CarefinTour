package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.TravelPhotoService;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller

public class TravelPhotoController {
	
		private static final Logger logger = LoggerFactory.getLogger(TravelPhotoController.class);
	
		@Inject
		TravelPhotoService service;
		
		//게시물 작성
	   @RequestMapping(value = "/gaza", method = RequestMethod.POST)
	      public void postWrite(TravelPhotoVO travelPhotoVO , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception{
	         
	         int result = 0;
	            
	         result = service.addphoto(travelPhotoVO,mpRequest);
	         
	         if (result == 1) {
	            response.setContentType("text/html;charset=utf-8");
	            PrintWriter out = response.getWriter();
	            
	            out.println("<script>location.href='list'</script>");
	            out.close();
	         }   
	      }

		//게시물 출력
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public String list(Model model, HttpServletRequest request) throws Exception{
			
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
			
			List<TravelPhotoVO> List = service.list(map);
			
			model.addAttribute("list", List);
			model.addAttribute("Paging", paging);
			
			logger.info("list");
			
			return "ranking/travelphoto";
		}
		//게시물 조회
		@RequestMapping(value = "/readView", method = RequestMethod.GET)
		public String read(TravelPhotoVO travelPhotoVO, Model model) throws Exception{
			logger.info("read");
			
			model.addAttribute("read", service.read(travelPhotoVO.getPrid()));
			
			return "ranking/travelphotoview";
		}
		
}