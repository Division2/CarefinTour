package com.spring.ex.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ex.service.AdminServiceCenterService;
import com.spring.ex.vo.FAQVO;
import com.spring.ex.vo.InquiryAnswerVO;
import com.spring.ex.vo.InquiryVO;
import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.NoticeBoardVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class AdminServiceCenterController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceCenterController.class);
	
	@Inject AdminServiceCenterService service;
	
	//공지사항 작성
	@RequestMapping(value = "/admin/noticeWrite", method = RequestMethod.POST)
	public void Write(NoticeBoardVO vo, HttpServletResponse response) throws Exception {
		
		logger.info("Checked : " + vo.getImportant());
		
		int result = service.NoticeWrite(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='notice'</script>");
			out.close();
		}
	}
	
	//공지사항 출력	
	@RequestMapping(value = "/admin/notice", method = RequestMethod.GET)
	public String NoticeView(HttpServletRequest request, Model model) throws Exception {

		int totalCount = service.NoticeTotalCount();
		int importantCount = service.ImportantNoticeTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount - importantCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<NoticeBoardVO> List = service.NoticeList(map);

		model.addAttribute("NoticeList", List);
		model.addAttribute("Paging", paging);
		
		return "admin/customer/notice";
	}
	
	//공지사항 검색
	@RequestMapping(value = "/admin/noticeSearch", method = RequestMethod.GET)
	public String NoticeSearchView(NoticeBoardVO vo, HttpServletRequest request, Model model) throws Exception {
		
		String title = request.getParameter("title");
		int totalCount = service.NoticeSearchTotalCount(title);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("title", title);
		
		List<NoticeBoardVO> List = service.NoticeSearchList(map);
		
		//페이지를 담아줘야행
		model.addAttribute("NoticeList", List);
		model.addAttribute("Paging", paging);
		model.addAttribute("Title", title);
		
		return "admin/customer/notice";
	}
	
	//공지사항 게시글 내용
	@RequestMapping(value = "/admin/noticeView", method = RequestMethod.GET)
	public String NoticeBoardView(NoticeBoardVO vo, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		NoticeBoardVO content = service.NoticeBoardView(nId);
		
		if (content == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		model.addAttribute("content", content);
		
		return "admin/customer/noticeView";
	}
	
	//공지사항 수정
	@RequestMapping(value = "/admin/noticeModify", method = RequestMethod.POST)
	public void Modify(NoticeBoardVO vo, HttpServletResponse response) throws Exception {
		
		int result = service.NoticeModify(vo);
		
		if (result == 1) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<script>location.href='notice'</script>");
			out.close();
		}
	}
	
	//공지사항 수정 내용
	@RequestMapping(value = "/admin/noticeModifyView", method = RequestMethod.GET)
	public String ModifyView(NoticeBoardVO vo, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		NoticeBoardVO content = service.NoticeBoardView(nId);
		
		if (content == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('존재하지 않는 게시글입니다!');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
		}
		
		model.addAttribute("content", content);
		
		return "admin/customer/noticeModify";
	}
	
	//공지사항 삭제
	@RequestMapping(value = "/admin/noticeDelete", method = RequestMethod.GET)
	public String NoticeDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int nId = Integer.parseInt(request.getParameter("nId"));
		
		service.NoticeDelete(nId);
		
		return "redirect:notice";
	}
	
	//게시물 선택삭제
    @RequestMapping(value = "/admin/SelectDelete")
    public String SelectDelete(HttpServletRequest request) throws Exception {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.SelectDelete(ajaxMsg[i]);
        }
        return "redirect:notice";
    }
    
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
	    	
	        model.addAttribute("mDetail", memberVO);
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
		
    //---------------------------------------------------------1:1문의 시작------------------------------------------------------------
    
  //1:1 문의 작성
  	@RequestMapping(value = "/admin/inquiryWrite", method = RequestMethod.POST)
  	public void Write(InquiryVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {

  		vo.setCategory(request.getParameter("Category"));
  		vo.setUserId(request.getParameter("UserID"));
  		
  		int result = service.InquiryWrite(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='inquiry'</script>");
  			out.close();
  		}
  	}
  	
  	//1:1 문의 답변 작성
  	@RequestMapping(value = "/admin/inquiryAnswerWrite", method = RequestMethod.POST)
  	public @ResponseBody int AnswerWrite(InquiryAnswerVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		
  		int result = service.InquiryAnswerWrite(vo);
  		service.InquiryStatusUpdate(vo.getiId()); 		

		return result;
  	}
  	
  	//1:1 문의 출력
  	@RequestMapping(value = "/admin/inquiry", method = RequestMethod.GET)
  	public String InquiryView(HttpServletRequest request, Model model) throws Exception {
  		
  		int totalCount = service.InquiryTotalCount();
  		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
  		
  		PagingVO paging = new PagingVO();
  		paging.setPageNo(page);
  		paging.setPageSize(10);
  		paging.setTotalCount(totalCount);
  		
  		page = (page - 1) * 10;
  		
  		HashMap<String, Integer> map = new HashMap<String, Integer>();
  		map.put("Page", page);
  		map.put("PageSize", paging.getPageSize());
  		
  		List<InquiryVO> List = service.InquiryList(map);
  		
  		model.addAttribute("InquiryList", List);
  		model.addAttribute("Paging", paging);
  		
  		return "admin/customer/inquiry";
  	}
  	
  	
  	//1:1 문의 검색
  	@RequestMapping(value = "/admin/inquirySearch", method = RequestMethod.GET)
  	public String NoticeSearchView(InquiryVO vo, HttpServletRequest request, Model model) throws Exception {
  		
  		String search = request.getParameter("search");
  		String keyword = request.getParameter("keyword");
  		
  		HashMap<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("search", search);
		searchMap.put("keyword", keyword);
		
  		int totalCount = service.InquirySearchTotalCount(searchMap);
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
  		
  		List<InquiryVO> List = service.InquirySearchList(map);
  		
  		model.addAttribute("InquiryList", List);
  		model.addAttribute("Paging", paging);
  		model.addAttribute("search", search);
  		model.addAttribute("keyword", keyword);
  		
  		return "admin/customer/inquiry";
  	}
  	
  	//1:1 문의 게시글, 답변 문의 게시글 내용
  	@RequestMapping(value = "/admin/inquiryView", method = RequestMethod.GET)
  	public String InquiryBoardView(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		
  		int iId = Integer.parseInt(request.getParameter("iId"));
  		
  		InquiryVO content = service.InquiryBoardView(iId);
  		InquiryAnswerVO answerContent = service.InquiryAnswerBoardView(iId);
  		
  		if (content == null && answerContent == null) {
  			response.setContentType("text/html;charset=UTF-8");
  			PrintWriter out = response.getWriter();
  			out.println("<script>");
  			out.println("alert('존재하지 않는 게시글입니다!');");
  			out.println("history.back();");
  			out.println("</script>");
  			out.close();
  		}
  		model.addAttribute("content", content);
  		model.addAttribute("answerContent", answerContent);
  		
  		return "admin/customer/inquiryView";
  	}
  	
  	//1:1 문의 답변 수정
  	@RequestMapping(value = "/admin/inquiryModify", method = RequestMethod.POST)
  	public void AnswerModify(InquiryAnswerVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		
  		int result = service.InquiryAnswerModify(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='inquiryView?iId=" + vo.getiId() + "'</script>");
  			out.close();
  		}
  	}
  	
  	//1:1 문의 답변 삭제
  	@RequestMapping(value = "/admin/inquiryDelete", method = RequestMethod.GET)
  	public String AnswerDelete(HttpServletRequest request) throws Exception {
  		
  		HttpSession session = request.getSession();
  		int iId = Integer.parseInt(request.getParameter("iId"));
  		
  		if (session.getAttribute("auth").equals("Admin")) {
  			int result = service.InquiryAnswerDelete(iId);
  			service.InquiryStatusUpdate2(iId);
  			
  			System.out.println("답변 삭제" + result);
  		}
  		
  		return "redirect:inquiryView?iId=" + iId;
  	}
  	
	//1:1 선택삭제
    @RequestMapping(value = "/admin/SelectDelete2")
    public String SelectDelete2(HttpServletRequest request) throws Exception {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.SelectDelete2(ajaxMsg[i]);
        }
        return "redirect:inquiry";
    }
    
    //-----------------------------------------------FAQ시작--------------------------------------------------
    //FAQ 작성
  	@RequestMapping(value = "/admin/faqWrite", method = RequestMethod.POST)
  	public void FAQWrite(FAQVO vo, HttpServletResponse response) throws Exception {

  		int result = service.FAQWrite(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='faq'</script>");
  			out.close();
  		}
  	}
  	
  	 //FAQ 카테고리 작성
  	@RequestMapping(value = "/admin/addcategory", method = RequestMethod.POST)
  	public void CategoryWrite(FAQVO vo, HttpServletResponse response) throws Exception {

  		int result = service.CategoryWrite(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='faq'</script>");
  			out.close();
  		}
  	}
  	
    //FAQ 카테고리 보여주기 내용
  	@RequestMapping(value = "/admin/faqWrite", method = RequestMethod.GET)
	public String CategoryView(@RequestParam(value="category", required=false) String category, HttpServletRequest request, Model model,HttpSession session) throws Exception {
		
		List<Map<String, Object>> Category =  service.FAQCategory();
		
		model.addAttribute("Category", Category);
		
		return "admin/customer/faqWrite";
	}
  
  	//FAQ 내용
  	@RequestMapping(value = "/admin/faqModify", method = RequestMethod.GET)
  	public String FAQBoardView(FAQVO vo, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		
  		int fId = Integer.parseInt(request.getParameter("fId"));
  		
  		FAQVO content = service.FAQBoardView(fId);
  		
  		if (content == null) {
  			response.setContentType("text/html;charset=UTF-8");
  			PrintWriter out = response.getWriter();
  			out.println("<script>");
  			out.println("alert('존재하지 않는 게시글입니다!');");
  			out.println("history.back();");
  			out.println("</script>");
  			out.close();
  		}
  		model.addAttribute("content", content);
  		
  		return "admin/customer/faqModify";
  	}
  	
  	
    //FAQ 수정
  	@RequestMapping(value = "/admin/faqModify", method = RequestMethod.POST)
  	public void FAQModify(FAQVO vo, HttpServletResponse response) throws Exception {
  		
  		int result = service.FAQModify(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='faq'</script>");
  			out.close();
  		}
  	}
  	
    //FAQ 선택삭제
    @RequestMapping(value = "/admin/FAQDelete")
    public String FAQDelete(HttpServletRequest request) throws Exception {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.FAQDelete(ajaxMsg[i]);
        }
        return "redirect:faq";
    }
    
    //FAQ 자주 찾는 질문
	@RequestMapping(value = "/admin/faq", method = RequestMethod.GET)
	public String FAQAllView(@RequestParam(value="category", required=false) String category, HttpServletRequest request, Model model) throws Exception {
		
		String faqCategory = request.getParameter("Category");
		System.out.println(faqCategory);
		int totalCount = service.FAQTotalCount(faqCategory);
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		List<Map<String, Object>> Category =  service.FAQCategory();
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		map.put("Category", faqCategory);
		
		List<FAQVO> faqList =  service.FAQView(map);
		
		model.addAttribute("faqList", faqList);
		model.addAttribute("Paging", paging);
		model.addAttribute("Category", Category);
		
		return "admin/customer/faq";
	}

}
