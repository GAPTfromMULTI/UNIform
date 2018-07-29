package com.common.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

public class SubmitFormDAOImpl implements SubmitFormDAO {
	
private static SubmitFormDAO instance;

    @Autowired
    private SqlSession sql;

	@Override
	public void insertForm(FormInfo formInfo) throws Exception {
		// TODO Auto-generated method stub
		sql.insert("query.insertForm", formInfo);
	}
}
