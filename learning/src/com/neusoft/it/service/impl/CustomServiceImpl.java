package com.neusoft.it.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.neusoft.it.dao.AttendDao;
import com.neusoft.it.dao.CustomDao;
import com.neusoft.it.entity.attend;
import com.neusoft.it.entity.custom;
import com.neusoft.it.entity.teacher;
import com.neusoft.it.service.CustomService;

@Service("customService")
public class CustomServiceImpl extends BaseServiceImpl<custom> implements CustomService {
	@Autowired
	private CustomDao dao;
  
	@Override
	public custom login(String uname, String upwd) {
		// TODO Auto-generated method stub
		return dao.login(uname, upwd);
	}

	
}
