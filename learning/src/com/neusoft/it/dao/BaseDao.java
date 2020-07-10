package com.neusoft.it.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.it.entity.teacher;



public interface BaseDao<T>{
	public void insert(@Param("o")T  o);
	public int update(@Param("o")T  o);
	public int delete(@Param("id")int id); 
	public T selectById(@Param("id")int id);//根据id查找详细信息
	public List<T>selectAll();
//	List<HashMap<Object, Object>> selectOne(@Param("name") String name,@Param("id")int id,@Param("key")String key);
//  List<HashMap<Object, Object>> selectAll(@Param("name") String name);
//  List<HashMap<Object, Object>> findByExample(@Param("name") String name,@Param("params")Object []params);
//  public int insert(@Param("name")String name,@Param("params") Object params);
//  public void update(@Param("id")int id,@Param("name")String name,@Param("params")Object []params,@Param("key")String key);
//  public void delete(@Param("name")String lowerCase,@Param("id")int id,@Param("key")String key);
	public List<T> selectList(Map<String,Object> map);
	public T selectOne(Map<String,Object> map);
	
}
