package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.PackageVO;

@Repository
public interface PackageDAO {
	
	//관리자관련 페이지 시작 
	//패키지 입력	
	public void PackageWrite(PackageVO vo) throws Exception;
	
	//여행패키지 출력
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception;
	
	//여행패키지 총 갯수
	public int AdminPackageTotalCount() throws Exception;
	
	//여행패키지 상세페이지 출력
	public PackageVO ProductPackageDetail(int pid) throws Exception;
	
	//여행패키지 삭제
	public void ProductPackageDelete(int pid) throws Exception;

	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	public String ProductPackageFileName(int pid) throws Exception;
	
	//여행패키지 수정
	public void ProductPackageModify(PackageVO vo) throws Exception;
	
	//관리자 여행패키지 상품 검색
	public List<PackageVO> ProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//관리자 여행패키지 상품 검색 총 갯수
	public int getProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
	
}
