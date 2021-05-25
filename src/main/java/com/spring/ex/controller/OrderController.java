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

import com.spring.ex.service.OrderService;
import com.spring.ex.vo.OrderVO;
import com.spring.ex.vo.PagingVO;

@Controller
public class OrderController {

	@Inject OrderService service;
	
	//관리자 예약 내역 출력
	@RequestMapping(value = "/admin/order", method = RequestMethod.GET)
	public String MyPageOrderList(HttpServletRequest request, Model model) throws Exception {
			
		int totalCount = service.OrderTotalCount();
		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
		
		PagingVO paging = new PagingVO();
		paging.setPageNo(page);
		paging.setPageSize(10);
		paging.setTotalCount(totalCount);
		
		page = (page - 1) * 10;
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("Page", page);
		map.put("PageSize", paging.getPageSize());
		
		List<OrderVO> AdminOrderList = service.AdminOrderList(map);
		
		model.addAttribute("AdminOrderList", AdminOrderList);
		model.addAttribute("Paging", paging);
		
		return "admin/order/orderlist";
	}
	
	//관리자 예약내역 선택삭제
    @RequestMapping(value = "/admin/OrderDelete")
    public String OrderDelete(HttpServletRequest request) throws Exception {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.OrderDelete(ajaxMsg[i]);
        }
        return "redirect:order";
    }
    
    //관리자 예약내역 작성
  	@RequestMapping(value = "/admin/addorder", method = RequestMethod.POST)
  	public void Write(OrderVO vo, HttpServletRequest request, HttpServletResponse response) throws Exception {
  		
  		int result = service.OrderWrite(vo);
  		
  		if (result == 1) {
  			response.setContentType("text/html;charset=utf-8");
  			PrintWriter out = response.getWriter();
  			
  			out.println("<script>location.href='order'</script>");
  			out.close();
  		}
  	}
    
    //관리자 예약내역 검색
  	@RequestMapping(value = "/admin/orderSearch", method = RequestMethod.GET)
  	public String NoticeSearchView(OrderVO vo, HttpServletRequest request, Model model) throws Exception {
  		
  		String userId = request.getParameter("userId");
  		int totalCount = service.OrderSearchTotalCount(userId);
  		int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
  		
  		PagingVO paging = new PagingVO();
  		paging.setPageNo(page);
  		paging.setPageSize(10);
  		paging.setTotalCount(totalCount);
  		
  		page = (page - 1) * 10;
  		
  		HashMap<String, Object> map = new HashMap<String, Object>();
  		map.put("Page", page);
  		map.put("PageSize", paging.getPageSize());
  		map.put("userId", userId);
  		
  		List<OrderVO> List = service.OrderSearchList(map);
  		
  		model.addAttribute("AdminOrderList", List);
  		model.addAttribute("Paging", paging);
  		model.addAttribute("userId", userId);
  		
  		return "admin/order/orderlist";
  	}

}
