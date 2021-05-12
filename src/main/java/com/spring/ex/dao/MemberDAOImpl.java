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
	public MemberVO Login(MemberVO dto) throws Exception {
		return sqlSession.selectOne(namespace + ".MemberLogin", dto);
	}
	
	//회원 로그인 시 lastDate 갱신
	@Override
	public int LoginDateRenewal(MemberVO dto) throws Exception {
		return sqlSession.update(namespace + ".MemberLoginDateLog", dto);
	}
	
	//회원가입
	@Override
	public int SignUp(MemberVO dto) throws Exception {
		return sqlSession.insert(namespace + ".MemberSignUp", dto);
	}
	
	//회원가입 시 아이디 중복확인
	@Override
	public MemberVO IDCheck(MemberVO dto) throws Exception {
		return sqlSession.selectOne(namespace + ".IDCheck", dto);
	}
	
	//회원정보 수정
	@Override
	public void MemberInfoUpdate(MemberVO dto) throws Exception {
		sqlSession.update(namespace+".MemberInfoUpdate", dto); 
		System.out.println(sqlSession);
	}
	//회원탈퇴
	@Override
	public void memberDelete(MemberVO dto) throws Exception {
		sqlSession.delete(namespace+".memberDelete", dto);
	}	
}