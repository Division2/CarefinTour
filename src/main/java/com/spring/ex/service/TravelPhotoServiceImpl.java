package com.spring.ex.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.TravelPhotoBoardDAO;

import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelPhotoServiceImpl implements TravelPhotoService {
	
	@Inject
	private TravelPhotoBoardDAO dao;

	@Override
	public List<TravelPhotoVO> list()throws Exception {
		// TODO Auto-generated method stub
		return dao.list();
	}
	//게시물 작성
	@Override
	public void addphoto(TravelPhotoVO travelPhotoVO) throws Exception {
		dao.write(travelPhotoVO);
	}
	// 게시글 조회
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		return dao.read(prid);
		
	}

}