 package com.spring.ex.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.admin.service.PackageService;
import com.spring.ex.util.UploadFileUtils;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller
public class PackageController {
	
	
	@Inject
	PackageService service;
	
	//여행패키지 등록
	@RequestMapping(value = "/admin/PackageWrite", method = RequestMethod.POST)
	public String PackageWrite(PackageVO packageVo , MultipartFile file, HttpServletRequest request) throws Exception {
		String Path = request.getSession().getServletContext().getRealPath("resources/images/product_package");
		String fileName = null;
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			fileName =  UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());	
		}

		packageVo.setS_file_name(fileName);
		service.PackageWrite(packageVo);
		return "redirect:packageproduct";
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
		model.addAttribute("plist", packageList);
		model.addAttribute("Paging", paging);
		
		return "admin/site/packageproduct";
		
	}
	
	//여행패키지 상세페이지 출력
	@RequestMapping(value = "/admin/packageProductDetail", method = RequestMethod.GET)
	public String getPackageProductDetail(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		
		model.addAttribute("pdtail", pdtail);
		return "admin/site/packageProductDetail";
	}
	
	//여행패키지 삭제
	@RequestMapping(value = "/admin/PackageSelectDelete")
	public String PackageSelectDelete(HttpServletRequest request) throws Exception {
        int[] ajaxMsg = Arrays.stream(request.getParameterValues("valueArr")).mapToInt(Integer::parseInt).toArray();
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	//service.ProductPackageDelete(ajaxMsg[i]); //DB에서 삭제 - 학교에서 바꾸기
        	PackageVO pfileName = service.ProductPackageFileName(ajaxMsg[i]);
        	System.out.println(ajaxMsg[i]);
        	System.out.println(pfileName.getS_file_name());
        	//System.out.println(pfileName);
        	
        	final String filePath2 = "C:\\Users\\choum\\git\\CarefinTour\\src\\main\\webapp\\resources\\image\\product_package\\"+pfileName.getS_file_name();
        	System.out.println(" 2번 "+filePath2);
    		File file = new File(filePath2);
    			if(file.exists() == true){
    				
    				file.delete();
    				System.out.println("삭제 : " + pfileName.getS_file_name());
    		}
        }
		return "admin/site/packageproduct";
	}
	
	//여행패키지 수정페이지 출력
	@RequestMapping(value = "/admin/packageProductModifyView", method = {RequestMethod.GET, RequestMethod.POST})
	public String getPackageProductModify(Model model, HttpServletRequest request)  throws Exception {
		int pid = Integer.parseInt(request.getParameter("PID"));
		PackageVO pdtail =  service.ProductPackageDetail(pid);
		model.addAttribute("pdtail", pdtail);
		return "admin/site/packageProductModifyView";
	}
	
	//여행패키지 수정
	@RequestMapping(value = "/admin/ProductPackageModify", method = RequestMethod.POST)
	public String ProductPackageModify(PackageVO vo, MultipartFile file, HttpServletRequest request) throws Exception {
		String Path = request.getSession().getServletContext().getRealPath("resources/images/product_package/");
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			new File(Path + request.getParameter("imgFile")).delete();
			String fileName = UploadFileUtils.fileUpload(Path, file.getOriginalFilename(), file.getBytes());
			
			File fileModifyDelete = new File(Path + vo.getS_file_name()); //기존 파일 삭제
			fileModifyDelete.delete();
			
			vo.setS_file_name(fileName);
		}
		else {
			vo.setS_file_name(request.getParameter("imgFile"));
		}
		
		service.ProductPackageModify(vo);
		
		return "redirect:packageproduct";
	}
	
	
}