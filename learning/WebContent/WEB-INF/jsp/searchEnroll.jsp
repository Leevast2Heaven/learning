<%@ page language="java" import="java.util.*" contentType="text/html;charest=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="m"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台管理首页</title>
<link rel="shortcat icon" href="/learning/images/fly16.ico" type="image/x-icon">
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
						<li><a href="/learning/index"><i class="lnr lnr-exit"></i> <span>登出</span></a></li>
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

				<li class="active">
					<a href="">
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
					<a href="#">
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


	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
				<h2>欢迎</h2>
				<p>主面板</p>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="box">
						<div class="box-head">
							<h2>报名班级列表</h2>
						</div>
						<div class="item">
							<div class="item-responsive ">
								<table class="table">
									<thead>
										<tr>
											<th>ID</th>
											<th>班名</th>											
											<th>科目</th>
											
                                            <th>操作</th>
										</tr>
									</thead>
									<tbody>
										<m:forEach var="t" items="${tes}">
									
										<tr>
											<td>${t.classId}</td>
											<td>${t.className}</td>
											<td>${t.subjects}</td>
                                            <td><a href="student?classId=${t.classId}">查看报名学生信息</a></td>
										</tr>
									</m:forEach>
										
									</tbody>
								</table>
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