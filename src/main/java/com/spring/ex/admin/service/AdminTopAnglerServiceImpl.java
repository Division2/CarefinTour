package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminTopAnglerDAO;
import com.spring.ex.vo.TopAnlgerVO;

@Service
public class AdminTopAnglerServiceImpl implements AdminTopAnglerService {

	@Inject AdminTopAnglerDAO dao;
	
	//탑 앵글러 등록
	@Override
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception {
		dao.TopAnglerWrite(vo);
	}
	
	//탑 앵글러 삭제
	@Override
	public void TopAnglerDelete(int tId) throws Exception {
		dao.TopAnglerDelete(tId);
	}

	//탑 앵글러 파일 이름 검색
	@Override
	public String TopAnglerFileName(int tId) throws Exception {
		return dao.TopAnglerFileName(tId);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception {
		return dao.TopAnglerView(map);
	}

	//탑 앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return dao.TopAnglerTotalCount();
	}
	
	@Override
	//탑 앵글러 요청 상태 전환(0 <-> 1) / 0 : 미등록, 1 : 등록
	public int TopAnglerStatusChange(TopAnlgerVO vo) throws Exception {
		return dao.TopAnglerStatusChange(vo);
	}
}