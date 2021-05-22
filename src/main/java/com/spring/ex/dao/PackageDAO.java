package com.spring.ex.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.TopAnlgerVO;

@Repository
public interface PackageDAO {
	
	//패키지 입력	
	public int PackageWrite(Map<String, Object> map) throws Exception;
	
	//여행패키지 출력
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception;
	
	//여행패키지 총 갯수
	public int AdminPackageTotalCount() throws Exception;
	
	//여행패키지 상세페이지 출력
	public PackageVO ProductPackageDetail(int pid) throws Exception;
	
	//여행패키지 삭제
	public void ProductPackageDelete(String pid) throws Exception;
	
	
}
