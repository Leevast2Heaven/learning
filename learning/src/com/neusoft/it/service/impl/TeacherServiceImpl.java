package com.neusoft.it.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.it.dao.TeacherDao;
import com.neusoft.it.entity.leave;
import com.neusoft.it.entity.teacher;
import com.neusoft.it.service.TeacherService;
@Service("teacherService")
public class TeacherServiceImpl extends BaseServiceImpl<teacher> implements TeacherService {
    @Autowired
	private TeacherDao dao;
	@Override
	public teacher login(String uname, String upwd) {
		// TODO Auto-generated method stub
		return dao.login(uname, upwd);
	}
   /* @Autowired
	private TeacherDao dao;*/
	@Override
	public teacher findByName(String tName) {
		// TODO Auto-generated method stub
		return dao.findByName(tName);
	}

/*	@Override
	public teacher selectByName(String uname) {
		// TODO Auto-generated method stub
		return dao.selectByName(uname);
	}
*/
//	public teacher login(String tname, String tpwd) {
//		// TODO Auto-generated method stub
//		return dao.login(tname,tpwd);
//	}

	

}
