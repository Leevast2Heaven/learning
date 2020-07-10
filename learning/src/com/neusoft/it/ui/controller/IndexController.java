package com.neusoft.it.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller //注解
public class IndexController {
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}
	@RequestMapping("/about")
	public String about()
	{
		return "about";
	}
	@RequestMapping("/contact")
	public String contact()
	{
		return "contact";
	}
}
