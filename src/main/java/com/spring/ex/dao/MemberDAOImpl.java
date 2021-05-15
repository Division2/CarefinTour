package com.spring.ex.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ex.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.spring.ex.MemberMapper";
	
	//전체 멤버 출력
	@Override
	public List<MemberVO> memberList() throws Exception {
		return null;
	}

	//회원 로그인
	@Override
	public MemberVO Login(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".MemberLogin", vo);
	}
	
	//회원 로그인 시 lastDate 갱신
	@Override
	public int LoginDateRenewal(MemberVO vo) throws Exception {
		return sqlSession.update(namespace + ".MemberLoginDateLog", vo);
	}
	
	//회원가입
	@Override
	public int SignUp(MemberVO vo) throws Exception {
		return sqlSession.insert(namespace + ".MemberSignUp", vo);
	}
	
	//회원가입 시 아이디 중복확인
	@Override
	public MemberVO IDCheck(MemberVO vo) throws Exception {
		return sqlSession.selectOne(namespace + ".IDCheck", vo);
	}
	
	//회원정보 수정
	@Override
	public void MemberInfoUpdate(MemberVO vo) throws Exception {
		sqlSession.update(namespace+".MemberInfoUpdate", vo); 
		System.out.println(sqlSession);
	}
	//회원탈퇴
	@Override
	public void MemberDelete(MemberVO vo) throws Exception {
		sqlSession.delete(namespace+".MemberDelete", vo);
	}	
	
	// 패스워드 체크
	@Override
	public int MemberPassChk(MemberVO vo) throws Exception {
		int result = sqlSession.selectOne(namespace + ".MemberPassChk", vo);
		return result;
	}
}