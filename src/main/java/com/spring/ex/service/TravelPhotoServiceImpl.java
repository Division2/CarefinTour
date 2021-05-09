package com.spring.ex.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.dao.TravelPhotoBoardDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelPhotoServiceImpl implements TravelPhotoService {
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private TravelPhotoBoardDAO dao;
	//게시물 목록
	@Override
	public List<TravelPhotoVO> list()throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}
	//게시물 작성
	@Override
	public void addphoto(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(travelPhotoVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.write(list.get(i)); 
		}
	}
	// 게시글 조회(아직 안만듬)
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		return dao.read(prid);
		
	}

	

}