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
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neusoft.it.entity.custom;
import com.neusoft.it.entity.subject;
import com.neusoft.it.entity.teacher;
import com.neusoft.it.service.CustomService;
import com.neusoft.it.service.SubjectService;
import com.neusoft.it.service.TeacherService;





@Controller //注解
@RequestMapping("/custom")
public class CustomController {
	private CustomService service = null;

	@Autowired
	@Qualifier("customService")
	public void setService(CustomService service) {
		this.service = service;
	}
	@Autowired
	@Qualifier("teacherService")
	private TeacherService tservice=null;
	
	@Autowired
	private SubjectService subService=null;
	

/*	
	@RequestMapping("/index")
	public String logout(HttpSession session)//session request response
	{
		session.invalidate();//清空session里所有的东西
		return "redirect:login";//注销后跳回登陆页	
		return "index";
}*/
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login()
	{
		return "cus_login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String logindo(String uname,String upwd,HttpSession session,Model mm)
	{
		custom t=service.login(uname,upwd);
		if(t!=null){
			//放session，登陆信息可以持久保持下来
			session.setAttribute("cus", t);
			return "redirect:list";
		}
		mm.addAttribute("err","用户名或密码不符");//带点消息给界面
		return "cus_login";//登陆不成功就转发回页面，重新登陆
		
	}
	@RequestMapping("/list")
	public String serchAll(@RequestParam(value="page",defaultValue="1")Integer page
			,String findname,Model m,HttpSession session){
	
		PageHelper.startPage(page,2, "tea_name");//开启分页
		
		Map<String,Object> map=new HashMap<String,Object>();
		if(findname!=null&&!findname.isEmpty())
		   map.put("teaName", "%"+findname+"%");
		List<teacher> list = tservice.findList(map);//从业务层获取数据（通过数据库）
		
        PageInfo<teacher> pageInfo=new PageInfo<teacher>(list);
        PageHelper.clearPage();//分页完毕，手工清理一下分页缓存，不要影响下一次的分页查询
		m.addAttribute("info", pageInfo);//往model塞东西，就是带数据给jsp，可以通过EL表达式来获取${cmps}
		
		return "customindex";//转发给tea_list页面
	}
	
	//查看要了解的老师所开设的课程
	@RequestMapping(value="/enter",method=RequestMethod.GET)
	public String enterteacher(int teaid,Model x,HttpSession ss){
		
		teacher tea = tservice.findById(teaid);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("teaId", teaid);
		List<subject> subList= subService.findList(map);//从数据库查找明细信息，用于显示
		x.addAttribute("list",subList);//将原始数据送到页面去显示
		x.addAttribute("t",tea);
		return "detail"; 
	}
	//查看报名信息
	@RequestMapping(value="/enlist",method=RequestMethod.GET)
	public String enlistsubject(int classid,Model x,HttpSession ss){
		
		subject sub = subService.findById(classid);
		x.addAttribute("sub",sub);
//		Map<String,Object> map=new HashMap<String,Object>();
//		map.put("classId", classid);
//		List<subject> subList= subService.findList(map);//从数据库查找明细信息，用于显示
//		x.addAttribute("sub",subList);//将原始数据送到页面去显示
		return "enroll_"; 
	}

	//访问注册文件
	@RequestMapping(value="/reg",method=RequestMethod.GET)
	public String regCus(){ //访问注册页面
		return "cus_reg";
	}
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String regCompanyDo(custom cus){
		service.add(cus); //添加到数据库
		return "redirect:login"; //redirect是重定向的意思
	}	

}

