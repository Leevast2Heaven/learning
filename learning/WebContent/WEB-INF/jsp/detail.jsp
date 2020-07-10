
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
<link rel="stylesheet" href="/learning/custom_/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
<link rel="stylesheet" href="/learning/custom_/assets/chartist/css/chartist.min.css">
<link rel="stylesheet" href="/learning/custom_/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/learning/custom_/assets/css/style.css">
<link rel="stylesheet" href="/learning/custom_/assets/css/responsive.css">
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
		<div class="sidebartop">
		<ul>  

			<li class="active"><a href="customindex.jsp" >
					<i data-feather="home"></i> <span>会员首页</span>
				</a></li>  
			
			<li><a href="complaint.html">
					<i data-feather="package"></i> <span>反馈信息</span>
				</a></li>  
			
			<li><a href="subject.html">
					<i data-feather="file-text"></i> <span>科目信息</span>
				</a></li>  
			 
		</ul>
	    </div>
		<div class="navbar-menu">
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<img src="/learning/custom/assets/images/cat.png" class="img-circle" alt="parson-img">
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



<div class="main">


	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
				<h1>${t.teaName}老师</h1>
				
            </div>
            <div class="container">
			
				
				<div class="col-md-5 about_left">
									

				</div>
				<div class="col-md-7 about_right">
					<ul class="address">
						<li>
							<ul class="agileits-address-text ">
								<li><b>Name</b></li>
								<li>${t.teaName}</li>
							</ul>
						</li>
						<li>
							<ul class="agileits-address-text">
								<li><b>PHONE</b></li>
								<li>${t.teaTel}</li>
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
								<li><b>INFORMATION </b></li>
								<li>${t.teaInformation}</li>
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
				<div class="clearfix"></div>
				
			</div>
			<div class="row">
				<div class="col-sm-12">
                    <div class="detailbox">
					<div class="box">
						<div class="box-head">
							<h2>该老师所开设的课程</h2>
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
												<a href="/learning/custom/enlist?classid=${t.classId}" class="item-status delivered">报名</a>
                                            </td>
                                            
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




<script src="/learning/custom_/assets/js/jquery.min.js"></script>
<script src="/learning/custom_/assets/chartist/js/chartist.min.js"></script>
<script src="/learning/custom_/assets/chartist/js/chartist-tooltip-plugin.js"></script>
<script src="/learning/custom_/assets/chartist/js/chartist-custom.js"></script>
<script src="/learning/custom_/assets/js/bootstrap.min.js"></script>
<script src="/learning/custom_/assets/js/jquery.slimscroll.min.js"></script>
<script src="/learning/custom_/assets/js/feather.min.js"></script>
<script src="/learning/custom_/assets/js/d3.min.js"></script>
<script src="/learning/custom_/assets/js/topojson.js"></script>
<script src="/learning/custom_/assets/js/datamaps.world.min.js"></script>
<script src="/learning/custom_/assets/js/fontawesome-all.min.js"></script>
<script src="/learning/custom_/assets/js/custom.js"></script>

</body>
</html>