package com.spring.ex.dao;

import java.util.List;

import com.spring.ex.vo.TravelPhotoVO;

public interface TravelPhotoBoardDAO {
	
	public List<TravelPhotoVO> list() throws Exception;
	
	public void write(TravelPhotoVO travelphotoVO) throws Exception;
	
	public TravelPhotoVO read(int prid) throws Exception;

}
