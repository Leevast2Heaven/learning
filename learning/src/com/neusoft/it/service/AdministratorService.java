package com.neusoft.it.service;

import com.neusoft.it.entity.administrator;



public interface AdministratorService extends BaseService<administrator> {
	administrator login(Integer id, String upwd);

}
