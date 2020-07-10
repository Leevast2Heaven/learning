package com.neusoft.it.dao;

import org.apache.ibatis.annotations.Param;

import com.neusoft.it.entity.custom;

public interface CustomDao extends BaseDao<custom>{
	public custom login(@Param("name")String uname,@Param("pwd")String upwd);
}
