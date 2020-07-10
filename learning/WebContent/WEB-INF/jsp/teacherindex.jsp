【<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台管理首页</title>
<link rel="shortcat icon" href="../images/fly16.ico" type="image/x-icon">
<link rel="stylesheet" href="/learning/teacher_res/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<link rel="stylesheet" href="/learning/teacher_res/assets/chartist/css/chartist.min.css">
<link rel="stylesheet" href="/learning/teacher_res/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/learning/teacher_res/assets/css/style.css">
<link rel="stylesheet" href="/learning/teacher_res/assets/css/responsive.css">
</head>

<body>
<div id="wrapper">
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="brand">
		<a href="index.html">
			Lee<span>Vast</span>
		</a>
	</div>
	<div class="container-fluid">
		<div class="navbar-btn">
			<button type="button" class="btn-toggle-fullwidth">
				<i class="lnr lnr-arrow-left-circle"></i>
			</button>
		</div>
		<form class="navbar-form navbar-left">
			<div class="search-group">
				<button type="button"><i data-feather="search"></i></button>
				<input type="text" value="" placeholder="Search..">
			</div>
		</form>
		<div class="navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="/learning/teacher_res/assets/images/cat.png" class="img-circle" alt="parson-img">
						<i class="icon-submenu fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="infoedit.html"><i class="lnr lnr-user"></i> <span>我的信息</span></a></li>
						<li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
						<li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
						<li><a href="#"><i class="lnr lnr-exit"></i> <span>登出</span></a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	
</nav>

<div id="sidebar-nav" class="sidebar">
	<div class="sidebar-scroll">
		<nav>
			<ul class="nav">

				<li class="active">
					<a href="index">
						<i data-feather="home"></i> <span>我的</span>
					</a>
				</li>

				<li>
					<a href="subject?teaId=${tea.teaId}">
						<i data-feather="package"></i> <span>我开的班级</span>
					</a>
				</li>

				<li>
					<a href="enroll?teaId=${tea.teaId}">
						<i data-feather="file-text"></i> <span>查看报名情况</span>
					</a>
				</li>

				<li>
					<a href="attend.html">
						<i data-feather="grid"></i> <span>考勤</span>
					</a>
				</li>

				<li>
					<a href="#">
						<i data-feather="map"></i> <span>班级讨论区</span>
					</a>
				</li>

				<li>
					<a href="/learning/teacher/total">
						<i data-feather="bar-chart"></i> <span>报表</span>
					</a>
				</li>

				<li>
					<a href="apply?teaId=${tea.teaId}">
						<i data-feather="calendar"></i> <span>添加开班申请</span>
					</a>
				</li>


		</nav>
	</div>

</div>

<div class="main">


	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
				<h2>欢迎${tea.teaId}老师</h2>
				<p>主面板</p>
			</div>
			<div class="container">
				<h3 class="text-center">About Me</h3>
				
				<div class="col-md-5 about_left">
									

				</div>
				<div class="col-md-7 about_right">
					<ul class="address">
						<li>
							<ul class="agileits-address-text ">
								<li><b>Name:</b></li>
								<li>${tea.teaName}</li>
							</ul>
						</li>
						<li>
							<ul class="agileits-address-text ">
								<li><b>D.O.B:</b></li>
								<li>21-04-1990</li>
							</ul>
						</li>
						<li>
							<ul class="agileits-address-text">
								<li><b>PHONE:</b></li>
								<li>${tea.teaTel}</li>
							</ul>
						</li>
						<li>
							<ul class="agileits-address-text">
								<li><b>JOB:</b></li>
								<li>Designer &amp; Developer</li>
							</ul>
						</li>
						
						<li>
							<ul class="agileits-address-text">
								<li><b>	ACCOUNT: </b></li>
								<li>${tea.teaInformation}</li>
							</ul>
						</li>
						
					</ul>
				</div>
				<div class="clearfix"></div>
				
			</div>


		</div>
		
	</div>

</div>

<div class="clearfix"></div>

<footer>
	<div class="container-fluid">
		<p>Copyright &copy; 2019. by <a target="_blank" href="https://www.leevast.com">Leevast</a> All rights
			reserved.</p>
	</div>

</footer>

</div>




<script src="assets/js/jquery.min.js"></script>
<script src="assets/chartist/js/chartist.min.js"></script>
<script src="assets/chartist/js/chartist-tooltip-plugin.js"></script>
<script src="assets/chartist/js/chartist-custom.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>
<script src="assets/js/feather.min.js"></script>
<script src="assets/js/d3.min.js"></script>
<script src="assets/js/topojson.js"></script>
<script src="assets/js/datamaps.world.min.js"></script>
<script src="assets/js/fontawesome-all.min.js"></script>
<script src="assets/js/custom.js"></script>

</body>
</html>