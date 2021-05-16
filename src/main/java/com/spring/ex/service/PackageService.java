package com.spring.ex.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.PackageVO;

@Service
public interface PackageService {
	//패키지 작성
	public int PackageWrite(PackageVO vo, MultipartHttpServletRequest mpRequest) throws Exception;
}
