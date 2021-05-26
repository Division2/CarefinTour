package com.spring.ex.admin.dao;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.SuppliesInfoVO;
import com.spring.ex.vo.VisaInfoVO;

@Repository
public interface AdminTravelInfoDAO {
	
	//비자 정보 등록
	public int visaInfoWrite(VisaInfoVO vo) throws Exception;
	
	//비자 정보 조회
	public VisaInfoVO visaInfoView() throws Exception;
	
	//여행준비물 등록
	public int suppliesInfoWrite(SuppliesInfoVO vo) throws Exception;
	
	//여행준비물 조회
	public SuppliesInfoVO suppliesInfoView() throws Exception;
}