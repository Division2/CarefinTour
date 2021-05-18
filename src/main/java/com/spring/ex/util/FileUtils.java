package com.spring.ex.util;
import java.io.File;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.vo.PackageVO;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Component("fileUtils")
public class FileUtils {
	
	//여행정보 사진 저장소 경로
	private static final String filePath = "C:\\Users\\401ST000\\git\\CarefinTour\\src\\main\\webapp\\resources\\image\\photoreview_folder\\"; // 파일이 저장될 위치
	//탑앵글러 사진 저장소 경로
	private static final String filePath1 = "C:\\Users\\401ST000\\git\\CarefinTour\\src\\main\\webapp\\resources\\image\\topangler\\"; // 파일이 저장될 위치
	//패키지 사진 저장소 경로
	private static final String filePath2 = "C:\\Users\\401ST000\\git\\CarefinTour\\src\\main\\webapp\\resources\\image\\package\\"; // 파일이 저장될 위치
	
	//여행후기 사진 값 넣어주는 부분	
	public List<Map<String, Object>> parseInsertFileInfo(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		/*
			Iterator은 데이터들의 집합체? 에서 컬렉션으로부터 정보를 얻어올 수 있는 인터페이스입니다.
			List나 배열은 순차적으로 데이터의 접근이 가능하지만, Map등의 클래스들은 순차적으로 접근할 수가 없습니다.
			Iterator을 이용하여 Map에 있는 데이터들을 while문을 이용하여 순차적으로 접근합니다.
		*/
		
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int prid = travelPhotoVO.getPrid();
		String title = travelPhotoVO.getTitle();
		String content = travelPhotoVO.getContent();
		String name = travelPhotoVO.getName();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				
				listMap = new HashMap<String, Object>();
				listMap.put("prid", prid);
				listMap.put("o_file_name", originalFileName);
				listMap.put("s_file_name", storedFileName);
				listMap.put("title", title);
				listMap.put("content", content);
				listMap.put("name", name);
				listMap.put("file_size", multipartFile.getSize());
				
				list.add(listMap);
			}
		}
		return list;
	}
	
	
	//탑앵글러 사진 값 넣어주는 부분
	public List<Map<String, Object>> parseInsertFishFileInfo(TopAnlgerVO topAnlgerVO, MultipartHttpServletRequest mpRequest) throws Exception {

		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int tid = topAnlgerVO.getTid();
		String title = topAnlgerVO.getTitle();
		double fishsize = topAnlgerVO.getFishsize();
		String content = topAnlgerVO.getContent();
		String name = topAnlgerVO.getName();
		String fishname = topAnlgerVO.getFishname();
		
		
		File file = new File(filePath1);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				
				file = new File(filePath1 + storedFileName);
				multipartFile.transferTo(file);
				
				listMap = new HashMap<String, Object>();
				listMap.put("tid", tid);
				listMap.put("o_file_fish", originalFileName);
				listMap.put("s_file_fish", storedFileName);
				listMap.put("title", title);
				listMap.put("content", content);
				listMap.put("name", name);
				listMap.put("fishsize", fishsize);
				listMap.put("fishname", fishname);
				listMap.put("file_size", multipartFile.getSize());
				
				list.add(listMap);
			}
		}
		return list;
	}

	
	//여행 정보 사진 수정 할떄 넣어주는 부분
	public List<Map<String, Object>> parseUpdateFileInfo(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception { 
	
		Iterator<String> iterator = mpRequest.getFileNames();
		
		MultipartFile multipartFile = null; 
		String o_file_name = null; 
		String originalFileExtension = null; 
		String s_file_name = null; 
		
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null; 
		
		int prid = travelPhotoVO.getPrid();
		
		while(iterator.hasNext()){ 
			multipartFile = mpRequest.getFile(iterator.next()); 
			
			if(multipartFile.isEmpty() == false){ 
				o_file_name = multipartFile.getOriginalFilename(); 
				originalFileExtension = o_file_name.substring(o_file_name.lastIndexOf(".")); 
				s_file_name = getRandomString() + originalFileExtension; 
				multipartFile.transferTo(new File(filePath + s_file_name)); 
				
				listMap = new HashMap<String,Object>();
				listMap.put("prid", prid); 
				listMap.put("o_file_name", o_file_name);
				listMap.put("s_file_name", s_file_name); 
				listMap.put("file_size", multipartFile.getSize()); 
				
				list.add(listMap); 
			} 
		}
		
		if(files != null && fileNames != null){ 
			for(int i = 0; i<files.length; i++) {
				listMap = new HashMap<String,Object>();
				listMap.put("prid", files[i]); 
				
				list.add(listMap); 
			}
		}
		return list; 
	}
	
	//패키지 사진 값 넣어주는 부분	
		public List<Map<String, Object>> parseInsertPackageInfo(PackageVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
			
			Iterator<String> iterator = mpRequest.getFileNames();
			
			MultipartFile multipartFile = null;
			String originalFileName = null;
			String originalFileExtension = null;
			String storedFileName = null;
			
			List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
			Map<String, Object> listMap = null;
			
			int pid = vo.getPid();
			String productname = vo.getProductname();
			String theme = vo.getTheme();
			String area = vo.getArea();
			String travelcity = vo.getTarvelcity();
			Date startravelperiod = vo.getStartravelperiod();
			Date arrivaltravelperiod = vo.getArrivaltravelperiod();
			int reservationstatus = vo.getResrvationstatus();
			int maxreservationstatus = vo.getMaxresrvationstatus();
			int minreservation = vo.getMinreservation();
			int adultcount = vo.getAdultcount();
			int kidcount = vo.getKidcount();
			int smallkidcount = vo.getSmallkidcount();
			int adultprice = vo.getAdultprice();
			int kidprice = vo.getKidprice();
			int smallkidprice = vo.getSmallkidprice();
			String director = vo.getDirector();
			Object redate = vo.getRedate();
			int productcode = vo.getProductcode();
			int price = vo.getPrice();
			
			
			File file = new File(filePath2);
			if(file.exists() == false) {
				file.mkdirs();
			}
			
			while(iterator.hasNext()) {
				multipartFile = mpRequest.getFile(iterator.next());
				
				if(multipartFile.isEmpty() == false) {
					originalFileName = multipartFile.getOriginalFilename();
					originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
					storedFileName = getRandomString() + originalFileExtension;
					
					file = new File(filePath + storedFileName);
					multipartFile.transferTo(file);
					
					listMap = new HashMap<String, Object>();
					listMap.put("pid", pid);
					listMap.put("productname", productname);
					listMap.put("theme", theme);
					listMap.put("area", area);
					listMap.put("travelcity", travelcity);
					listMap.put("o_file_name", originalFileName);
					listMap.put("s_file_name", storedFileName);
					listMap.put("startravelperiod", startravelperiod);
					listMap.put("arrivaltravelperiod",arrivaltravelperiod );
					listMap.put("reservationstatus",reservationstatus );
					listMap.put("maxreservationstatus", maxreservationstatus);
					listMap.put("minreservation",minreservation );
					listMap.put("adultcount", adultcount);
					listMap.put("kidcount", kidcount);
					listMap.put("smallkidcount", smallkidcount);
					listMap.put("adultprice",adultprice );
					listMap.put("kidprice",kidprice );
					listMap.put("smallkidprice", smallkidprice);
					listMap.put("director", director);
					listMap.put("redate", redate);
					listMap.put("productcode", productcode);
					listMap.put("price", price);
			
					
					list.add(listMap);
				}
			}
			return list;
		}
	
	//사진값 랜덤 값으로 변환하는 부분
	public static String getRandomString() {
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
}