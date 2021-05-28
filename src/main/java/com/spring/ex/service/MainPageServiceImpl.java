package com.spring.ex.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.ex.dao.MainPageDAO;

@Service
public class MainPageServiceImpl implements MainPageService {
	@Inject MainPageDAO dao;
}
