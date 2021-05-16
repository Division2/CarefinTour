package com.spring.ex.service;

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
	public int PackageWrite(PackageVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertPackageInfo(vo, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.PackageWrite(list.get(i)); 
		}
		return size;
	}
}
