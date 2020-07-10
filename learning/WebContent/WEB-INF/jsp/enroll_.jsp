
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
				
							<li><a href="customindex.html" >
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
										<img src="assets/images/cat.png" class="img-circle" alt="parson-img">
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
                <h2>欢迎${sessionScope.cus.cusName}会员</h2>
                <div class="applyforclass">


                    <div class="agile_info" style="height: 900px">
                    
                        <div class="w3_info">
                            <h2>报名表</h2>
                            <p>确认您的报名信息</p>
                            <form action="/learning/alipay/pay" method="post">
                               <input name="classid" type='hidden' value="${sub.classId}"/> 
                                <div class="inputg">
                                    <span>姓名&nbsp;&nbsp;</span>
                                    <input type="text" value="${sessionScope.cus.cusName}">
                                </div>
                                <div class="inputg">
                                    <span>班名&nbsp;&nbsp;</span>
                                    <input type="text" value="${sub.className}">
                                </div>
                                <div class="inputg">
                                    <span>科目&nbsp;&nbsp;</span>
                                    <input type="text" value="${sub.subjects}">
                                </div>
                                <div class="inputg">
                                    <span>学费&nbsp;&nbsp;</span>
                                    <input type="text" value="${sub.tuition}">
                                </div>
                                <div class="inputg">
                                    <span>起始日期</span>
                                    <input type="text" value="${sub.startDate}">
                                </div>
                                <div class="inputg">
                                    <span>结束日期</span>
                                    <input type="text" value="${sub.endDate}">
                                </div>
                                <div class="inputg">
                                    <span>总课时&nbsp;</span>
                                    <input type="text" value="${sub.totalHours}">
                                </div>                           
                                <button class="btndanger" type="submit">缴费（支付定金100元）</button>
                                <br>
                                
                            </form>
                        </div>
                        <div class="clear"></div>
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