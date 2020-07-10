package com.neusoft.it.dao;

import org.apache.ibatis.annotations.Param;

import com.neusoft.it.entity.administrator;

public interface AdministratorDao {

	public administrator login(@Param("id")Integer id,@Param("pwd")String upwd);

}
