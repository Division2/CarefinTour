package com.spring.ex.admin.controller;

import javax.inject.Inject;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ex.admin.service.AdminMemberService;
import com.spring.ex.admin.service.AdminServiceCenterService;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PagingVO;


@Controller
public class AdminMemberController {
	
private static final Logger logger = LoggerFactory.getLogger(AdminMemberController.class);
	
	@Inject AdminMemberService service;
	
	//-----------------------------------------------------회원 관리--------------------------------------------------------------------  
	 
	//관리자용 회원 목록
	  	@RequestMapping(value = "admin/member", method = RequestMethod.GET)
	  	public String listGET(HttpSession session, Model model, HttpServletRequest request) throws Exception {
	  		
	  		// 1. 관리자 세션 제어
	  		int totalCount = service.MemberTotalCount();
			int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
			
			PagingVO paging = new PagingVO();
			paging.setPageNo(page);
			paging.setPageSize(10);
			paging.setTotalCount(totalCount);
			
			page = (page - 1) * 10;
			
			HashMap<String, Integer> map = new HashMap<String, Integer>();
			map.put("Page", page);
			map.put("PageSize", paging.getPageSize());
	  		MemberVO vo = (MemberVO) session.getAttribute("member");
	  		String id = vo.getUserID();
	  		if (id == null || !(id.equals("1234"))) {
	  			logger.info("C: 관리자아닌 접근 ID - " + id);
	  			return "redirect:/main";
	  		}
	  		List<MemberVO> List = service.getMemberList(map);

	  		model.addAttribute("memberList",List);
			model.addAttribute("Paging", paging);
			
	  		// 4. 페이지이동
	  		return "admin/member/memberlist";
	  	}
	  	
		 //회원 상세정보 조회
		    @RequestMapping(value = "/admin/memberView", method = RequestMethod.GET)
		    public String memberView(Model model, HttpServletRequest request) throws Exception{
		        // 회원 정보를 model에 저장
		    	int aid = Integer.parseInt(request.getParameter("AID"));
		    	System.out.println(aid);
		    	MemberVO memberVO = service.ViewMember(aid);
		    	String userId = memberVO.getUserID();
		    	List<InquiryVO> List = service.viewInquiry(userId);
		    	List<OrderVO> OList = service.viewOrder(userId);
		    	model.addAttribute("morder", OList);
		        model.addAttribute("mDetail", memberVO);
		        model.addAttribute("minquiry", List);
		        System.out.println(userId);
		        System.out.println(model);
		        //System.out.println("클릭한 아이디 확인 : "+userId);
		        //logger.info("클릭한 아이디 : "+UserID);
		        // member_view.jsp로 포워드
		        return "admin/member/memberView";
		    }
	  
		 //회원 정보 수정
		    @RequestMapping(value = "/admin/memberUpdate", method = RequestMethod.POST)
			public String memberUpdate(MemberVO vo) throws Exception {
				service.memberUpdate(vo);
				return "redirect:member";
			}
		    
		//회원 정보 선택삭제
		    @RequestMapping(value="/admin/delete")
		    public String memberdelete(HttpServletRequest request) throws Exception{
		    	String[] ajaxMsg = request.getParameterValues("valueArr");
		    	int size = ajaxMsg.length;
		    	for(int i=0; i<size; i++) {
		    		service.delete(ajaxMsg[i]);
		    	}
		    	return "redirect:member";
		    }
		   
		//회원 등록
			@RequestMapping(value = "/admin/AdminSignUp", method = RequestMethod.POST)
			public void postSignUp(MemberVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {

		
				int result = service.AdminSignUp(vo);
				
				if (result == 1) 

					response.setContentType("text/html;charset=utf-8");
					PrintWriter out = response.getWriter();
					
					out.println("<script>location.href='main';</script>");

				}
		
		//회원 검색
		  @RequestMapping(value = "/admin/memberSearch", method = RequestMethod.GET)
		  	public String memberSearchView(MemberVO vo, HttpServletRequest request, Model model) throws Exception {
		  		
		  		String search = request.getParameter("search");
		  		String keyword = request.getParameter("keyword");
		  		
		  		HashMap<String, String> searchMap = new HashMap<String, String>();
				searchMap.put("search", search);
				searchMap.put("keyword", keyword);
				
		  		int totalCount = service.memberSearchTotalCount(searchMap);
		  		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		  		
		  		PagingVO paging = new PagingVO();
		  		paging.setPageNo(page);
		  		paging.setPageSize(10);
		  		paging.setTotalCount(totalCount);
		  		
		  		page = (page - 1) * 10;
		  		
		  		HashMap<String, Object> map = new HashMap<String, Object>();
		  		map.put("Page", page);
		  		map.put("PageSize", paging.getPageSize());
		  		map.put("search", search);
		  		map.put("keyword", keyword);
		  		
		  		List<MemberVO> List = service.memberSearchList(map);
		  		
		  		model.addAttribute("memberList", List);
		  		model.addAttribute("Paging", paging);
		  		model.addAttribute("search", search);
		  		model.addAttribute("keyword", keyword);
		  		
		  		return "admin/member/memberlist";
		  	}	
		//회원 개인 문의내역
	
}
