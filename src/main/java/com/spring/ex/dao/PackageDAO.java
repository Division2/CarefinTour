package com.spring.ex.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface PackageDAO {
	
	//패키지 입력	
	public int PackageWrite(Map<String, Object> map) throws Exception;

}
