package com.spring.ex.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.admin.dao.PackageDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.PackageVO;

@Service
public class PackageServiceImpl implements PackageService {
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private PackageDAO dao;
	
	//게시물 작성
	@Override
	public int PackageWrite(PackageVO packageVo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertPackageInfo(packageVo, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.PackageWrite(list.get(i)); 
		}
		return size;
	}

	//여행패키지 출력
	@Override
	public List<PackageVO> AdminPackageView(HashMap<String, Integer> map) throws Exception {
		return dao.AdminPackageView(map);
	}

	//여행패키지 총 갯수
	@Override
	public int AdminPackageTotalCount() throws Exception {
		return dao.AdminPackageTotalCount();
	}
	
	//여행패키지 상세페이지 출력
	@Override
	public PackageVO ProductPackageDetail(int pid) throws Exception {
		return dao.ProductPackageDetail(pid);
	}
	
	//여행패키지 삭제
	@Override
	public void ProductPackageDelete(String pid) throws Exception {
		dao.ProductPackageDelete(pid);
	}

	
	//여행패키지 파일이름 검색 - 파일 삭제하려고 사용
	@Override
	public PackageVO ProductPackageFileName(int pid) throws Exception {
		return dao.ProductPackageFileName(pid);
	}


}