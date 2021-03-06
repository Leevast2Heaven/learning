<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>

<head>
	<title>为了孩子
	</title>
	<link rel="shortcut icon" href="images/fly16.ico" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="css/default.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/nivo-slider.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery-1.9.0.min.js"></script>
	<script src="js/jquery.nivo.slider.js"></script>
	<script type="text/javascript">
		$(window).load(function () {
			$('#slider').nivoSlider();
		});
	</script>

	<!-- jq点击 -->
	<script type="text/javascript" src="js/bringins.js"></script>
	<!-- login -->

</head>

<body>
	<div class="wrap">
		<div class="wrapper-box">
			<div class="header">
				<div class="header-top">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt="" height="80" width="auto" /></a>
					</div>
					<div class="search_box">
						<form>
							<input type="text" value="Search" onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
						</form>
					</div>
					<div class="clear"></div>
				</div>
				<div class="header-bottom">
					<div id="cssmenu">
						<ul>
							<li><a href="/learning/index"><span>首页</span></a></li>
							<li><a href="/learning/teacher/subject?teaId=${tea.teaId}"><span>老师列表</span></a></li>
							<li><a href="/learning/about"><span>关于我们</span></a></li>
							<li><a href="/learning/teacher/reg"><span></span>教师资格申请</span></a>
							</li>
							<li  class="active" class="last"><a href="/learning/contact"><span>联系我们</span></a></li>
						</ul>
					</div>
					<ul class="follow_icon">
						<li>
							<div class="login"><a id="btn2" class="btn btn-lg btn-success">登录</a></div>
						</li>
						<li>
							<div class="reg">注册</div>
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
	<div class="main">
		<div class="section group">
				<div class="col span_2_of_contact">
				  <div class="contact-form">
				  	<h3>与我们联系</h3>
					    <form method="post" action="contact-post.html">
					    	<div>
						    	<span><label>称呼</label></span>
						    	<span><input name="userName" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>E-Mail</label></span>
						    	<span><input name="userEmail" type="text" class="textbox"></span>
						    </div>
						    <div>
						     	<span><label>手机号码</label></span>
						    	<span><input name="userPhone" type="text" class="textbox"></span>
						    </div>
						    <div>
						    	<span><label>与孩子有关科目</label></span>
						    	<span><textarea name="userMsg"> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="提交"></span>
						  </div>
					    </form>
				  </div>
  				</div>
				<div class="col span_1_of_contact">
					<div class="contact_info">
    	 				<h3>在这里找到我们</h3>
					    	  <div class="map">
							   	    <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.google.cn/maps/embed?pb=!1m18!1m12!1m3!1d3668.9205017253275!2d113.02372831535537!3d23.136580917862492!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3402f5607626842d%3A0xa03dca9d3bfe77c9!2z5Lic6L2v5a2m6Zmi!5e0!3m2!1szh-CN!2scn!4v1567361783223!5m2!1szh-CN!2scn"></iframe>
								</div>
      				</div>
      			<div class="company_address">
				     	<h3>地址</h3>
						    	<p>中国，广东省佛山市南海区狮山镇南海大学城</p>
						   		<p>广东东软学院</p>
						   	
				   		<p>电话:(0757) 8668 4502</p>
				   		<p>传真:(0757) 8668 4501</p>
				 	 	<p>Email: <span>lh@leevast.cn</span></p>
				   		<p>关注我: <span><a target="_blank" href="https://www.leevast.com">Leevast</a></span>, <span><a target="_blank" href="https://www.leevast.com">Leevast</a></span></p>
				   </div>
				 </div>
				 <div class="clear"></div> 
			  </div>
		</div>
		<div class="content-bottom">
			<div class="col_1_of_bottom span_1_of_bottom">
				<img src="images/x2.jpg" alt="" />
				<div class="main_link">
					<h5>亚艺公园学习中心</h5>
					<p>电话：400-062-4008</br>地址：佛山市禅城区绿景三路22号帝景卡士大厦首层</p>
				</div>
				<a href="#" class="btn-link1">详情</a>
			</div>
			<div class="col_1_of_bottom span_1_of_bottom">
				<img src="images/x3.jpg" alt="" />
				<div class="main_link">
					<h5>惠景学习中心</h5>
					<p>电话：400-062-4008</br>地址：广东省佛山市禅城区华远东路69号巨和商业中心B区首层</p>
				</div>
				<a href="#" class="btn-link1">详情</a>
			</div>
			<div class="col_1_of_bottom span_1_of_bottom">
				<img src="images/x1.jpg" alt="" />
				<div class="main_link">
					<h5>汾江路学习中心</h5>
					<p>电话：400-062-4008</br>地址：广东省佛山市禅城区汾江中路48号华麟大厦2楼</p>
				</div>
				<a href="#" class="btn-link1">详情</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="footer">
		<div class="footer-top">
			<div class="col_1_of_4 span_1_of_4">
				<h3>热门标签</h3>
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">网站地图</a></li>
					<li><a href="#">联系我们</a></li>
					<li><a href="#">1对1辅导</a></li>
					<li><a href="#">自主招生</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h3>友情链接</h3>
				<ul>
					<li><a href="https://www.leevast.com">沧澜小栈</a></li>
					<li><a href="http://www.ygjj.com/">家教网</a></li>
					<li><a href="http://foshan.xueda.com/">学大教育</a></li>
					<li><a href="http://www.jiajiao400.com/">常青藤家教网</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4">
				<h3>您的账户</h3>
				<ul>
					<li><a href="#">我的账户</a></li>
					<li><a href="#">个人信息</a></li>
					<li><a href="#">位置</a></li>
				</ul>
			</div>
			<div class="col_1_of_4 span_1_of_4 footer-lastgrid">
				<h3>联系我们</h3>
				<ul class="list3">
					<li>
						<img src="images/home.png" alt="" />
						<div class="extra-wrap">
							<p>家教网<br>联系我们</p>
						</div>
					</li>
					<li>
						<img src="images/phone.png" alt="" />
						<div class="extra-wrap">
							<p><span>电话:</span>400-062-4008</p>
							<p><span>传真:</span>400-062-4008</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="copy">
			<p>Copyright &copy; 2019. by <a target="_blank" href="https://www.leevast.com">Leevast</a> All rights
				reserved.</p>
		</div>
	</div>
</div>
</div>

</body>
</html>

    	
    	
            