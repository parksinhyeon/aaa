package com.maius.app;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

public interface DAO {
	public HashMap<String,Object> selectTest() throws Exception;
}
