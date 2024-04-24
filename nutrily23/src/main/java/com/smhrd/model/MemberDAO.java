package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.sqlSessionManager;

public class MemberDAO {

	
	SqlSessionFactory sqlSessionFactory =  sqlSessionManager.getSqlSession();
	
	// 회원가입 메소드
	public int join(Member member) {
		SqlSession session = sqlSessionFactory.openSession(true);	
		int cnt = session.insert("com.smhrd.db.MemberMapper.join", member);
		session.close();
		return cnt;

	}

	// 로그인 메소드
	public Member login(Member member) {
		SqlSession session = sqlSessionFactory.openSession(true);
		Member loginMember = session.selectOne("com.smhrd.db.MemberMapper.login", member);	
		session.close();
		
		return loginMember;
	}
	
	//전체회원보기
	public List<Member> allMember(){
		SqlSession session = sqlSessionFactory.openSession(true);
		List<Member> MemberList =  session.selectList("com.smhrd.db.MemberMapper.memberList");
		session.close();
		
		return MemberList;
		
	}

	
	

	
	
	
	
	
	
	
	
	
	
	
}
