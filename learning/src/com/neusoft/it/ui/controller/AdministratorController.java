package com.neusoft.it.ui.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neusoft.it.entity.administrator;
import com.neusoft.it.entity.subject;
import com.neusoft.it.service.AdministratorService;
import com.neusoft.it.service.SubjectService;



@Controller  //注解
@RequestMapping("/administrator")
public class AdministratorController {
	private AdministratorService service = null;
	@Autowired
	private SubjectService subService=null;
	@Autowired
	/*@Qualifier("administratorService")*/
	public void setService(AdministratorService service) {
		this.service = service;
	}
	
public void setSubService(SubjectService subService) {
		this.subService = subService;
	}

	/*	@RequestMapping("/list") 
	public String serchAll(){
		return "index";//转发到index页面
	}*/
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login()
	{
		return "adm_login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String logindo(Integer id,String upwd,HttpSession session,Model mm)
	{
		administrator a=service.login(id,upwd);
		if(a!=null){
			//放session，登陆信息可以持久保持下来
			session.setAttribute("adm", a);
			return "redirect:subject";
		}
		mm.addAttribute("err","用户名或密码不符");//带点消息给界面
		System.out.print("失败");
		return "adm_login";//登陆不成功就转发回页面，重新登陆
		
	}
	//显示subject课程表
	@RequestMapping("/subject") 
	public String serchAll(Model m){
		List<subject> li = subService.findAll();//从业务层获取数据（通过数据库）
		m.addAttribute("list", li);//往model塞东西，就是带数据给jsp，可以通过EL表达式来获取${cmps}
		return "subject";  //转发给subject页面
	}
	//审核
	@RequestMapping("/update")
			public String update(int classId)
			{
			    subject sub=subService.findById(classId);
			    sub.setClassStatu("通过审核");
			    subService.edit(sub);
			    return "redirect:subject";
			   
			}

			@RequestMapping("/denny")
			public String denny(int classId)
			{
			    subject sub=subService.findById(classId);
			    sub.setClassStatu("被拒绝");
			    subService.edit(sub);
			    return "redirect:subject";
			}
}

