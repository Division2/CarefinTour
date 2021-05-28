package com.spring.ex.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public interface AdminMemberDAO {
	//회원정보 상세보기
	public MemberVO ViewMember(int aid) throws Exception;
	
	//회원정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;
	
	//회원정보 선택삭제
	public void delete(String aid) throws Exception;
	
	//회원 등록
	public int AdminSignUp(MemberVO vo) throws Exception;
	
	//회원 검색
	public List<MemberVO> memberSearchList(HashMap<String, Object> map) throws Exception;
	
	//회원 검색 게시물 총 갯수
	public int memberSearchTotalCount(HashMap<String, String> searchMap) throws Exception;
	
	//회원정보리스트 출력
	public List<MemberVO> getMemberList(HashMap<String, Integer> map) throws Exception;
	
	//공지사항 게시물 총 갯수
	public int MemberTotalCount() throws Exception;
}
