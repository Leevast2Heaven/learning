<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台管理首页</title>
<link rel="shortcat icon" href="../images/fly16.ico" type="image/x-icon">
<link rel="stylesheet" href="/learning/background/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<link rel="stylesheet" href="/learning/background/assets/chartist/css/chartist.min.css">
<link rel="stylesheet" href="/learning/background/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/learning/background/assets/css/style.css">
<link rel="stylesheet" href="/learning/background/assets/css/responsive.css">
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
						<img src="/learning/background/assets/images/cat.png" class="img-circle" alt="parson-img">
						<i class="icon-submenu fa fa-angle-down"></i>
					</a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="lnr lnr-user"></i> <span>我的信息</span></a></li>
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
					<a href="background.html" >
						<i data-feather="home"></i> <span>学生信息</span>
					</a>
				</li>

				<li>
					<a href="teacherinfo.html">
						<i data-feather="package"></i> <span>教师信息</span>
					</a>
				</li>

				<li>
					<a href="attend.html">
						<i data-feather="file-text"></i> <span>考勤记录</span>
					</a>
				</li>

				<li>
					<a href="complaint.html">
						<i data-feather="grid"></i> <span>投诉记录</span>
					</a>
				</li>

				<li>
					<a href="enroll.html">
						<i data-feather="map"></i> <span>学生报名信息</span>
					</a>
				</li>

				<li>
					<a href="evaluates.html">
						<i data-feather="bar-chart"></i> <span>评价记录</span>
					</a>
				</li>

				<li>
					<a href="leave.html">
						<i data-feather="calendar"></i> <span>请假记录</span>
					</a>
				</li>

				<li class="active">
					<a href="subject.html">
						<i data-feather="layout"></i> <span>科目详情</span>
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
							<h2>科目列表</h2>
						</div>
						<div class="item">
							<div class="item-responsive ">
								<table class="table">
									<thead>
										<tr>
											<th>ID</th>
											<th>班级名字</th>											
											<th>科目名字</th>
											<th>学费</th>
                                            <th>科目指导老师</th>
                                            <th>开始时间</th>
											<th>结束时间</th>
											<th>审核状态</th>
											<th>操作</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
										 <c:forEach var="m" items="${list}">
									
										<tr>
											
											<td>${m.classId}</td>
											<td>${m.className}</td>
											<td>${m.subjects}</td>
                                            <td>${m.tuition}</td>
                                            <td>${m.startDate}</td>
                                            <td>${m.endDate}</td>
                                            <td>${m.totalHours}</td>
                                            <td>${m.classStatu}</td>
                                            <td>${m.apprTime}</td>
                                            <td><a href="update?classId=${m.classId}">审核</a>
                                            <a href="denny?classId=${m.classId}">拒绝</a>
                                            </td>
										</tr>
									</c:forEach>
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