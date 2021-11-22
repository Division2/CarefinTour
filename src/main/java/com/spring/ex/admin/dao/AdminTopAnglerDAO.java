package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.TopAnlgerVO;

@Repository
public interface AdminTopAnglerDAO {
	
	//탑 앵글러 등록
	public void TopAnglerWrite(TopAnlgerVO vo) throws Exception;
	
	//탑 앵글러 삭제
	public void TopAnglerDelete(int tId) throws Exception;
	
	//탑 앵글러 파일 이름 검색
	public String TopAnglerFileName(int tId) throws Exception;
	
	//탑 앵글러 출력
	public List<TopAnlgerVO> TopAnglerView(HashMap<String, Integer> map) throws Exception;

	//탑 앵글러 총 갯수
	public int TopAnglerTotalCount() throws Exception;
	
	//탑 앵글러 요청 상태 전환(0 <-> 1) / 0 : 미등록, 1 : 등록
	public int TopAnglerStatusChange(TopAnlgerVO vo) throws Exception;
}