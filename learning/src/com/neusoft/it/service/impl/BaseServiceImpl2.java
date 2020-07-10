package com.neusoft.it.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.neusoft.it.dao.BaseDao;
import com.neusoft.it.service.BaseService;

public class BaseServiceImpl2<T,DAO extends BaseDao<T>> implements BaseService<T>{

	@Autowired
	protected DAO dao=null;
	
	@Override
	public void add(T o) {
		dao.insert(o);
	}

	@Override
	public int edit(T o) {
		return dao.update(o);
	}

	@Override
	public int remove(int id) {
		return dao.delete(id);
	}

	@Override
	public T findById(int id) {
		return dao.selectById(id);
	}

	@Override
	public List<T> findAll() {
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