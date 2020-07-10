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
							<li class="active"><a href="/learning/index"><span>首页</span></a></li>
							<li><a href="/learning/teacher/subject?teaId=${tea.teaId}"><span>老师列表</span></a></li>
							<li><a href="/learning/about"><span>关于我们</span></a></li>
							<li><a href="/learning/teacher/reg"><span></span>教师资格申请</span></a>
							</li>
							<li class="last"><a href="/learning/contact"><span>联系我们</span></a></li>
						</ul>
					</div>
					<ul class="follow_icon">
						<li>
							<div class="login"><a id="btn2" class="btn btn-lg btn-success">登录</a></div>
						</li>
						<li>
							<div class="reg" ><a href="/learning/custom/reg" style="color:white">注册</a></div>
						</li>
					</ul>
					<div class="clear"></div>
				</div>
			</div>
			<div class="banner">
				<div id="wrapper">
					<div class="slider-wrapper theme-default">
						<div id="slider" class="nivoSlider">
							<img src="images/banner2.jpg" alt="" />
							<img src="images/banner1.jpg" alt="" />
							<img src="images/banner3.jpg" alt="" />
							<img src="images/banner4.jpg" alt="" />
						</div>
					</div>
				</div>
			</div>
			<div class="main">
				<div class="content-top">
					<div class="col_1_of_4 span_1_of_4">
						<div class="title-img">
							<div class="title"><img src="images/h1.png" alt="" width="47.81" height="47.81"></div>
							<div class="title-desc">
								<p>金牌导师</p>
							</div>
							<div class="clear"></div>
						</div>
						<h4 class=head>Gold Teacher</h4>
						<p>全国六艺专职老师200多人:其中来自北电,中传,中戏,上戏等名校的硕士,专职名师50人,30岁以上的经验丰福的教师达100多人,特聘老师都是来自北京名校特聘教授高达50多人。</p>
						<hr>
						<a href="#" class="btn btn-primary">更多</a>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<div class="title-img">
							<div class="title"><img src="images/h2.png" alt="" width="47.81" height="47.81"></div>
							<div class="title-desc">
								<p>名师课堂 </p>
							</div>
							<div class="clear"></div>
						</div>
						<h4 class=head>Classroom for Famous Teachers</h4>
						<p>邀请大学知名教授走进高中校园，现场解读高校各专业的人才培养模式、主修课程、就业方向等学子关注的热点话题，启蒙高中学生的职业生涯规划，为日后考生择校选专业奠定坚实基础。</p>
						<hr>
						<a href="#" class="btn btn-primary">更多</a>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<div class="title-img">
							<div class="title"><img src="images/h3.png" alt="" width="47.81" height="47.81"></div>
							<div class="title-desc">
								<p>一对一指导</p>
							</div>
							<div class="clear"></div>
						</div>
						<h4 class=head>One-to-one guidance</h4>
						<p>一对一辅导专注中小学在线一对一辅导,汇聚全国名师,专注于学生学习能力的培养以及学生学科知识的辅导,一对一辅导视教学质量为生命,受到许多学生和家长的认可。</p>
						<hr>
						<a href="#" class="btn btn-primary">更多</a>
					</div>
					<div class="col_1_of_4 span_1_of_4">
						<div class="title-img">
							<div class="title"><img src="images/h4.png" alt="" width="47.81" height="47.81"></div>
							<div class="title-desc">
								<p>上门家教</p>
							</div>
							<div class="clear"></div>
						</div>
						<h4 class=head>Door-to-door tutor</h4>
						<p>上门全科辅导品牌,携手教育行业巨头学而思,精选北京各年级、各学科重点中小学教师,提供高品质一对一辅导,让孩子足不出户,快速提高学习成绩,为您提供家教上门一对一等相关信息</p>
						<hr>
						<a href="#" class="btn btn-primary">更多</a>
					</div>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
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
	<!-- <div id="sampledata1" class="bringins-content">

		<div id="phizzForm" class="form" style="padding-left: 20%;padding-top: 18%">
			<form
				style="height: 500px;width:500px;background-color: transparent;border-radius:30px;padding-top: 20%;padding-left: 8%">
				<div id="formPanel" class="formPanel">
					<h2 style="vertical-align: inherit;">您的信息</h2>
					<p>请填写您的信息</p>
					<fieldset>
						<div class="formRow">
							<label for="name"></label>
							<span class="inputAddOn"><i class="icon-user"></i></span>
							<input type="text" value="" placeholder="姓名" name="name" id="name">
							<div class="tooltip" style="background-color: rgb(52, 73, 94); top: -69px;">
								<p></p><i class="icon-caret-down" style="color: rgb(52, 73, 94);"></i>
							</div>
						</div>
						<div class="formRow">
							<label for="email"></label>
							<span class="inputAddOn"><i class="icon-envelope-alt"
									style="color: rgb(255, 255, 255);"></i></span>
							<input type="email" value="" placeholder="您的信息描述" name="email" id="email">
							<div class="tooltip" style="background-color: rgb(52, 73, 94); top: -69px;">
								<p></p><i class="icon-caret-down" style="color: rgb(52, 73, 94);"></i>
							</div>
						</div>
						<div class="formRow">
							<label for="phoneNumber"></label>
							<span class="inputAddOn"><i class="icon-phone"
									style="color: rgb(255, 255, 255);"></i></span>
							<input type="tel" value="" placeholder="您的电话" name="phoneNumber" id="phoneNumber">
							<div class="tooltip" style="background-color: rgb(52, 73, 94); top: -69px;">
								<p></p><i class="icon-caret-down" style="color: rgb(52, 73, 94);"></i>
							</div>
						</div>
						<div class="formRow">
							<label for="phoneNumber"></label>
							<span class="inputAddOn"><i class="icon-phone"
									style="color: rgb(255, 255, 255);"></i></span>
							<input type="tel" value="" placeholder="您的密码" name="phoneNumber" id="phoneNumber">
							<div class="tooltip" style="background-color: rgb(52, 73, 94); top: -69px;">
								<p></p><i class="icon-caret-down" style="color: rgb(52, 73, 94);"></i>
							</div>
						</div>

						<button class="buttonSubmit">提交</button>
					</fieldset>
				</div>

			</form>
		</div>
	</div> -->
	<div id="sampledata3" class="bringins-content">
		<section class="content wrapper">
			<p style="color: white;padding:30px 0px 30px 5px;">已有账号？立即登录</p>
			<div class="linktologin">
				<a href="/learning/custom/login">会员登陆</a></div>
				<p style="color: white;padding:30px 0px 30px 5px;">还没有账号？立即注册</p>
			<div class="linktologin">
				<a href="/learning/custom/reg">会员注册</a></div>
				<div class="adminlogin">
					<a href="/learning/administrator/login" style="color: white;">--→管理员后台登陆</a>
					<br>
					<a href="/learning/teacher/login" style="color: white;">--→教师后台登陆</a></div>
		</section>
	</div>


	<script>
		$(document).ready(function () {
			$('#btn1').click(function () {

				$('#sampledata1').bringins({
					"position": "center",
					"color": "#007ACC",
					"height": "50%",
					"width": "50%",
					"closeButton": "white",
				});

			});
			$('#btn2').click(function () {

				$('#sampledata3').bringins({
					"position": "right",
					"color": "#d2527f",
					"width": "30%",
					"closeButton": "white",
					"z-index": "99999"
				});

			});
		});
	</script>
</body>

</html>