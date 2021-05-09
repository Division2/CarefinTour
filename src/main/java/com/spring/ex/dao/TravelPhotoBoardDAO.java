package com.spring.ex.dao;

import java.util.List;
import java.util.Map;

import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoBoardDAO {
 //여행 게시판 리스트	
	public List<TravelPhotoVO> list() throws Exception;
 //여행 게시판 입력	
	public void write(Map<String, Object> map) throws Exception;
 //게시판 읽기(아직 안만듬)	
	public TravelPhotoVO read(int prid) throws Exception;
 
 

}
