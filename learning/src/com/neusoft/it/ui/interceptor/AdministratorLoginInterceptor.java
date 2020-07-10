package com.neusoft.it.ui.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
//管理员截器,检查session如果发现没有登录过，就让它跳到登录页，不放行
public class AdministratorLoginInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object arg2) throws Exception {
		// 进来的时候做些事情
				//是否登录
				if(req.getSession().getAttribute("adm")==null){//与controller中的setAttribute里的名adm要一致
					resp.sendRedirect("/learning/administrator/login");//与controller中客户登录路径一致
					return false;
				}
				return true;
	}

}
