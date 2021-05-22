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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.PackageService;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class PackageController {
	
	
	@Inject
	PackageService service;
	
	//여행패키지 등록
	@RequestMapping(value = "/admin/PackageWrite", method = RequestMethod.POST)
	public void PackageWrite(PackageVO packageVo , MultipartHttpServletRequest mpRequest, HttpServletResponse response) throws Exception {
		
		int result = service.PackageWrite(packageVo,mpRequest);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			System.out.println("ㅅㅅ");
			
			out.println("<script>location.href='package'</script>");
			out.close();
		}else {
			System.out.println(result);
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='insertpackage'</script>");
			out.close();
			System.out.println("ㄴ");
		}
	}
	
	//여행패키지 출력
	@RequestMapping(value = "/admin/packageproduct", method = RequestMethod.GET)
	public String  AdminPackageView(Model model, HttpServletRequest request) throws Exception {
		
		int totalCount = service.AdminPackageTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		
		List<PackageVO> packageList = service.AdminPackageView(map);
		System.out.println(packageList);
		model.addAttribute("plist", packageList);
		model.addAttribute("Paging", paging);
		
		return "admin/site/packageproduct";
	}
	
	//여행패키지 상세페이지 출력
	@RequestMapping(value = "/admin/packageProductDetail", method = RequestMethod.GET)
	public String getPackageProductDetail()  throws Exception {
		return "admin/site/packageProductDetail";
	}
	
	//여행패키지 삭제
	@RequestMapping(value = "/admin/PackageSelectDelete")
	public String PackageSelectDelete(HttpServletRequest request) throws Exception {
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.ProductPackageDelete(ajaxMsg[i]);
        }
		return "admin/site/packageproduct";
	}
	
}