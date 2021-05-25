 package com.spring.ex.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.service.PackageService;
import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.PagingVO;
import com.spring.ex.vo.TravelPhotoVO;

@Controller
public class BannerController {
	
	
	@Inject
	PackageService service;
	
}