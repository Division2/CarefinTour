package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.PackageVO;

@Service
public interface PackageService {
	
	//관리자관련 페이지 시작 
	//패키지 작성
	public void PackageWrite(PackageVO packageVo) throws Exception;
	
	//여행패키지 출력
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception;
	
	//여행패키지 총 갯수
	public int AdminPackageTotalCount() throws Exception;
	
	//여행패키지 상세페이지 출력
	public PackageVO ProductPackageDetail(int pid) throws Exception;
	
	//여행패키지 삭제
	public void ProductPackageDelete(int ajaxMsg) throws Exception;
	
	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	public String ProductPackageFileName(int pid) throws Exception;
	
	//여행패키지 수정
	public void ProductPackageModify(PackageVO vo) throws Exception;
	
	//여행패키지 상품 검색
	public List<PackageVO> ProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//여행패키지 상품 검색 총 갯수
	public int getProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
	
	//메인관련 페이지 시작
	//메인 여행패키지 상품 검색
	public List<PackageVO> MainProductPackageSearch(HashMap<String, Object> map) throws Exception;
	
	//메인 여행패키지 상품 검색 총 갯수
	public int getMainProductPackageSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
}
