package com.neusoft.it.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.it.dao.EnrollDao;

import com.neusoft.it.entity.enroll;
import com.neusoft.it.service.BaseService;
import com.neusoft.it.service.EnrollService;

@Service("enrollService")
public class EnrollServiceImpl extends BaseServiceImpl<enroll> implements EnrollService {

	@Autowired
	private EnrollDao dao;


}
