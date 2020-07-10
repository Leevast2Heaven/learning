package com.neusoft.it.service;

import java.util.List;
import java.util.Map;

import com.neusoft.it.entity.custom;
import com.neusoft.it.entity.teacher;

public interface CustomService extends BaseService<custom> {

	public custom login(String uname, String upwd);

	public List<custom> findList(Map<String, Object> map);

}
