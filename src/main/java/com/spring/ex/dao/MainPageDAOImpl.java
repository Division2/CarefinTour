package com.spring.ex.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MainPageDAOImpl implements MainPageDAO {
	@Inject SqlSession sqlSession;
}