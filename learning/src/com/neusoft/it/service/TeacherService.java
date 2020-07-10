package com.neusoft.it.service;

import org.apache.ibatis.annotations.Param;

import com.neusoft.it.entity.teacher;


public interface TeacherService extends BaseService<teacher> {

//	teacher login(String uname, String upwd);
	public teacher login(String uname,String upwd);
	public teacher findByName(String tName);

}

