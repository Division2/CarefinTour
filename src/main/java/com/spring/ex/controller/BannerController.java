 package com.spring.ex.controller;

 import javax.inject.Inject;

import org.springframework.stereotype.Controller;

import com.spring.ex.service.PackageService;

@Controller
public class BannerController {
	
	
	@Inject
	PackageService service;
	
}