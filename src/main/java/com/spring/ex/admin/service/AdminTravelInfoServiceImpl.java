package com.spring.ex.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.admin.dao.AdminTravelInfoDAO;
import com.spring.ex.vo.SuppliesInfoVO;
import com.spring.ex.vo.VisaInfoVO;

@Service
public class AdminTravelInfoServiceImpl implements AdminTravelInfoService {
	
	@Inject private AdminTravelInfoDAO dao;

	//비자 정보 등록
	@Override
	public int visaInfoWrite(VisaInfoVO vo) throws Exception {
		return dao.visaInfoWrite(vo);
	}

	//비자 정보 조회
	@Override
	public VisaInfoVO visaInfoView() throws Exception {
		return dao.visaInfoView();
	}

	//여행준비물 등록
	@Override
	public int suppliesInfoWrite(SuppliesInfoVO vo) throws Exception {
		return dao.suppliesInfoWrite(vo);
	}

	//여행준비물 조회
	@Override
	public SuppliesInfoVO suppliesInfoView() throws Exception {
		return dao.suppliesInfoView();
	}
}