package com.neusoft.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.neusoft.it.dao.CustomDao;
import com.neusoft.it.dao.LeaveDao;
import com.neusoft.it.dao.SubjectDao;
import com.neusoft.it.entity.custom;
import com.neusoft.it.entity.leave;
import com.neusoft.it.service.LeaveService;
@Service("leaveService")
public class LeaveServiceImpl extends BaseServiceImpl<leave> implements LeaveService{
	
}
