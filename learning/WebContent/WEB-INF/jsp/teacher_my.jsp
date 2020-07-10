
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
<link rel="shortcat icon" href="../images/fly16.ico" type="image/x-icon">
<link rel="stylesheet" href="/learning/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<link rel="stylesheet" href="/learning/assets/chartist/css/chartist.min.css">
<link rel="stylesheet" href="/learning/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/learning/assets/css/style.css">
<link rel="stylesheet" href="/learning/assets/css/responsive.css">
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
						<img src="assets/images/cat.png" class="img-circle" alt="parson-img">
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



<div class="main">


	<div class="main-content">
		<div class="container-fluid">

<!-- 老师简介 -->
	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
<<<<<<< HEAD
				<h2>欢迎${t.teaName}老师</h2>
=======
				<h1>${t.teaName}老师</h1>
>>>>>>> branch 'master' of https://gitee.com/leevast/learning
				<!-- <p>主面板</p> -->
			</div>
			<div class="container">
				<h3 class="text-center">About Me</h3>
				
				<div class="col-md-5 about_left">
									<ul class="address">
										<li>
											<ul class="agileits-address-text ">
												<li><b>Name</b></li>
											  <li>${t.teaName}</li> 
											</ul>
										</li>
										<li>
											<ul class="agileits-address-text ">
												<li><b>D.O.B</b></li>
												<li>21-04-1990</li>
											</ul>
										</li> 
										<li>
											<ul class="agileits-address-text">
												<li><b>PHONE:</b></li>
												<li>${t.teaTel}</li>
											</ul>
										</li>
										<li>
											<ul class="agileits-address-text">
												<li><b>JOB</b></li>
												<li>Designer &amp; Developer</li>
											</ul>
										</li> 
										 <li>
											<ul class="agileits-address-text">
												<li><b>EXPERIENCE</b></li>
												<li>+4 Years</li>
											</ul>
										</li> 
										<li>
											<ul class="agileits-address-text">
												<li><b>ADDRESS </b></li>
												<li>Eunos Road 8, Mand Towers, Singapore.</li>
											</ul>
										</li>
										<li>
											<ul class="agileits-address-text">
												<li><b>E-MAIL </b></li>
												<li><a href="mailto:example@mail.com"> info@example.com</a></li>
											</ul>
										</li>
										<li>
											<ul class="agileits-address-text">
												<li><b>WEBSITE </b></li>
												<li><a href="#">www.mywebsite.com</a></li>
											</ul>
										</li>
									</ul>

				</div>
				<div class="col-md-7 about_right">
					 <h3>Hello!!&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${t.teaName}</h3>
					<%-- <h4>${tea.teaTel}</h4> --%>
					<h2>简介：</h2>
					<br/>
					<h4>${t.teaInformation} </h4> 
					
					<ul>
					</ul>
				</div>
				<div class="clearfix"></div>
				
			</div>


		</div>
		
	</div>

</div>				
				

<!-- END老师简介 -->
			
			<div class="row">
				<div class="col-sm-12">
					<div class="box">
						<div class="box-head">
							<h2>该老师开设得的课程</h2>
						</div>
						<div class="item">
							<div class="item-responsive ">
								<table class="table">
									<thead>
										<tr>
											<th>ID</th>
											<th>班名</th>											
											<th>科目</th>
											<th>学费</th>
											<th>起始日期</th>
                                            <th>结束日期</th>
                                            <th>总课时</th>
                                            <th>状态</th>
                                            <th>审批时间</th>
                                            <th>操作</th>
										</tr>
									</thead>
									<m:forEach var="t" items="${list}">
									<tbody>
										<tr>
											
											<td>${t.classId}</td>
											<td>${t.className}</td>
											<td>${t.subjects}</td>
                                            <td>${t.tuition}</td>
                                            <td>${t.startDate}</td>
                                            <td>${t.endDate}</td>
                                            <td>${t.totalHours}</td>
                                            <td>${t.classStatu}</td>
                                            <td>${t.apprTime}</td>
											<td>
												<span class="item-status delivered">在读</span>
                                            </td>
                                            <td>删除</td>
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