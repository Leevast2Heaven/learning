package com.neusoft.it.ui.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.neusoft.it.entity.enroll;
import com.neusoft.it.entity.subject;
import com.neusoft.it.entity.teacher;
import com.neusoft.it.service.EnrollService;
import com.neusoft.it.service.SubjectService;
import com.neusoft.it.service.TeacherService;





@RequestMapping("/teacher")
@Controller //注解
public class TeacherController {
	@Autowired
	private SubjectService subService;
	@Autowired
	private TeacherService service ;
	@Autowired
	private EnrollService enrService;
	@Autowired
	/*@Qualifier("teacherService")*/
	public void setService(TeacherService service) {
		this.service = service;
	}
	@RequestMapping("/index")
	public String index()
	{
		return "teacherindex";
	}
	//进入登录页面
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login()
	{
		return "tea_login";
	}
	
	//将form表单页面传入
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String logindo(String uname,String upwd,HttpSession session,Model mm)
	{
		teacher t=service.login(uname,upwd);
		if(t!=null){
			//放session，登陆信息可以持久保持下来
			session.setAttribute("tea", t);
			return "teacherindex";
		}
		mm.addAttribute("err","用户名或密码不符");//带点消息给界面
		return "tea_login";//登陆不成功就转发回页面，重新登陆	
	}
	//查看申请的课
	@RequestMapping(value="/subject",method=RequestMethod.GET)
	public String searchsubject(int teaId,Model m)
	{
		Map<String,Object> map=new HashMap<String,Object>();//条件
		map.put("teaId",teaId);
		List<subject> s= subService.findList(map);//从数据库查找明细信息，用于显示
		m.addAttribute("tes", s);//往model塞东西，就是带数据给jsp，可以通过EL表达式来获取${cmps}
		return "myclass";
	}
	//跳转到申请开课
	@RequestMapping(value="/apply",method=RequestMethod.GET)
	public String apply()
	{
		
		return "applyclass";
	}
	@RequestMapping(value="/apply",method=RequestMethod.POST)
	public String applyClass(subject sub,HttpSession session){
		teacher t=(teacher) session.getAttribute("tea");
		sub.setTeaId(t.getTeaId());
		subService.add(sub); //添加到数据库
		return "redirect:index"; //redirect是重定向的意思
	}
	//进入查看客户报名信息页面！!
	@RequestMapping(value="/enroll")
	public String searChenroll(int teaId,Model m)
	{
		Map<String,Object> map=new HashMap<String,Object>();//条件
		map.put("teaId",teaId);
		List<subject> s= subService.findList(map);//从数据库查找明细信息，用于显示
		m.addAttribute("tes", s);//往model塞东西，就是带数据给jsp，可以通过EL表达式来获取${cmps}
		return "searchEnroll";
	}
	//进入查看客户报名信息页面
		@RequestMapping("/student")
		public String studentInformation(int classId,Model m)
		{
			Map<String,Object> map=new HashMap<String,Object>();//条件
			map.put("classId",classId);
			List<enroll> e= enrService.findList(map);//从数据库查找明细信息，用于显示
			m.addAttribute("tes", e);//往model塞东西，就是带数据给jsp，可以通过EL表达式来获取${cmps}
			return "studentInformation";
		}
		//跳转到我的课表
		@RequestMapping(value="/delete",method=RequestMethod.GET)
		public String delete(int id)
		{
			subService.remove(id);
			return "teacherindex";
		}
		//访问注册文件
		@RequestMapping(value="/reg",method=RequestMethod.GET)
		public String regCus(){ //访问注册页面
			return "tea_reg";
		}
		@RequestMapping(value="/reg",method=RequestMethod.POST)
		public String regCompanyDo(teacher tea){
			service.add(tea); //添加到数据库
			return "redirect:login"; //redirect是重定向的意思
		}
		
		@RequestMapping(value="/total",method=RequestMethod.GET)
		public String regbaobiao(){ //访问注册页面
			return "total";
		}
}

