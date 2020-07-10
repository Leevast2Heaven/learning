<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
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
							<li class="active"><a href="/learning/about"><span>关于我们</span></a></li>
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
								<div class="reg">注册</div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
				</div>
	<div class="main">
		<div class="about-top">
			 <div class="cont1 span_2_of_a about_desc">
				       <h2>关于我们</h2>
		    			   <p><span>About us</span></p>
				           <p>广东东软学院教育咨询有限公司创立于2002年(前身为广东东软学院家教网，2013年变更为广东东软学院金牌名师家教网)广东东软学院金牌名师家教网是中国最早一批创办家教服务网站之一。2013中国十大家长推荐品牌家教网，拥有五万余名各类学校认证教员，是成都市家教服务机构，专业的上门家教中心，拥有强大的师资家教信息平台，更是众多教员，家长心目中的品牌。</p>
					        <div class="image group">
							   <div class="grid images_3_of_1">
								<img src="images/bg55.jpg" alt=""/>
								</div>
									<div class="grid span_2_of_1">
										<h4>经营理念</h4>
											<p>相比传统的家教技能培训服务，单纯以推荐教师上门辅导为服务范围，既单一又落后，无法保证教学质量。我们的服务是以网络为基础，配合市场实际客户需求，凭借现有成熟的网络资源，先进的现代化运作模式和专业的服务队伍，使学员和教员进行双向选择和交流，通过网站，节省双方的时间和精力，且彻底改变传统家教的服务模式，真正做到服务广大学生家长、助推社会教育事业。</p>

							   		</div>
			  				 </div>
				      </div>	
				<div class="lsidebar1 span_1_of_a offers_list">
				      <h3>公司文化</h3>
				     	<div class="testimonials">
		  					 <h3>公司氛围<span><a href="#"></a></span></h3>
		  					 <p><span class="quotes"></span>“快乐工作、快乐生活”的新型企业文化 服务广大学生家长、助推社会教育事业<span class="quotes-down"></span></p>
		  				</div>
		  				<div class="testimonials">
		  					 <h3>我们的优势<span><a href="#"></a></span></h3>
		  					 <p><span class="quotes"></span>学生省时省力  家长省钱省心 老师针对辅导  安全性更高<span class="quotes-down"></span></p>
		  				</div>
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

    	
    	
            