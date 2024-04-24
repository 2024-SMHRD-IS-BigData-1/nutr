package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.sqlSessionManager;

public class BoardDAO {

	SqlSessionFactory sqlSessionFactory =  sqlSessionManager.getSqlSession();
	
	//글작성 메소드
	public int insertBoard(Board board) {

		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("com.smhrd.db.BoardMapper.board", board);
		session.close();
	
		return cnt;
		
		
		
		
		
	}

	
	
	
	
}
