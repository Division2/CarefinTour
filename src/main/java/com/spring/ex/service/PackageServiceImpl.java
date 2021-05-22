package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.dao.PackageDAO;
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

	//여행패키지 삭제
	@Override
	public void ProductPackageDelete(String pid) throws Exception {
		dao.ProductPackageDelete(pid);
	}
}
