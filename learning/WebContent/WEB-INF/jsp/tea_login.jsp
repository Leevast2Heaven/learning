<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>登录</title>
	<meta charset="utf-8">
	<meta name="author" content="">
	<meta name="description" content="" />

	<link rel="stylesheet" type="text/css" href="/learning/css/reset.css">
	<link rel="stylesheet" type="text/css" href="/learning/css/main.css">
	<script type="text/javascript" src="/learning/js/jquery.js"></script>
	<script type="text/javascript" src="/learning/js/TimeCircles.js"></script>
	<script type="text/javascript" src="/learning/js/backstretch.js"></script>
	<script type="text/javascript" src="/learning/js/main.js"></script>

	
</head>

<body>
		
	<!-- <div class="container">
		<div class="row mt50 pt50">
			<div class="col-md-4"><a id="btn3" class="btn btn-lg btn-success">Demo 3</a></div>
		</div>
	</div> -->
	<section class="content wrapper">

		<h1>欢迎登录家教系统</h1>
		<p class="description">老师登录</p>

		<div class="subscription_form clearfix">
			<div>
				<form action="login" method="post">
					<tr>
						<input type="name" name="uname" id="name" placeholder="enter your accounts">
						<!-- <button type="submit">
						<i class="icon"></i></button> -->
					</tr>
					<tr></tr><input type="password"name="upwd" id="password" placeholder="enter your password"><button
						type="submit"><i class="icon"></i></button></tr>
				</form>
			</div>
		</div>

		<div class="counter clear" data-date="2019-08-28 00:00:00"></div>

	</section>

</body>

</html>