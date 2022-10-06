package com.maius.app;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class DAOImpl implements DAO {
 
    @Inject
    private SqlSession sqlSession;
	@Override
	public HashMap<String, Object> selectTest() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("test.TESTSQL");
	}
    
  
}
