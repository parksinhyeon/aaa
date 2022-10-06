package com.maius.app;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService{

	@Inject
	private DAO dao;
	
	@Override
	public HashMap<String, Object> selectTest() throws Exception {
		return dao.selectTest();
	}

}
