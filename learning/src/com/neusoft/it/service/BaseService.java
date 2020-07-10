package com.neusoft.it.service;

import java.util.List;
import java.util.Map;

import com.neusoft.it.entity.teacher;


public interface BaseService<T> {
	public void add(T o);
	public int edit(T o);
	public int remove(int id);
	public T findById(int id);
	public List<T> findAll();
	public List<T> findList(Map<String,Object> map);
	public T findOne(Map<String,Object> map);
}
