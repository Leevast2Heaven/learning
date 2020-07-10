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

				<li>
					<a href="index" >
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

				<li class="active">
					<a href="/learning/teacher/total">
						<i data-feather="bar-chart"></i> <span>报表</span>
					</a>
				</li>

				<li>
					<a href="apply">
						<i data-feather="calendar"></i> <span>添加开班申请</span>
					</a>
				</li>


		</nav>
	</div>

</div>
<div class="main">

	<!-- MAIN CONTENT -->
	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
				<h2>你好</h2>
				<p>${tea.teaId}老师</p>
			</div>

			<div class="profile-content">
				<div class="row">
					<div class="col-sm-3">
						<div class="profile-state">
							<div class="icon-box">
								<span class="icon-bg icon-bg-1">
									<img src="/learning/teacher_res/assets/images/user-icon.png" alt="user-icon">
								</span>
								<h2>您的课程</h2>
							</div>
							<h3>4</h3>
							<p>1 新增</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="profile-state">
							<div class="icon-box">
								<span class="icon-bg icon-bg-2">
									<img src="/learning/teacher_res/assets/images/add-cart.png" alt="add-cart">
								</span>
								<h2>您的学生</h2>
							</div>
							<h3>32</h3>
							<p>10 新增</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="profile-state">
							<div class="icon-box">
								<span class="icon-bg icon-bg-3">
									<img src="/learning/teacher_res/assets/images/money-icon.png" alt="money-icon">
								</span>
								<h2>总共收入</h2>
							</div>
							<h3>¥43,900</h3>
							<p>¥340 这周</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="profile-state">
							<div class="icon-box">
								<span class="icon-bg icon-bg-4">
									<img src="/learning/teacher_res/assets/images/plane-icon.png" alt="deliver-icon">
								</span>
								<h2>关注您的人</h2>
							</div>
							<h3>134</h3>
							<p>35 这周新增</p>
						</div>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-md-10 col-sm-10">
					<div class="box">
						<div class="box-head">
							<h2>收入</h2>
							<div class="statistics-data">
								<div class="stat-income">
									<p><span class="income-dot"></span>去年收入</p>
									<p><span class="income-dot outcome-dot"></span>今年收入</p>
								</div>
							</div!>
						</div>
						<div class="item">
							<div id="statistics_data" class="ct-chart"></div>
						</div>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-sm-8">
					<div class="box">
						<div class="box-head">
							<h2>最多人报名学科</h2>
						</div>
						<div class="item">
							<div class="item-responsive ">
								<table class="table">
									<thead>
										<tr>
											<th>科目排名</th>
											<th>科目名称</th>
											<th>老师</th>
											<th>价格</th>
											<th>教学质量</th>
											<th>状态</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#">1</a></td>
											<td>高中数学</td>
											<td>Lawson</td>
											<td>1000</td>
											<td>99分</td>
											<td>
												<span class="item-status delivered">上课</span>
											</td>
										</tr>
										<tr>
											<td><a href="#">2</a></td>
											<td>高中物理</td>
											<td>Samsu</td>
											<td>1250</td>
											<td>98.7分</td>
											<td><span class="item-status cancel">停课</span></td>
										</tr>
										<tr>
											<td><a href="#">3</a></td>
											<td>初中数学</td>
											<td>Masau
                                            </td>
											<td>1150</td>
											<td>98.6分</td>
											<td><span class="item-status delivered">上课</span></td>
										</tr>
										<tr>
											<td><a href="#">4</a></td>
											<td>高中化学</td>
											<td>Lawson</td>
											<td>1000</td>
											<td>98.3分</td>
											<td><span class="item-status cancel">停课</span></td>
										</tr>
										<tr>
											<td><a href="#">5</a></td>
											<td>初中物理</td>
											<td>Ella</td>
											<td>1300</td>
											<td>98.1分</td>
											<td><span class="item-status delivered">上课</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="box">
						<div class="box-head">
							<h2>科目占比</h2>
						</div>
						<div class="item">
							<div id="product_status" class="ct-chart"></div>
							<div class="statistics-data">
								<div class="stat-income pl0">
									<p><span class="income-dot ps-dot2"></span>数学</p>
									<p class="ml10"><span class="income-dot ps-dot3"></span>物理</p>
									<p class="ml10"><span class="income-dot ps-dot4"></span>化学</p>
									<p><span class="income-dot ps-dot1"></span>其他</p>
								</div>
							</div>
						</div>
					</div>
				</div>

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




<script src="/learning/teacher_res/assets/js/jquery.min.js"></script>
<script src="/learning/teacher_res/assets/chartist/js/chartist.min.js"></script>
<script src="/learning/teacher_res/assets/chartist/js/chartist-tooltip-plugin.js"></script>
<script src="/learning/teacher_res/assets/chartist/js/chartist-custom.js"></script>
<script src="/learning/teacher_res/assets/js/bootstrap.min.js"></script>
<script src="/learning/teacher_res/assets/js/jquery.slimscroll.min.js"></script>
<script src="/learning/teacher_res/assets/js/feather.min.js"></script>
<script src="/learning/teacher_res/assets/js/d3.min.js"></script>
<script src="/learning/teacher_res/assets/js/topojson.js"></script>
<script src="/learning/teacher_res/assets/js/datamaps.world.min.js"></script>
<script src="/learning/teacher_res/assets/js/fontawesome-all.min.js"></script>
<script src="/learning/teacher_res/assets/js/custom.js"></script>

</body>
</html>