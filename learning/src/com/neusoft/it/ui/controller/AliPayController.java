package com.neusoft.it.ui.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.it.entity.custom;
import com.neusoft.it.entity.enroll;
import com.neusoft.it.service.CustomService;
import com.neusoft.it.service.EnrollService;
import com.neusoft.it.util.AlipayUtil;

@Controller
public class AliPayController {
	@Autowired
	private EnrollService service = null;

	@RequestMapping("/alipay/pay")
	public void pay(int classid,HttpServletResponse resp,HttpSession session) throws IOException
	{
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html");
		
		
	   custom t=(custom) session.getAttribute("cus");
		
		PrintWriter out=resp.getWriter();
		AlipayUtil.pay(
				t.getId()+"_"+classid+"_"+new Date().getTime()//商家自己的订单号:用户id_班id
				, "100"
				,t.getCusName()+ "支付的订单"
				, "预报名费用"
				, out);
		
	}
	@RequestMapping("/alipay/paysuccess")
	public String pay_success(String out_trade_no,String trade_no
			    ,Float total_amount,HttpServletRequest request)
	{
		if(!AlipayUtil.checkFromAlipay(request))
			throw new RuntimeException("非法数据，请求不是来自于支付宝");
		//还要要判断是否已经完成支付过，避免不断重复增加充值
		System.out.println("支付成功:");
		System.out.println("商家的订单号:"+out_trade_no);
		System.out.println("支付宝的订单号:"+trade_no);
		System.out.println("支付金额:"+total_amount);
		//拿数据
		String[] arr=out_trade_no.split("_");
		int cusid=Integer.parseInt(arr[0]);
		int classid=Integer.parseInt(arr[1]);
		//把数据添加到数据库中
		enroll en=new enroll();//创建压缩包
		en.setId(cusid);
		en.setClassId(classid);
		en.setTradeNo(trade_no);
		en.setRegTime(new Date());
		en.setEnrStatu("预报名");
		en.setdPay(total_amount);
		service.add(en);
		return "alipay_success";
	}
	
	
}

