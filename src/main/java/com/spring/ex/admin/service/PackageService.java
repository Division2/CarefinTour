package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.PackageVO;

@Service
public interface PackageService {
	//패키지 작성
	public int PackageWrite(PackageVO packageVo, MultipartHttpServletRequest mpRequest) throws Exception;
	
	//여행패키지 출력
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception;
	
	//여행패키지 총 갯수
	public int AdminPackageTotalCount() throws Exception;
	
	//여행패키지 상세페이지 출력
	public PackageVO ProductPackageDetail(int pid) throws Exception;
	
	//여행패키지 삭제
	public void ProductPackageDelete(String pid) throws Exception;
	
	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	public PackageVO ProductPackageFileName(int pid) throws Exception;
}
