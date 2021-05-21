package com.spring.ex.service;

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
}
