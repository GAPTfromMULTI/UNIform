package com.common.dao;

import java.sql.SQLException;

import java.util.Map;

public interface SubmitFormDAO {
	void confirmForm(FormInfo formInfo) throws Exception;
}
