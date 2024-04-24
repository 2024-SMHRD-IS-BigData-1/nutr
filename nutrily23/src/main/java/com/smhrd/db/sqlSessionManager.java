package com.smhrd.db;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class sqlSessionManager {
	
	
	public static SqlSessionFactory sqlSessionFactory;

	   static {
	      String resource = "com/smhrd/db/mybatis-config.xml"; 
	      Reader reader;
	      try {
	         reader = Resources.getResourceAsReader(resource);
	         sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }
	   
	   
	   // DAO 에서 getSqlSession() 호출해서구현
	   public static SqlSessionFactory getSqlSession() {
	      return sqlSessionFactory;
	   }

}
