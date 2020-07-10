<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台管理首页</title>
<script src="WebContent/js/jquery-1.12.4.js"></script>
<script>
    function change(p)
    {
    	document.getElementById("page").value=p;
    	document.getElementById("ff").submit();
    }
</script>
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

			<li class="active"><a href="customindex.html" >
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
						<img src="/learning/custom_/assets/images/cat.png" class="img-circle" alt="parson-img">
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



<div class="main">
<form id="ff" action="" method="get">
               <input type="hidden" id="page" name="page" value="1"/>
			 </form>

	<div class="main-content">
		<div class="container-fluid">

			<div class="main-content-head">
				<h2>欢迎</h2>
				
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="box">
						<div class="box-head">
							<h2>学生信息列表</h2>
						</div>
						<div class="item">
							<div class="item-responsive ">
								<table class="table">
									<thead>
										 <tbody>
	   <tr>
             
              <th>编号</th>
              <th>名称</th>
			  <th>电话</th>
              <th>信息</th>
              <th>操作</th>
       </tr>
        
         <!-- EL表达式+JSTL==>代替java小脚本 -->
        <c:forEach var="m" items="${info.list}">
        <tr>
             <td> ${m.teaId}</td>
             <td> ${m.teaName}</td>
             <td> ${m.teaTel}</td>
             <td> ${m.teaInformation}</td>
             <td><a href="/learning/custom/enter?teaid=${m.teaId}" class="item-status delivered">去了解</a></td>
       </tr>
       </c:forEach>
       <tr>
            <td colspan="6">
             <a href="javascript:change(${info.prePage})">上一页</a>
			   <c:forEach var="p" begin="1" end="${info.pages}">
			      <a href="javascript:change(${p})">${p}</a>
			   </c:forEach>
			 <a href="javascript:change(${info.nextPage})">下一页</a> 
			 
			   [第${info.pageNum}页/共${info.pages}页  共${info.total}条记录]
			   
			</td> 
       </tr>
									</thead>
									
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