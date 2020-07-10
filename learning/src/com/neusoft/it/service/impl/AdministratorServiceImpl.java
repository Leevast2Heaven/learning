package com.neusoft.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.neusoft.it.dao.AdministratorDao;
import com.neusoft.it.entity.administrator;
import com.neusoft.it.service.AdministratorService;

@Service("administratorService")
public class AdministratorServiceImpl extends BaseServiceImpl<administrator> implements AdministratorService {
	@Autowired
	private AdministratorDao dao;

	@Override
	public administrator login(Integer id, String upwd) {
		// TODO Auto-generated method stub
		return dao.login(id, upwd);
	}
}
