package com.neusoft.it.dao;


import org.apache.ibatis.annotations.Param;


import com.neusoft.it.entity.teacher;

public interface TeacherDao extends BaseDao<teacher>{
	public teacher login(@Param("name")String uname,@Param("pwd")String upwd);
	/*public teacher selectByName(@Param("name")String uname);*/

	public teacher findByName(String tName);
}