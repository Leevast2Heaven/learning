package com.neusoft.it.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.neusoft.it.dao.BaseDao;
import com.neusoft.it.service.BaseService;

public class BaseServiceImpl<T> implements BaseService<T>{
	@Autowired
	private BaseDao<T> dao=null;
	
	public void setDao(BaseDao<T> dao) {
		this.dao = dao;
	}

	@Override
	public void add(T o) {
		// TODO Auto-generated method stub
		dao.insert(o);
	}

	@Override
	public int edit(T o) {
		// TODO Auto-generated method stub
		return dao.update(o);
	}

	@Override
	public int remove(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public T findById(int id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	@Override
	public List findAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}
	@Override
	public List<T> findList(Map<String, Object> map) {
		return dao.selectList(map);
	}

	@Override
	public T findOne(Map<String, Object> map) {
		return dao.selectOne(map);
	}
	

}
