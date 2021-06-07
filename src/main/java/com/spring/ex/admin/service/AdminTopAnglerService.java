package com.spring.ex.admin.service;

import org.springframework.stereotype.Service;

import com.spring.ex.vo.TopAnlgerVO;

@Service
public interface AdminTopAnglerService {
	
	//탑앵글러 등록
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception;
	
	//탑앵글러 삭제
	public void TopAnglerDelete(int tId) throws Exception;
	
	//탑앵글러 파일 이름 검색
	public String TopAnglerFileName(int tId) throws Exception;
}