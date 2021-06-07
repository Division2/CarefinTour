package com.spring.ex.admin.controller;

import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.spring.ex.admin.service.AdminTopAnglerService;
import com.spring.ex.service.TravelReviewService;
import com.spring.ex.util.UploadFileUtils;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TopAnlgerVO;

@Controller
public class AdminTopAnglerController {
	
	@Inject AdminTopAnglerService service;
	@Inject TravelReviewService TRservice;
	
	//탑앵글러 출력
	@RequestMapping(value = "/admin/topangler", method = RequestMethod.GET)
	public String TopAngler(HttpServletRequest request, Model model) throws Exception {
		
		int totalCount = TRservice.TopAnglerTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<TopAnlgerVO> topanglerList = TRservice.TopAnglerView(map);
		
		model.addAttribute("topangler", topanglerList);
		model.addAttribute("Paging", paging);
		
		return "admin/site/topangler";
	}
	
	//탑앵글러 등록
	@RequestMapping(value = "/admin/TopAnglerWrite", method = RequestMethod.POST)
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
	
	//탑앵글러 삭제
	@RequestMapping(value = "/admin/TopAnglerDelete")
	public String TopAnglerDelete(HttpServletRequest request) throws Exception {
		
		String Path = request.getSession().getServletContext().getRealPath("resources/images/topangler/");
		
		int[] ajaxMsg = Arrays.stream(request.getParameterValues("valueArr")).mapToInt(Integer::parseInt).toArray();
		
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	String pfileName = service.TopAnglerFileName(ajaxMsg[i]);
			File fileModifyDelete = new File(Path + pfileName);
			fileModifyDelete.delete();
			
			service.TopAnglerDelete(ajaxMsg[i]); //DB에서 삭제
        }
		
		return "admin/site/topangler";
	}
}