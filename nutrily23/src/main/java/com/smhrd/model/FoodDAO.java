package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.sqlSessionManager;

public class FoodDAO {

	
SqlSessionFactory sqlSessionFactory =  sqlSessionManager.getSqlSession();
	
	public Food foodSearch(Food foodSearch) {

		SqlSession session = sqlSessionFactory.openSession(true);	
		Food ResultFood = session.selectOne("com.smhrd.db.FoodMapper.searchFood", foodSearch);
		session.close();
		return ResultFood;
		
		
	}

	
	
	
	
	
}
