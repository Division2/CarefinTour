package com.spring.ex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.ex.dao.TravelPhotoBoardDAO;
import com.spring.ex.util.FileUtils;
import com.spring.ex.vo.TopAnlgerVO;
import com.spring.ex.vo.TravelPhotoVO;

@Service
public class TravelPhotoServiceImpl implements TravelPhotoService {
	
	@Resource(name = "fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private TravelPhotoBoardDAO dao;
	
	//게시물 목록
	@Override
	public List<TravelPhotoVO> list(HashMap<String, Integer> map)throws Exception {
		return dao.list(map);
	}
	
	//마이게시물 목록
	@Override
	public List<TravelPhotoVO> mylist(HashMap<String, Integer> map)throws Exception {
		return dao.mylist(map);
	}
	
	//게시물 작성
	@Override
	public int addphoto(TravelPhotoVO travelPhotoVO, MultipartHttpServletRequest mpRequest) throws Exception {
		
		List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(travelPhotoVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.write(list.get(i)); 
		}
		return size;
	}
	
	//게시글 조회수
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public TravelPhotoVO read(int prid) throws Exception {
		dao.boardHit(prid);
		
		return dao.read(prid);
	}
	
	//게시물 총 갯수
	@Override
	public int PhotoTotalCount() throws Exception {
		return dao.PhotoTotalCount();
	}
	
	//파일 조회
	@Override
	public List<Map<String, Object>> selectFileList(int prid) throws Exception {
		return dao.selectFileList(prid);
	}
	
	//게시글 수정
	@Override
	public void update(TravelPhotoVO travelPhotoVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception {
		
		dao.update(travelPhotoVO);
		
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(travelPhotoVO, files, fileNames, mpRequest);
		Map<String, Object> tempMap = null;
		int size = list.size();
		for(int i = 0; i < size; i++) {
			tempMap = list.get(i);
			
			dao.updateFile(tempMap);
		}
	}
	
	//게시물 삭제
	@Override
	public void delete(int prid) throws Exception {
		
		dao.delete(prid);
	}
	
	//탑 앵글러 출력
	@Override
	public List<TopAnlgerVO> topanglerView(HashMap<String, Integer> map)throws Exception {
		return dao.topanglerView(map);
	}
	
	//탑앵글러 등록 요청
	@Override
	public int topanglerWrite(TopAnlgerVO topAnlgerVO, MultipartHttpServletRequest mpRequest) throws Exception {
		List<Map<String,Object>> list = fileUtils.parseInsertFishFileInfo(topAnlgerVO, mpRequest);
		
		int size = list.size();
		for(int i = 0; i < size; i++){ 
			dao.topanglerWrite(list.get(i)); 
		}
		return size;
	}
	
	//탑앵글러 총 갯수
	@Override
	public int TopAnglerTotalCount() throws Exception {
		return dao.TopAnglerTotalCount();
	}
}