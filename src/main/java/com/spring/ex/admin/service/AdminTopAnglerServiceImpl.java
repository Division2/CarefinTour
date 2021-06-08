package com.spring.ex.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminTopAnglerDAO;
import com.spring.ex.vo.TopAnlgerVO;

@Service
public class AdminTopAnglerServiceImpl implements AdminTopAnglerService {

	@Inject AdminTopAnglerDAO dao;
	
	//탑앵글러 등록
	@Override
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception {
		dao.TopAnglerWrite(vo);
	}
	
	//탑앵글러 삭제
	@Override
	public void TopAnglerDelete(int tId) throws Exception {
		dao.TopAnglerDelete(tId);
	}

	//탑앵글러 파일 이름 검색
	@Override
	public String TopAnglerFileName(int tId) throws Exception {
		return dao.TopAnglerFileName(tId);
	}
}